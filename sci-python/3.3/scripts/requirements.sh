#!/bin/bash
#
# Copyright (c) 2014 Science Automation, Inc. http://www.scivm.com.  All rights reserved.
# 
# email: contact@scivm.com
# support:  http://support.scivm.com
#
# The MIT License (MIT)
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.  The motd file shall remain
# included to the Dockerfile and unmodified.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
export LD_LIBRARY_PATH=/usr/local/lib/intel

virtualenv /opt/pyenv/
source /opt/pyenv/bin/activate

# # build numpy from source to use mkl blas and lapack
cd /tmp
gunzip numpy-1.8.1.tar.gz
tar xvf numpy-1.8.1.tar
cd numpy-1.8.1
cp /tmp/site.cfg .
python setup.py config install
cd /tmp
rm -r -f /tmp/numpy-1.8.1 numpy-1.8.1.tar.gz

# # build scipy from source to use mkl blas and lapack
cd /tmp
gunzip scipy-0.13.3.tar.gz
tar xvf scipy-0.13.3.tar
cd scipy-0.13.3
python setup.py config install
cd /tmp
rm -r -f /tmp/scipy-0.13.3 scipy-0.13.3


# install rest of scipy
pip3 install distribute==0.6.49
pip3 install pyzmq==14.0.0
pip3 install ipython==1.1.0
pip3 install matplotlib==1.3.1
pip3 install pandas==0.12.0
pip3 install sympy==0.7.3
pip3 install nose==1.3.0

# other packages
pip3 install argparse==1.2.1
pip3 install beautifulsoup==3.2.0
pip3 install biopython==1.62
pip3 install boto==2.15.0
pip3 install cython==0.19.2
pip3 install faulthandler==2.2
pip3 install h5py==2.2.0
pip3 install html5lib==0.99
pip3 install httplib2==0.8
pip3 install lxml==3.2.3
pip3 install mdp==3.3
pip3 install mysql-python==1.2.4
pip3 install nltk==2.0.4
pip3 install numexpr==2.2.2
pip3 install oursql==0.9.3.1
pip3 install paramiko==1.8.0
pip3 install PIL==1.1.7
pip3 install ply==3.4
pip3 install psutil==1.1.3
pip3 install psycopg2==2.5.1
pip3 install pycrypto==2.6.1
pip3 install pyface==4.3.0
pip3 install pyfits==3.1.2
pip3 install pyflakes==0.7.3
pip3 install pyglet==1.1.4
pip3 install pymc==2.3
pip3 install pyparsing==2.0.1
pip3 install Pyrex==0.9.9
pip3 install python-dateutil==2.1
pip3 install pytz==2013.7
pip3 install PyYAML==3.10
pip3 install scikits-image==0.7.1
pip3 install scikit-learn==0.14.1
pip3 install patsy==0.2.1
pip3 install statsmodels==0.5.0
pip3 install simplejson==3.3.1
pip3 install six==1.4.1
pip3 install SQLAlchemy==0.8.3
pip3 install storm==0.20
pip3 install tables==3.0.0
pip3 install tornado==3.1.1
pip3 install traits==4.3.0
pip3 install traitsui==4.3.0
pip3 install Twisted==13.1.0
pip3 install wsgiref==0.1.2
pip3 install zope.interface==4.0.5
