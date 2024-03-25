@echo off

call venv\Scripts\activate.bat

if "%~1" == "start-browser" (
	"C:\Program Files (x86)\Microsoft\Edge\Application\msedge_proxy.exe"  --profile-directory=Default --app-id=fdfllangmneamcbmopcnemepphpfaihc --app-url=http://127.0.0.1:8188/ --app-launch-source=4
)

:: python.exe -s main.py --use-pytorch-cross-attention --dont-upcast-attention --preview-method taesd

python.exe -s main.py --use-pytorch-cross-attention --disable-xformers --fast --preview-method taesd

if "%~2" == "pause-after-run" (
	pause
)
