
%% Sets MATLAB GUI colors
% Base16 Atelier Forest (https://github.com/chriskempson/base16)
% Scheme author: Bram de Haan (http://atelierbram.github.io/syntax-highlighting/atelier-schemes/forest)

gui00 = '0x1b1918';
gui01 = '0x2c2421';
gui02 = '0x68615e';
gui03 = '0x766e6b';
gui04 = '0x9c9491';
gui05 = '0xa8a19f';
gui06 = '0xe6e2e0';
gui07 = '0xf1efee';
gui08 = '0xf22c40';
gui09 = '0xdf5320';
gui0A = '0xd5911a';
gui0B = '0x5ab738';
gui0C = '0x00ad9c';
gui0D = '0x407ee7';
gui0E = '0x6666ea';
gui0F = '0xc33ff3';
hlsect = [32,28,27]/255;
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

