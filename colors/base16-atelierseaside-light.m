
%% Sets MATLAB GUI colors
% Base16 Atelier Seaside (https://github.com/chriskempson/base16)
% Scheme author: Bram de Haan (http://atelierbram.github.io/syntax-highlighting/atelier-schemes/seaside/)

gui00 = '0xf0fff0';
gui01 = '0xcfe8cf';
gui02 = '0x8ca68c';
gui03 = '0x809980';
gui04 = '0x687d68';
gui05 = '0x5e6e5e';
gui06 = '0x242924';
gui07 = '0x131513';
gui08 = '0xe6193c';
gui09 = '0x87711d';
gui0A = '0xc3c322';
gui0B = '0x29a329';
gui0C = '0x1999b3';
gui0D = '0x3d62f5';
gui0E = '0xad2bee';
gui0F = '0xe619c3';
hlsect = [229,247,229]/255;

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

