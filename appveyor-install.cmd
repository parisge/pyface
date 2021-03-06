"%sdkverpath%" -q -version:"%sdkver%"
call setenv /x64

rem install python packages
pip install --cache-dir c:/temp nose
pip install --cache-dir c:/temp coverage
pip install --cache-dir c:/temp mock
pip install --cache-dir c:/temp pyside==1.2.2
pip install --cache-dir c:/temp numpy
pip install --cache-dir c:/temp pygments
pip install --cache-dir c:/temp git+http://github.com/enthought/traits.git#egg=traits
pip install --cache-dir c:/temp git+http://github.com/enthought/traitsui.git@feature/python3#egg=traitsui
if %PYTHON% EQU "C:/Python34-x64" (
   pip install --cache-dir c:/temp traits_enaml
   pip install --cache-dir c:/temp enaml )

rem install pyface
python setup.py develop
