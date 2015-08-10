
%% Sets MATLAB GUI colors
% Base16 Atelier Lakeside (https://github.com/chriskempson/base16)
% Scheme author: Bram de Haan (http://atelierbram.github.io/syntax-highlighting/atelier-schemes/lakeside/)

gui00 = '0x161b1d';
gui01 = '0x1f292e';
gui02 = '0x516d7b';
gui03 = '0x5a7b8c';
gui04 = '0x7195a8';
gui05 = '0x7ea2b4';
gui06 = '0xc1e4f6';
gui07 = '0xebf8ff';
gui08 = '0xd22d72';
gui09 = '0x935c25';
gui0A = '0x8a8a0f';
gui0B = '0x568c3b';
gui0C = '0x2d8f6f';
gui0D = '0x257fad';
gui0E = '0x5d5db1';
gui0F = '0xb72dd2';
hlsect = [25,31,34]/255;
if base16_opts.alternate
    alt = @(a,b) b;
else
    alt = @(a,b) a;
end

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
    'Colors_M_Keywords', java.awt.Color.decode( alt(gui0D,gui0E) ));
% Strings
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_Strings', java.awt.Color.decode( alt(gui0F,gui0B) ));
% System Commands
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_SystemCommands', java.awt.Color.decode( alt(gui0A,gui0C) ));
% Comments
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_Comments', java.awt.Color.decode( alt(gui0C,gui03) ));
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
    'Color_CmdWinWarnings', java.awt.Color.decode( alt(gui09,gui08) ));
% Hyperlinks
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_HTML_HTMLLinks', java.awt.Color.decode( alt(gui0D,gui09) ));

%% Color analyzer colors
% Warnings
com.mathworks.services.Prefs.setColorPref( ...
    'Colors_M_Warnings', java.awt.Color.decode( alt(gui09,gui08) ));
% Autofix highlight
com.mathworks.services.Prefs.setColorPref( ...
    'ColorsMLintAutoFixBackground', java.awt.Color.decode( gui02 ));
com.mathworks.services.ColorPrefs.notifyColorListeners(...
    'ColorsMLintAutoFixBackground'); 

%% Variable and function colors
% Automatically Highlight
com.mathworks.services.Prefs.setColorPref( ...
    'Editor.VariableHighlighting.Color', java.awt.Color.decode( gui0D ));
% Variables with shared scope
com.mathworks.services.Prefs.setColorPref( ...
    'Editor.NonlocalVariableHighlighting.TextColor', ...
    java.awt.Color.decode( alt(gui0B, gui0C) ));

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

