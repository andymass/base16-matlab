
%% Sets MATLAB GUI colors
% Base16 Ocean (https://github.com/chriskempson/base16)
% Scheme author: Chris Kempson (http://chriskempson.com)

gui00 = '0xeff1f5';
gui01 = '0xdfe1e8';
gui02 = '0xc0c5ce';
gui03 = '0xa7adba';
gui04 = '0x65737e';
gui05 = '0x4f5b66';
gui06 = '0x343d46';
gui07 = '0x2b303b';
gui08 = '0xbf616a';
gui09 = '0xd08770';
gui0A = '0xebcb8b';
gui0B = '0xa3be8c';
gui0C = '0x96b5b4';
gui0D = '0x8fa1b3';
gui0E = '0xb48ead';
gui0F = '0xab7967';
hlsect = [233,235,240]/255;

% Don't use system colors
com.mathworks.services.Prefs.setBooleanPref('ColorsUseSystem',0);

% Use autofix highlighting
com.mathworks.services.Prefs.setBooleanPref(...
    'ColorsUseMLintAutoFixBackground',1);
% Highlight current line
com.mathworks.services.Prefs.setBooleanPref(...
    'Editorhighlight-caret-row-boolean', base16_opts.highlight_line);

%% Desktop tool colors
% Text
com.mathworks.services.Prefs.setColorPref( ...
    'ColorsText', java.awt.Color.decode( gui05 ));
com.mathworks.services.ColorPrefs.notifyColorListeners('ColorsText'); 
% Background
com.mathworks.services.Prefs.setColorPref( ...
    'ColorsBackground', java.awt.Color.decode( gui00 ));
com.mathworks.services.ColorPrefs.notifyColorListeners('ColorsBackground'); 

%% MATLAB syntax hightlighting colors
% Keywords
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_Keywords', java.awt.Color.decode( gui0D ));
% Strings
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_Strings', java.awt.Color.decode( gui0F ));
% System Commands
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_SystemCommands', java.awt.Color.decode( gui0A ));
% Comments
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_Comments', java.awt.Color.decode( gui0C ));
% Unterminated Strings
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_UnterminatedStrings', java.awt.Color.decode( gui09 ));
% Syntax Errors
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_Errors', java.awt.Color.decode( gui08 ));

%% MATLAB Command Window colors
% Error Text
com.mathworks.services.Prefs.setColorPref( ...
    'Color_CmdWinErrors', java.awt.Color.decode( gui08 ));
% Warning Text
com.mathworks.services.Prefs.setColorPref( ...
    'Color_CmdWinWarnings', java.awt.Color.decode( gui09 ));
% Hyperlinks
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_HTML_HTMLLinks', java.awt.Color.decode( gui0D ));

%% Color analyzer colors
% Warnings
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_Warnings', java.awt.Color.decode( gui09 ));
% Autofix highlight
com.mathworks.services.Prefs.setColorPref( ...
    'ColorsMLintAutoFixBackground', java.awt.Color.decode( gui02 ));
com.mathworks.services.ColorPrefs.notifyColorListeners(...
    'ColorsMLintAutoFixBackground'); 

%% Variable and function colors
% Automatically Highlight
com.mathworks.services.Prefs.setColorPref( ...
    'Editor.VariableHighlighting.Color', java.awt.Color.decode( gui0E ));
% Variables with shared scope
com.mathworks.services.Prefs.setColorPref( ...
    'Editor.NonlocalVariableHighlighting.TextColor', ...
    java.awt.Color.decode( gui0B ));

%% Section display options
% Highlight Sections
com.mathworks.services.Prefs.setColorPref( ...
    'Editorhighlight-lines', java.awt.Color(hlsect(1),hlsect(2),hlsect(3)));
% Text limit line color
com.mathworks.services.Prefs.setColorPref( ...
    'EditorRightTextLimitLineColor', java.awt.Color.decode( gui02 ));
% Current line color
com.mathworks.services.Prefs.setColorPref(... 
    'Editorhighlight-caret-row-boolean-color', ...
    java.awt.Color.decode( gui01 ));

