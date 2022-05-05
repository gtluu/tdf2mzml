from setuptools import setup

setup(
    name='tdf2mzml',
    version='0.3.20200211.1',
    packages=['tdf2mzml'],
    data_files=[('tdf2mzml', ['timsdata.dll', 'libtimsdata.so', 'timsdata.lib'])],
    url='https://github.com/mafreitas/tdf2mzml',
)
