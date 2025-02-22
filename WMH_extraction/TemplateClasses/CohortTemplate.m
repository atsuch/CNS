%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CohortTemplate.m
% 
% Constructor for DartelTemplate class : DartelTemplate(subject_dir, age_range); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

classdef CohortTemplate < AbstractTemplate
    methods
        function template = DartelTemplate(subject_dir);
            template.name = 'creating template';

            template.brain_mask = strcat( ...
                    subject_dir,'/cohort_probability_maps/',...
                    'DARTEL_cohort_brain_mask.nii.gz');

            template.gm_prob = strcat( ...
                    subject_dir,'/cohort_probability_maps/',...
                    'cohort_GM_probability_map.nii.gz');
            template.wm_prob = strcat( ...
                    subject_dir,'/cohort_probability_maps/',...
                    'cohort_WM_probability_map.nii.gz');
            template.csf_prob = strcat( ...
                    subject_dir,'/cohort_probability_maps/',...
                    'cohort_CSF_probability_map.nii.gz');

            template.gm_prob_thr = strcat( ...
                    subject_dir,'/cohort_probability_maps/',...
                    'cohort_GM_probability_map_thr0_8.nii.gz');
            template.wm_prob_thr = strcat( ...
                    subject_dir,'/cohort_probability_maps/',...
                    'cohort_WM_probability_map_thr0_8.nii.gz');
    
            template.ventricles = strcat( ...
                    subject_dir,'/Templates/DARTEL_ventricle_distance_map/', ...
                    'DARTEL_ventricle_distance_map.nii.gz');

            template.lobar = strcat( ...
                    subject_dir,'/Templates/DARTEL_lobar_and_arterial_templates/', ...
                        'DARTEL_lobar_template.nii.gz');
            template.arterial = strcat( ...
                    subject_dir,'/Templates/DARTEL_lobar_and_arterial_templates/', ...
                        'DARTEL_arterial_template.nii.gz');

            template.space = 'DARTEL';
        end
    end
    properties
        name
        brain_mask
        gm_prob
        wm_prob
        csf_prob
        gm_prob_thr
        wm_prob_thr
        ventricles
        lobar
        arterial
        space
    end
end
