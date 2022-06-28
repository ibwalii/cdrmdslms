@php
    if (!empty($itemValue) and !is_array($itemValue)) {
        $itemValue = json_decode($itemValue, true);
    }
@endphp

<div class="tab-pane mt-3 fade" id="features" role="tabpanel" aria-labelledby="features-tab">
    <div class="row">
        <div class="col-12 col-md-6">
            <form action="/admin/settings/features" method="post">
                {{ csrf_field() }}
                <input type="hidden" name="page" value="general">
                <input type="hidden" name="features" value="features">

                <div class="mb-5">
                    <h5>{{ trans('update.agora') }} {{ trans('admin/main.settings') }}</h5>

                    <div class="form-group">
                        <label>{{ trans('update.agora') }} {{ trans('update.resolution') }}</label>

                        <select class="form-control">
                            <option value="">{{ trans('admin/main.select') }} {{ trans('update.resolution') }}</option>

                            @foreach(getAgoraResolutions() as $resolution)
                                <option value="{{ $resolution }}" {{ ((!empty($itemValue) and !empty($itemValue['agora_resolution']) and $itemValue['agora_resolution'] == $resolution) or old('value[agora_resolution]') == $resolution) ? 'selected' : '' }}>{{ str_replace('_',' x ', $resolution) }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group">
                        <label>{{ trans('update.max_bitrate') }}</label>
                        <input type="text" name="value[agora_max_bitrate]" value="{{ (!empty($itemValue) and !empty($itemValue['agora_max_bitrate'])) ? $itemValue['agora_max_bitrate'] : old('agora_max_bitrate') }}" class="form-control "/>
                    </div>

                    <div class="form-group">
                        <label>{{ trans('update.min_bitrate') }}</label>
                        <input type="text" name="value[agora_min_bitrate]" value="{{ (!empty($itemValue) and !empty($itemValue['agora_min_bitrate'])) ? $itemValue['agora_min_bitrate'] : old('agora_min_bitrate') }}" class="form-control "/>
                    </div>

                    <div class="form-group">
                        <label>{{ trans('update.frame_rate') }}</label>
                        <input type="text" name="value[agora_frame_rate]" value="{{ (!empty($itemValue) and !empty($itemValue['agora_frame_rate'])) ? $itemValue['agora_frame_rate'] : old('agora_frame_rate') }}" class="form-control "/>
                    </div>

                 
                  
                     <div class="form-group custom-switches-stacked">
                    <label class="custom-switch pl-0">
                        <input type="hidden" name="value[content_translate]" value="0">
                        <span class="custom-switch-indicator"></span>
                        <label class="custom-switch-description mb-0 cursor-pointer" for="contentTranslate">{{ trans('update.agora_live_streaming') }}</label>
                    </label>
                    <div class="text-muted text-small mt-1">Paid Plugin</div>
                </div>
                  
                    <div class="form-group custom-switches-stacked">
                    <label class="custom-switch pl-0">
                        <input type="hidden" name="value[content_translate]" value="0">
                        <span class="custom-switch-indicator"></span>
                        <label class="custom-switch-description mb-0 cursor-pointer" for="contentTranslate">{{ trans('update.agora_chat') }}</label>
                    </label>
                    <div class="text-muted text-small mt-1">Paid Plugin</div>
                </div>
                  
                    <div class="form-group custom-switches-stacked">
                    <label class="custom-switch pl-0">
                        <input type="hidden" name="value[content_translate]" value="0">
                        <span class="custom-switch-indicator"></span>
                        <label class="custom-switch-description mb-0 cursor-pointer" for="contentTranslate">{{ trans('update.agora_in_free_courses') }}</label>
                    </label>
                    <div class="text-muted text-small mt-1">Paid Plugin</div>
                </div>

                  
{{--
                    <div class="form-group custom-switches-stacked">
                        <label class="custom-switch pl-0">
                            <input type="hidden" name="value[agora_cloud_rec]" value="0">
                            <input type="checkbox" name="value[agora_cloud_rec]" id="agoraRecordingSwitch" value="1" {{ (!empty($itemValue) and !empty($itemValue['agora_cloud_rec']) and $itemValue['agora_cloud_rec']) ? 'checked="checked"' : '' }} class="custom-switch-input"/>
                            <span class="custom-switch-indicator"></span>
                            <label class="custom-switch-description mb-0 cursor-pointer" for="agoraRecordingSwitch">{{ trans('update.agora_recording') }}</label>
                        </label>
                    </div>
--}}


                <div class="mb-5">
                    <h5>{{ trans('update.scorm_settings') }}</h5>

                      <div class="form-group mt-3 custom-switches-stacked">
                    <label class="custom-switch pl-0">
                        <input type="hidden" name="value[content_translate]" value="0">
                        <span class="custom-switch-indicator"></span>
                        <label class="custom-switch-description mb-0 cursor-pointer" for="contentTranslate">{{ trans('update.interactive_feature_toggle') }}</label>
                    </label>
                    <div class="text-muted text-small mt-1">Paid Plugin</div>
                </div>

                  
                </div>
                  
                 
                <div class="mb-5">
                    <h5>{{ trans('update.timezone') }} {{ trans('admin/main.settings') }}</h5>

                    <div class="form-group mt-3 custom-switches-stacked">
                        <label class="custom-switch pl-0">
                            <input type="hidden" name="value[timezone_in_register]" value="0">
                            <input type="checkbox" name="value[timezone_in_register]" id="timezoneInRegisterSwitch" value="1" {{ (!empty($itemValue) and !empty($itemValue['timezone_in_register']) and $itemValue['timezone_in_register']) ? 'checked="checked"' : '' }} class="custom-switch-input"/>
                            <span class="custom-switch-indicator"></span>
                            <label class="custom-switch-description mb-0 cursor-pointer" for="timezoneInRegisterSwitch">{{ trans('update.timezone_in_register') }}</label>
                        </label>
                    </div>

                    <div class="form-group custom-switches-stacked">
                        <label class="custom-switch pl-0">
                            <input type="hidden" name="value[timezone_in_create_webinar]" value="0">
                            <input type="checkbox" name="value[timezone_in_create_webinar]" id="timezoneInCreateWebinarSwitch" value="1" {{ (!empty($itemValue) and !empty($itemValue['timezone_in_create_webinar']) and $itemValue['timezone_in_create_webinar']) ? 'checked="checked"' : '' }} class="custom-switch-input"/>
                            <span class="custom-switch-indicator"></span>
                            <label class="custom-switch-description mb-0 cursor-pointer" for="timezoneInCreateWebinarSwitch">{{ trans('update.timezone_in_create_webinar') }}</label>
                        </label>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">{{ trans('admin/main.save_change') }}</button>
            </form>
        </div>
    </div>
</div>
