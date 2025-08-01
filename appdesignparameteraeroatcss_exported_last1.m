classdef appdesignparameteraeroatcss_exported_last1 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        EditField                       matlab.ui.control.NumericEditField
        Slider2                         matlab.ui.control.Slider
        wavelengthLabel                 matlab.ui.control.Label
        WeatherConditionButtonGroup     matlab.ui.container.ButtonGroup
        HeavyPrecipitationButton        matlab.ui.control.RadioButton
        ModeratePrecipitationButton     matlab.ui.control.RadioButton
        LightPrecipitationButton        matlab.ui.control.RadioButton
        DrizzleButton                   matlab.ui.control.RadioButton
        NoPrecipitationButton           matlab.ui.control.RadioButton
        WorkingTemperaturedegFEditField  matlab.ui.control.NumericEditField
        WorkingTemperaturedegFEditFieldLabel  matlab.ui.control.Label
        ReliableDetectionSNdBEditField  matlab.ui.control.NumericEditField
        ReliableDetectionSNdBEditFieldLabel  matlab.ui.control.Label
        BandwidthHzPulsewidthEditField  matlab.ui.control.NumericEditField
        BandwidthHzPulsewidthEditFieldLabel  matlab.ui.control.Label
        ElevSeparationNMileEditField    matlab.ui.control.NumericEditField
        ElevSeparationNMileEditFieldLabel  matlab.ui.control.Label
        AntennaEfficiencyEditField      matlab.ui.control.NumericEditField
        AntennaEfficiencyEditFieldLabel  matlab.ui.control.Label
        NoiseFactordBEditField          matlab.ui.control.NumericEditField
        NoiseFactordBEditFieldLabel     matlab.ui.control.Label
        LossesdBEditField               matlab.ui.control.NumericEditField
        LossesdBEditFieldLabel          matlab.ui.control.Label
        TransmitterPowerkWEditField     matlab.ui.control.NumericEditField
        TransmitterPowerkWEditFieldLabel  matlab.ui.control.Label
        RADARRangeNMileEditField        matlab.ui.control.NumericEditField
        RADARRangeNMileEditFieldLabel   matlab.ui.control.Label
        LatSeparationNMileEditField     matlab.ui.control.NumericEditField
        LatSeparationNMileEditFieldLabel  matlab.ui.control.Label
        RangeResolutionmEditField       matlab.ui.control.NumericEditField
        RangeResolutionmEditFieldLabel  matlab.ui.control.Label
        RADARBandDropDown               matlab.ui.control.DropDown
        RADARBandDropDownLabel          matlab.ui.control.Label
    end


    % Public properties that correspond to the Simulink model
    properties (Access = public, Transient)
        Simulation simulink.Simulation
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Value changed function: Slider2
        function WavelengthSliderValueChanged(app, event)
              val = app.Slider2.Value;
              app.EditField.Value = val; 
              set_param('AEROATCSS/Radar/wavelength ', 'Value', num2str(val));
        end

        % Value changed function: EditField
        function EditFieldValueChanged(app, event)
                val = app.EditField.Value;
                val = max(min(val, 0.3), 0.15);  
                app.EditField.Value = val;
                app.Slider2.Value = val;
                set_param('AEROATCSS/Radar/wavelength ', 'Value', num2str(val));
        end

        % Value changed function: TransmitterPowerkWEditField
        function TransmitterPowerkWEditFieldValueChanged(app, event)
            value = app.TransmitterPowerkWEditField.Value;
            set_param('AEROATCSS/Radar/Power to Transmit', 'Value', num2str(value));
           

        end

        % Value changed function: LossesdBEditField
        function LossesdBEditFieldValueChanged(app, event)
            value = app.LossesdBEditField.Value;
            set_param('AEROATCSS/Radar/Antenna Losses (dB)', 'Value', num2str(value));
            

        end

        % Value changed function: NoiseFactordBEditField
        function NoiseFactordBEditFieldValueChanged(app, event)
            value = app.NoiseFactordBEditField.Value;
            set_param('AEROATCSS/Radar/Noise Factor (dB)', 'Value', num2str(value));
            

        end

        % Value changed function: AntennaEfficiencyEditField
        function AntennaEfficiencyEditFieldValueChanged(app, event)
            value = app.AntennaEfficiencyEditField.Value;
            set_param('AEROATCSS/Radar/Antenna Efficiency', 'Value', num2str(value));
            

        end

        % Value changed function: RADARRangeNMileEditField
        function RADARRangeNMileEditFieldValueChanged(app, event)
            value = app.RADARRangeNMileEditField.Value;
            set_param('AEROATCSS/Radar/RADAR_Range_(NM)','Value', num2str(value));
            set_param('AEROATCSS/Weather/RADAR_Range_(NM)','Value', num2str(value));
            
        end

        % Value changed function: ElevSeparationNMileEditField
        function ElevSeparationNMileEditFieldValueChanged(app, event)
            value = app.ElevSeparationNMileEditField.Value;
            set_param('AEROATCSS/Radar/El. Spacing(NM)', 'Value', num2str(value));
            

            
        end

        % Value changed function: LatSeparationNMileEditField
        function LatSeparationNMileEditFieldValueChanged(app, event)
            value = app.LatSeparationNMileEditField.Value;
            set_param('AEROATCSS/Radar/Lat. Spacing (NM)', 'Value', num2str(value));
           

        end

        % Value changed function: RangeResolutionmEditField
        function RangeResolutionmEditFieldValueChanged(app, event)
            value = app.RangeResolutionmEditField.Value;
            set_param('AEROATCSS/Radar/RADAR_Range_Resolution_(m)', 'Value', num2str(value));
            

        end

        % Value changed function: BandwidthHzPulsewidthEditField
        function BandwidthHzPulsewidthEditFieldValueChanged(app, event)
            value = app.BandwidthHzPulsewidthEditField.Value;
            set_param('AEROATCSS/Radar/BWPW(Hz)', 'Value', num2str(value));
            

        end

        % Value changed function: ReliableDetectionSNdBEditField
        function ReliableDetectionSNdBEditFieldValueChanged(app, event)
            value = app.ReliableDetectionSNdBEditField.Value;
            set_param('AEROATCSS/Radar/SNR (dB)', 'Value', num2str(value));
           

        end

        % Value changed function: WorkingTemperaturedegFEditField
        function WorkingTemperaturedegFEditFieldValueChanged(app, event)
            value = app.WorkingTemperaturedegFEditField.Value;
            set_param('AEROATCSS/Radar/Working Temperature (deg F)', 'Value', num2str(value));
        end

        % Selection changed function: WeatherConditionButtonGroup
        function WeatherConditionButtonGroupSelectionChanged(app, event)
          selectedButton = app.WeatherConditionButtonGroup.SelectedObject;
selectedLabel = selectedButton.Text;  % <- This gets the actual label text
attenuationValue = 0;  % Initialize
% Assign value based on selection
switch selectedLabel
    case 'No Precipitation'
        attenuationValue = 0; % dB/km
    case 'Drizzle'
        attenuationValue = 0.25; % dB/km
    case 'Light Precipitation'
        attenuationValue = 1; % dB/km
    case 'Moderate Precipitation'
        attenuationValue = 4; % dB/km
    case 'Heavy Precipitation'
        attenuationValue = 16; % dB/km
    otherwise
        attenuationValue = 0; 
end
% Apply to Simulink block
set_param('AEROATCSS/Weather/XS_unit_volume', 'Value', num2str(attenuationValue));
        end

        % Value changed function: RADARBandDropDown
        function RADARBandDropDownValueChanged(app, event)
            value = app.RADARBandDropDown.Value;
            centerFrequency_GHz = 0; 
    % Assign a typical center frequency based on the selected band
        switch value
        case 'L band'
            centerFrequency_GHz = 0.23; % A typical center frequency within 1-2 GHz
        case 'S band'
            centerFrequency_GHz = 0.15; % A typical center frequency within 2-4 GHz
        otherwise
            % Handle unexpected selection or set a default/error
            centerFrequency_GHz = 0; 
            warning('Unknown RADAR Band selected.');
        end
            set_param('AEROATCSS/Radar/wavelength ', 'Value', num2str(centerFrequency_GHz));
            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            colormap(app.UIFigure, 'parula');
            app.UIFigure.Position = [100 100 640 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create RADARBandDropDownLabel
            app.RADARBandDropDownLabel = uilabel(app.UIFigure);
            app.RADARBandDropDownLabel.HorizontalAlignment = 'right';
            app.RADARBandDropDownLabel.Position = [113 441 78 22];
            app.RADARBandDropDownLabel.Text = 'RADAR Band';

            % Create RADARBandDropDown
            app.RADARBandDropDown = uidropdown(app.UIFigure);
            app.RADARBandDropDown.Items = {'L band', 'S band'};
            app.RADARBandDropDown.ValueChangedFcn = createCallbackFcn(app, @RADARBandDropDownValueChanged, true);
            app.RADARBandDropDown.Position = [206 441 100 22];
            app.RADARBandDropDown.Value = 'L band';

            % Create RangeResolutionmEditFieldLabel
            app.RangeResolutionmEditFieldLabel = uilabel(app.UIFigure);
            app.RangeResolutionmEditFieldLabel.HorizontalAlignment = 'right';
            app.RangeResolutionmEditFieldLabel.Position = [74 27 122 22];
            app.RangeResolutionmEditFieldLabel.Text = 'Range Resolution (m)';

            % Create RangeResolutionmEditField
            app.RangeResolutionmEditField = uieditfield(app.UIFigure, 'numeric');
            app.RangeResolutionmEditField.ValueChangedFcn = createCallbackFcn(app, @RangeResolutionmEditFieldValueChanged, true);
            app.RangeResolutionmEditField.Position = [211 27 100 22];
            app.RangeResolutionmEditField.Value = 150;

            % Create LatSeparationNMileEditFieldLabel
            app.LatSeparationNMileEditFieldLabel = uilabel(app.UIFigure);
            app.LatSeparationNMileEditFieldLabel.HorizontalAlignment = 'right';
            app.LatSeparationNMileEditFieldLabel.Position = [35 70 162 22];
            app.LatSeparationNMileEditFieldLabel.Text = '	Lat. Separation (N. Mile)';

            % Create LatSeparationNMileEditField
            app.LatSeparationNMileEditField = uieditfield(app.UIFigure, 'numeric');
            app.LatSeparationNMileEditField.ValueChangedFcn = createCallbackFcn(app, @LatSeparationNMileEditFieldValueChanged, true);
            app.LatSeparationNMileEditField.Position = [212 70 100 22];
            app.LatSeparationNMileEditField.Value = 2;

            % Create RADARRangeNMileEditFieldLabel
            app.RADARRangeNMileEditFieldLabel = uilabel(app.UIFigure);
            app.RADARRangeNMileEditFieldLabel.HorizontalAlignment = 'right';
            app.RADARRangeNMileEditFieldLabel.Position = [61 172 134 22];
            app.RADARRangeNMileEditFieldLabel.Text = 'RADAR Range (N. Mile)';

            % Create RADARRangeNMileEditField
            app.RADARRangeNMileEditField = uieditfield(app.UIFigure, 'numeric');
            app.RADARRangeNMileEditField.ValueChangedFcn = createCallbackFcn(app, @RADARRangeNMileEditFieldValueChanged, true);
            app.RADARRangeNMileEditField.Position = [210 172 100 22];
            app.RADARRangeNMileEditField.Value = 50;

            % Create TransmitterPowerkWEditFieldLabel
            app.TransmitterPowerkWEditFieldLabel = uilabel(app.UIFigure);
            app.TransmitterPowerkWEditFieldLabel.HorizontalAlignment = 'right';
            app.TransmitterPowerkWEditFieldLabel.Position = [65 365 131 22];
            app.TransmitterPowerkWEditFieldLabel.Text = 'Transmitter Power (kW)';

            % Create TransmitterPowerkWEditField
            app.TransmitterPowerkWEditField = uieditfield(app.UIFigure, 'numeric');
            app.TransmitterPowerkWEditField.ValueChangedFcn = createCallbackFcn(app, @TransmitterPowerkWEditFieldValueChanged, true);
            app.TransmitterPowerkWEditField.Position = [211 365 100 22];
            app.TransmitterPowerkWEditField.Value = 50;

            % Create LossesdBEditFieldLabel
            app.LossesdBEditFieldLabel = uilabel(app.UIFigure);
            app.LossesdBEditFieldLabel.HorizontalAlignment = 'right';
            app.LossesdBEditFieldLabel.Position = [126 314 69 22];
            app.LossesdBEditFieldLabel.Text = 'Losses (dB)';

            % Create LossesdBEditField
            app.LossesdBEditField = uieditfield(app.UIFigure, 'numeric');
            app.LossesdBEditField.ValueChangedFcn = createCallbackFcn(app, @LossesdBEditFieldValueChanged, true);
            app.LossesdBEditField.Position = [210 314 100 22];
            app.LossesdBEditField.Value = 5;

            % Create NoiseFactordBEditFieldLabel
            app.NoiseFactordBEditFieldLabel = uilabel(app.UIFigure);
            app.NoiseFactordBEditFieldLabel.HorizontalAlignment = 'right';
            app.NoiseFactordBEditFieldLabel.Position = [96 265 99 22];
            app.NoiseFactordBEditFieldLabel.Text = 'Noise Factor (dB)';

            % Create NoiseFactordBEditField
            app.NoiseFactordBEditField = uieditfield(app.UIFigure, 'numeric');
            app.NoiseFactordBEditField.ValueChangedFcn = createCallbackFcn(app, @NoiseFactordBEditFieldValueChanged, true);
            app.NoiseFactordBEditField.Position = [210 265 100 22];
            app.NoiseFactordBEditField.Value = 5;

            % Create AntennaEfficiencyEditFieldLabel
            app.AntennaEfficiencyEditFieldLabel = uilabel(app.UIFigure);
            app.AntennaEfficiencyEditFieldLabel.HorizontalAlignment = 'right';
            app.AntennaEfficiencyEditFieldLabel.Position = [91 220 104 22];
            app.AntennaEfficiencyEditFieldLabel.Text = 'Antenna Efficiency';

            % Create AntennaEfficiencyEditField
            app.AntennaEfficiencyEditField = uieditfield(app.UIFigure, 'numeric');
            app.AntennaEfficiencyEditField.ValueChangedFcn = createCallbackFcn(app, @AntennaEfficiencyEditFieldValueChanged, true);
            app.AntennaEfficiencyEditField.Position = [210 220 100 22];
            app.AntennaEfficiencyEditField.Value = 0.7;

            % Create ElevSeparationNMileEditFieldLabel
            app.ElevSeparationNMileEditFieldLabel = uilabel(app.UIFigure);
            app.ElevSeparationNMileEditFieldLabel.HorizontalAlignment = 'right';
            app.ElevSeparationNMileEditFieldLabel.Position = [54 120 141 22];
            app.ElevSeparationNMileEditFieldLabel.Text = 'Elev. Separation (N. Mile)';

            % Create ElevSeparationNMileEditField
            app.ElevSeparationNMileEditField = uieditfield(app.UIFigure, 'numeric');
            app.ElevSeparationNMileEditField.ValueChangedFcn = createCallbackFcn(app, @ElevSeparationNMileEditFieldValueChanged, true);
            app.ElevSeparationNMileEditField.Position = [210 120 100 22];
            app.ElevSeparationNMileEditField.Value = 2;

            % Create BandwidthHzPulsewidthEditFieldLabel
            app.BandwidthHzPulsewidthEditFieldLabel = uilabel(app.UIFigure);
            app.BandwidthHzPulsewidthEditFieldLabel.HorizontalAlignment = 'right';
            app.BandwidthHzPulsewidthEditFieldLabel.Position = [330 278 155 22];
            app.BandwidthHzPulsewidthEditFieldLabel.Text = 'Bandwidth (Hz) / Pulsewidth';

            % Create BandwidthHzPulsewidthEditField
            app.BandwidthHzPulsewidthEditField = uieditfield(app.UIFigure, 'numeric');
            app.BandwidthHzPulsewidthEditField.ValueChangedFcn = createCallbackFcn(app, @BandwidthHzPulsewidthEditFieldValueChanged, true);
            app.BandwidthHzPulsewidthEditField.Position = [500 278 100 22];
            app.BandwidthHzPulsewidthEditField.Value = 1.2;

            % Create ReliableDetectionSNdBEditFieldLabel
            app.ReliableDetectionSNdBEditFieldLabel = uilabel(app.UIFigure);
            app.ReliableDetectionSNdBEditFieldLabel.HorizontalAlignment = 'right';
            app.ReliableDetectionSNdBEditFieldLabel.Position = [333 230 152 22];
            app.ReliableDetectionSNdBEditFieldLabel.Text = 'Reliable Detection S/N (dB)';

            % Create ReliableDetectionSNdBEditField
            app.ReliableDetectionSNdBEditField = uieditfield(app.UIFigure, 'numeric');
            app.ReliableDetectionSNdBEditField.ValueChangedFcn = createCallbackFcn(app, @ReliableDetectionSNdBEditFieldValueChanged, true);
            app.ReliableDetectionSNdBEditField.Position = [500 230 100 22];
            app.ReliableDetectionSNdBEditField.Value = 15;

            % Create WorkingTemperaturedegFEditFieldLabel
            app.WorkingTemperaturedegFEditFieldLabel = uilabel(app.UIFigure);
            app.WorkingTemperaturedegFEditFieldLabel.HorizontalAlignment = 'right';
            app.WorkingTemperaturedegFEditFieldLabel.Position = [331 178 161 22];
            app.WorkingTemperaturedegFEditFieldLabel.Text = 'Working Temperature (deg F)';

            % Create WorkingTemperaturedegFEditField
            app.WorkingTemperaturedegFEditField = uieditfield(app.UIFigure, 'numeric');
            app.WorkingTemperaturedegFEditField.ValueChangedFcn = createCallbackFcn(app, @WorkingTemperaturedegFEditFieldValueChanged, true);
            app.WorkingTemperaturedegFEditField.Position = [500 178 100 22];
            app.WorkingTemperaturedegFEditField.Value = 15;

            % Create WeatherConditionButtonGroup
            app.WeatherConditionButtonGroup = uibuttongroup(app.UIFigure);
            app.WeatherConditionButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @WeatherConditionButtonGroupSelectionChanged, true);
            app.WeatherConditionButtonGroup.Title = '                  Weather Condition';
            app.WeatherConditionButtonGroup.Position = [359 20 241 139];

            % Create NoPrecipitationButton
            app.NoPrecipitationButton = uiradiobutton(app.WeatherConditionButtonGroup);
            app.NoPrecipitationButton.Text = 'No Precipitation';
            app.NoPrecipitationButton.Position = [11 93 106 22];

            % Create DrizzleButton
            app.DrizzleButton = uiradiobutton(app.WeatherConditionButtonGroup);
            app.DrizzleButton.Text = 'Drizzle';
            app.DrizzleButton.Position = [11 71 65 22];

            % Create LightPrecipitationButton
            app.LightPrecipitationButton = uiradiobutton(app.WeatherConditionButtonGroup);
            app.LightPrecipitationButton.Text = 'Light Precipitation';
            app.LightPrecipitationButton.Position = [11 49 117 22];
            app.LightPrecipitationButton.Value = true;

            % Create ModeratePrecipitationButton
            app.ModeratePrecipitationButton = uiradiobutton(app.WeatherConditionButtonGroup);
            app.ModeratePrecipitationButton.Text = 'Moderate Precipitation';
            app.ModeratePrecipitationButton.Position = [11 28 142 22];

            % Create HeavyPrecipitationButton
            app.HeavyPrecipitationButton = uiradiobutton(app.WeatherConditionButtonGroup);
            app.HeavyPrecipitationButton.Text = 'Heavy Precipitation';
            app.HeavyPrecipitationButton.Position = [11 6 125 22];

            % Create wavelengthLabel
            app.wavelengthLabel = uilabel(app.UIFigure);
            app.wavelengthLabel.Position = [486 420 105 22];
            app.wavelengthLabel.Text = '      wavelength';

            % Create Slider2
            app.Slider2 = uislider(app.UIFigure);
            app.Slider2.Limits = [0.15 0.3];
            app.Slider2.MajorTicks = [0.15 0.2 0.25 0.3];
            app.Slider2.ValueChangedFcn = createCallbackFcn(app, @WavelengthSliderValueChanged, true);
            app.Slider2.Position = [500 404 83 3];
            app.Slider2.Value = 0.285;

            % Create EditField
            app.EditField = uieditfield(app.UIFigure, 'numeric');
            app.EditField.ValueChangedFcn = createCallbackFcn(app, @EditFieldValueChanged, true);
            app.EditField.Position = [508 344 58 22];
            app.EditField.Value = 0.285;

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = appdesignparameteraeroatcss_exported_last1

            % Associate the Simulink Model
            app.Simulation = simulation('AEROATCSS');

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end