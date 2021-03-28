FROM mcr.microsoft.com/windows/servercore:ltsc2019
MAINTAINER dev34253

RUN powershell -command Invoke-WebRequest -UserAgent 'DockerCI' -outfile gitsetup.exe https://github.com/git-for-windows/git/releases/download/v2.25.1.windows.1/Git-2.25.1-32-bit.exe
RUN powershell -command start-process .\gitsetup.exe -ArgumentList '/VERYSILENT /SUPPRESSMSGBOXES /CLOSEAPPLICATIONS /DIR=c:\git' -Wait
RUN del c:\gitsetup.exe
RUN cd "c:\\"
RUN md "c:\\git\\ydir"

ADD yenvmake.sh C:/yenvmake.sh
ADD downloads C:/git/ydir/downloads
ADD scripts C:/git/ydir/scripts

RUN "c:\git\bin\bash.exe" yenvmake.sh

ADD buildyacoin.sh C:/buildyacoin.sh

CMD ["C:\\git\\bin\\bash.exe","C:\\buildyacoin.sh"]
