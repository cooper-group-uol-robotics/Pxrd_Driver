#!/usr/bin/python3
from typing import Tuple, Dict
from pywinauto import Application
import os
import time
from datetime import datetime

class PxrdDriver:
    def __init__(self) -> None:
        self.app = Application().connect(process=12240)
        self.current_batch_files = []
        self.path = r'C:\AutoXRD_Data'
        self.execution_done = False
    
    def execute(self, file_name):
        #launch
        self._file_name = file_name
        _window = self.app[f'XPertOperatorInterfaceCXOIGeneralDatajobs{self._file_name}']
        _window.control 
        _window.MenuSelect("File -> Open")
        self.app.Openjob.Edit.set_edit_text(self._file_name)
        self.app.Openjob.Open.click_input()
        time.sleep(3)
        #time_stamp
        self.current_dateTime = datetime.now()
        print(self.current_dateTime)
        _window.MenuSelect("Job -> Execute -> Current")
        #execute
        while len(self.current_batch_files) < 8:
            for file in os.listdir(self.path):
                self.file_name = self.path+'\\'+file
                self.creation_time = os.path.getctime(self.file_name)
                dt_c = datetime.fromtimestamp(self.creation_time)
                if dt_c > self.current_dateTime and file not in self.current_batch_files:
                    self.current_batch_files.append(file)
                    print(self.current_batch_files)

        print('Finished batch')
        self.current_batch_files.clear()
        self.execution_done = True
        return self.execution_done