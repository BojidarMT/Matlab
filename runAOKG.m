function varargout = runAOKG(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @runAOKG_OpeningFcn, ...
                   'gui_OutputFcn',  @runAOKG_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function runAOKG_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);



function varargout = runAOKG_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function pushbutton1_Callback(hObject, eventdata, handles)
zeros(80, 100);
cd('task1');
run


function pushbutton2_Callback(hObject, eventdata, handles)
zeros(80, 100);
cd('task2');
SimpleCircleandBresenhamCircle


function pushbutton3_Callback(hObject, eventdata, handles)
zeros(80, 100);
cd('task3');
SimpleFloodFillrun


function pushbutton4_Callback(hObject, eventdata, handles)
zeros(80, 100);
cd('task4');
run



function pushbutton6_Callback(hObject, eventdata, handles)
cla reset;

