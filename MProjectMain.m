% %% User-Interface Functions
%
%

function varargout = MProjectMain(varargin)
% MPROJECTMAIN MATLAB code for MProjectMain.fig
%      MPROJECTMAIN, by itself, creates a new MPROJECTMAIN or raises the existing
%      singleton*.
%
%      H = MPROJECTMAIN returns the handle to a new MPROJECTMAIN or the handle to
%      the existing singleton*.
%
%      MPROJECTMAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MPROJECTMAIN.M with the given input arguments.
%
%      MPROJECTMAIN('Property','Value',...) creates a new MPROJECTMAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MProjectMain_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MProjectMain_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MProjectMain

% Last Modified by GUIDE v2.5 12-Mar-2018 12:23:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MProjectMain_OpeningFcn, ...
                   'gui_OutputFcn',  @MProjectMain_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before MProjectMain is made visible.
function MProjectMain_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MProjectMain (see VARARGIN)

% Choose default command line output for MProjectMain
handles.output = hObject;
global KVALUE;
if(KVALUE<100)
    set(handles.popupmenu1,'value',KVALUE);
else
    KVALUE=100;
end    
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MProjectMain wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MProjectMain_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in encrypt_btn.
function encrypt_btn_Callback(hObject, eventdata, handles)
% hObject    handle to encrypt_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Encrypt;
close 'Enhanced K-N Visual Cryptographic Simulation Application';

% --- Executes on button press in decypt_btn.
function decypt_btn_Callback(hObject, eventdata, handles)
% hObject    handle to decypt_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Decryption_1;
close 'Enhanced K-N Visual Cryptographic Simulation Application';

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
guidata(hObject,handles);
global KVALUE;
switch (get(hObject,'value'))
    case 1
        KVALUE=100;
    case 2
        KVALUE=2;
    case 3
        KVALUE=3;
    case 4
        KVALUE=4;    
end
disp(KVALUE);

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%   %%%%%%