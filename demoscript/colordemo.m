cd('..');
fid = fopen('screenshots/index.md', 'w');

for darkflag = {'dark', 'light'}
    files = dir(['colors/*' darkflag{:} '.m']);
    for ii = 1:length(files)
        file = files(ii).name;
        scheme = regexp(file, '(base16-)([\w-]+).m', 'tokens');
        for variant = 0:1
            apply_colors(scheme{1}{2}, 1, variant);
            pause(0.75);
            if variant
                img = [scheme{1}{:} '-var.png'];
                alt = [scheme{1}{2} ' variant'];
            else
                img = [scheme{1}{:} '.png'];
                alt = [scheme{1}{2} ''];
            end
            system(['scrot -u screenshots/' img]);
            fprintf(fid, '## %s\n', alt);
            fprintf(fid, '![%s](%s)\n', alt, img);
        end
    end
end

fclose(fid);
cd('demoscript');

