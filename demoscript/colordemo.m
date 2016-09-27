cd('..');

if system('command -v wmctrl >/dev/null 2>&1')
    warning('resize requires wmctrl');
else
    system('wmctrl -r "MATLAB R" -e 0,50,50,650,500');
end
if system('command -v scrot >/dev/null 2>&1')
    error('requires scrot');
end

[~,~] = mkdir('screenshots');
fid = fopen('Home.md', 'w');

files = dir('colors/*.m');
for ii = 1:length(files)
    file = files(ii).name;
    scheme = regexp(file, '(base16-)([\w-]+).m', 'tokens');
    for variant = 0:1
        apply_colors(scheme{1}{2}, 1, variant);
        pause(1);
        if variant
            img = [scheme{1}{:} '.png'];
            alt = [scheme{1}{2} ''];
        else
            img = [scheme{1}{:} '-var.png'];
            alt = [scheme{1}{2} ' alternate'];
        end
        system(['scrot -u screenshots/' img]);
        fprintf(fid, '## %s\n', alt);
        fprintf(fid, '![%s](wiki/screenshots/%s)\n', alt, img);
    end
end

fclose(fid);
cd('demoscript');

