<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="/">
                @if(!empty($generalSettings['site_name']))
                    {{ strtoupper($generalSettings['site_name']) }}
                @else
                    Platform Title
                @endif
            </a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="/">
                @if(!empty($generalSettings['site_name']))
                    {{ strtoupper(substr($generalSettings['site_name'],0,2)) }}
                @endif
            </a>
        </div>

        <ul class="sidebar-menu">
            @can('admin_general_dashboard_show')
                <li class="{{ (request()->is('admin/')) ? 'active' : '' }}">
                    <a href="/admin" class="nav-link">
                        <i class="fas fa-fire"></i>
                        <span>{{ trans('admin/main.dashboard') }}</span>
                    </a>
                </li>
            @endcan


            @if($authUser->can('admin_webinars') or
                $authUser->can('admin_categories') or
                $authUser->can('admin_filters') or
                $authUser->can('admin_quizzes') or
                $authUser->can('admin_certificate') or
                $authUser->can('admin_reviews_lists')
            )
                <li class="menu-header">{{ trans('site.education') }}</li>
            @endif

            @can('admin_webinars')
                <li class="nav-item dropdown {{ (request()->is('admin/webinars*') and !request()->is('admin/webinars/comments*')) ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-graduation-cap"></i>
                        <span>{{ trans('panel.classes') }}</span>
                    </a>
                    <ul class="dropdown-menu">
                        @can('admin_webinars_list')
                            <li class="{{ (request()->is('admin/webinars') and request()->get('type') == 'course') ? 'active' : '' }}">
                                <a class="nav-link @if(!empty($sidebarBeeps['courses']) and $sidebarBeeps['courses']) beep beep-sidebar @endif" href="/admin/webinars?type=course">{{ trans('admin/main.courses') }}</a>
                            </li>

                            <li class="{{ (request()->is('admin/webinars') and request()->get('type') == 'webinar') ? 'active' : '' }}">
                                <a class="nav-link @if(!empty($sidebarBeeps['webinars']) and $sidebarBeeps['webinars']) beep beep-sidebar @endif" href="/admin/webinars?type=webinar">{{ trans('admin/main.live_classes') }}</a>
                            </li>

                            <li class="{{ (request()->is('admin/webinars') and request()->get('type') == 'text_lesson') ? 'active' : '' }}">
                                <a class="nav-link @if(!empty($sidebarBeeps['textLessons']) and $sidebarBeeps['textLessons']) beep beep-sidebar @endif" href="/admin/webinars?type=text_lesson">{{ trans('admin/main.text_courses') }}</a>
                            </li>
                        @endcan()

                        @can('admin_webinars_create')
                            <li class="{{ (request()->is('admin/webinars/create')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/webinars/create">{{ trans('admin/main.new') }}</a>
                            </li>
                        @endcan()

                    </ul>
                </li>
            @endcan()

            {{-- @can('admin_categories')
                <li class="nav-item dropdown {{ (request()->is('admin/categories*')) ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-th"></i>
                        <span>{{ trans('admin/main.categories') }}</span>
                    </a>
                    <ul class="dropdown-menu">
                        @can('admin_categories_list')
                            <li class="{{ (request()->is('admin/categories')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/categories">{{ trans('admin/main.lists') }}</a>
                            </li>
                        @endcan()
                        @can('admin_categories_create')
                            <li class="{{ (request()->is('admin/categories/create')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/categories/create">{{ trans('admin/main.new') }}</a>
                            </li>
                        @endcan()
                        @can('admin_trending_categories')
                            <li class="{{ (request()->is('admin/categories/trends')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/categories/trends">{{ trans('admin/main.trends') }}</a>
                            </li>
                        @endcan()
                    </ul>
                </li>
            @endcan()

            @can('admin_filters')
                <li class="nav-item dropdown {{ (request()->is('admin/filters*')) ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-filter"></i>
                        <span>{{ trans('admin/main.filters') }}</span>
                    </a>
                    <ul class="dropdown-menu">
                        @can('admin_filters_list')
                            <li class="{{ (request()->is('admin/filters')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/filters">{{ trans('admin/main.lists') }}</a>
                            </li>
                        @endcan()
                        @can('admin_filters_create')
                            <li class="{{ (request()->is('admin/filters/create')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/filters/create">{{ trans('admin/main.new') }}</a>
                            </li>
                        @endcan()
                    </ul>
                </li>
            @endcan()  --}}

            @can('admin_quizzes')
                <li class="{{ (request()->is('admin/quizzes*')) ? 'active' : '' }}">
                    <a class="nav-link " href="/admin/quizzes">
                        <i class="fas fa-file"></i>
                        <span>{{ trans('admin/main.quizzes') }}</span>
                    </a>
                </li>
            @endcan()


            @if($authUser->can('admin_users') or
                $authUser->can('admin_roles') or
                $authUser->can('admin_group') or
                $authUser->can('admin_users_badges') or
                $authUser->can('admin_become_instructors_list')
            )
                <li class="menu-header">{{ trans('panel.users') }}</li>
            @endif

            @can('admin_users')
                <li class="nav-item dropdown {{ (request()->is('admin/staffs') or request()->is('admin/students') or request()->is('admin/instructors') or request()->is('admin/organizations')) ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-users"></i>
                        <span>{{ trans('admin/main.users_list') }}</span>
                    </a>

                    <ul class="dropdown-menu">
                        @can('admin_staffs_list')
                            <li class="{{ (request()->is('admin/staffs')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/staffs">{{ trans('admin/main.staff') }}</a>
                            </li>
                        @endcan()

                        @can('admin_users_list')
                            <li class="{{ (request()->is('admin/students')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/students">{{ trans('public.students') }}</a>
                            </li>
                        @endcan()

                        @can('admin_instructors_list')
                            <li class="{{ (request()->is('admin/instructors')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/instructors">{{ trans('home.instructors') }}</a>
                            </li>
                        @endcan()

                        @can('admin_organizations_list')
                            <li class="{{ (request()->is('admin/organizations')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/organizations">{{ trans('admin/main.organizations') }}</a>
                            </li>
                        @endcan()

                        @can('admin_users_create')
                            <li class="{{ (request()->is('admin/users/create')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/users/create">{{ trans('admin/main.new') }}</a>
                            </li>
                        @endcan()
                    </ul>
                </li>
            @endcan

            @can('admin_roles')
                <li class="nav-item dropdown {{ (request()->is('admin/roles*')) ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-user-circle"></i> <span>{{ trans('admin/main.roles') }}</span>
                    </a>
                    <ul class="dropdown-menu">
                        @can('admin_roles_list')
                            <li class="{{ (request()->is('admin/roles')) ? 'active' : '' }}">
                                <a class="nav-link active" href="/admin/roles">{{ trans('admin/main.lists') }}</a>
                            </li>
                        @endcan()
                        @can('admin_roles_create')
                            <li class="{{ (request()->is('admin/roles/create')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/roles/create">{{ trans('admin/main.new') }}</a>
                            </li>
                        @endcan()
                    </ul>
                </li>
            @endcan()


            @if($authUser->can('admin_supports') or
                $authUser->can('admin_comments') or
                $authUser->can('admin_reports') or
                $authUser->can('admin_contacts') or
                $authUser->can('admin_noticeboards') or
                $authUser->can('admin_notifications')
            )
                <li class="menu-header">{{ trans('admin/main.crm') }}</li>
            @endif

            @can('admin_supports')
                <li class="nav-item dropdown {{ (request()->is('admin/supports*') and request()->get('type') != 'course_conversations') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-headphones"></i>
                        <span>{{ trans('admin/main.supports') }}</span>
                    </a>

                    <ul class="dropdown-menu">
                        @can('admin_supports_list')
                            <li class="{{ (request()->is('admin/supports')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/supports">{{ trans('public.tickets') }}</a>
                            </li>
                        @endcan

                        @can('admin_support_send')
                            <li class="{{ (request()->is('admin/supports/create')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/supports/create">{{ trans('admin/main.new_ticket') }}</a>
                            </li>
                        @endcan

                        @can('admin_support_departments')
                            <li class="{{ (request()->is('admin/supports/departments')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/supports/departments">{{ trans('admin/main.departments') }}</a>
                            </li>
                        @endcan
                    </ul>
                </li>

                @can('admin_support_course_conversations')
                    <li class="{{ (request()->is('admin/supports*') and request()->get('type') == 'course_conversations') ? 'active' : '' }}">
                        <a class="nav-link" href="/admin/supports?type=course_conversations">
                            <i class="fas fa-envelope-square"></i>
                            <span>{{ trans('admin/main.classes_conversations') }}</span>
                        </a>
                    </li>
                @endcan
            @endcan

            @can('admin_comments')
                <li class="nav-item dropdown {{ (request()->is('admin/comments*') and !request()->is('admin/comments/webinars/reports')) ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i class="fas fa-comments"></i> <span>{{ trans('admin/main.comments') }}</span></a>
                    <ul class="dropdown-menu">
                        @can('admin_webinar_comments')
                            <li class="{{ (request()->is('admin/comments/webinars')) ? 'active' : '' }}">
                                <a class="nav-link @if(!empty($sidebarBeeps['classesComments']) and $sidebarBeeps['classesComments']) beep beep-sidebar @endif" href="/admin/comments/webinars">{{ trans('admin/main.classes_comments') }}</a>
                            </li>
                        @endcan

                        @can('admin_blog_comments')
                            <li class="{{ (request()->is('admin/comments/blog')) ? 'active' : '' }}">
                                <a class="nav-link @if(!empty($sidebarBeeps['blogComments']) and $sidebarBeeps['blogComments']) beep beep-sidebar @endif" href="/admin/comments/blog">{{ trans('admin/main.blog_comments') }}</a>
                            </li>
                        @endcan
                    </ul>
                </li>
            @endcan

            @can('admin_reports')
                <li class="nav-item dropdown {{ (request()->is('admin/reports*') or request()->is('admin/comments/webinars/reports') or request()->is('admin/comments/blog/reports')) ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i class="fas fa-info-circle"></i> <span>{{ trans('admin/main.reports') }}</span></a>

                    <ul class="dropdown-menu">
                        @can('admin_webinar_reports')
                            <li class="{{ (request()->is('admin/reports/webinars')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/reports/webinars">{{ trans('panel.classes') }}</a>
                            </li>
                        @endcan

                        @can('admin_webinar_comments_reports')
                            <li class="{{ (request()->is('admin/comments/webinars/reports')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/comments/webinars/reports">{{ trans('admin/main.classes_comments_reports') }}</a>
                            </li>
                        @endcan

                        @can('admin_blog_comments_reports')
                            <li class="{{ (request()->is('admin/comments/blog/reports')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/comments/blog/reports">{{ trans('admin/main.blog_comments_reports') }}</a>
                            </li>
                        @endcan

                        @can('admin_report_reasons')
                            <li class="{{ (request()->is('admin/reports/reasons')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/reports/reasons">{{ trans('admin/main.report_reasons') }}</a>
                            </li>
                        @endcan()
                    </ul>
                </li>
            @endcan

            @can('admin_contacts')
                <li class="{{ (request()->is('admin/contacts*')) ? 'active' : '' }}">
                    <a class="nav-link" href="/admin/contacts">
                        <i class="fas fa-phone-square"></i>
                        <span>{{ trans('admin/main.contacts') }}</span>
                    </a>
                </li>
            @endcan

            @can('admin_noticeboards')
                <li class="nav-item dropdown {{ (request()->is('admin/noticeboards*')) ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i class="fas fa-sticky-note"></i> <span>{{ trans('admin/main.noticeboard') }}</span></a>
                    <ul class="dropdown-menu">
                        @can('admin_noticeboards_list')
                            <li class="{{ (request()->is('admin/noticeboards')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/noticeboards">{{ trans('admin/main.notices_list_title') }}</a>
                            </li>
                        @endcan

                        @can('admin_noticeboards_send')
                            <li class="{{ (request()->is('admin/noticeboards/send')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/noticeboards/send">{{ trans('admin/main.new_notice_title') }}</a>
                            </li>
                        @endcan
                    </ul>
                </li>
            @endcan

            @can('admin_notifications')
                <li class="nav-item dropdown {{ (request()->is('admin/notifications*')) ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown">
                        <i class="fas fa-bell"></i>
                        <span>{{ trans('admin/main.notifications') }}</span>
                    </a>

                    <ul class="dropdown-menu">
                        @can('admin_notifications_list')
                            <li class="{{ (request()->is('admin/notifications')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/notifications">{{ trans('public.history') }}</a>
                            </li>
                        @endcan

                        @can('admin_notifications_posted_list')
                            <li class="{{ (request()->is('admin/notifications/posted')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/notifications/posted">{{ trans('admin/main.posted') }}</a>
                            </li>
                        @endcan

                        @can('admin_notifications_send')
                            <li class="{{ (request()->is('admin/notifications/send')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/notifications/send">{{ trans('admin/main.new') }}</a>
                            </li>
                        @endcan

                        @can('admin_notifications_templates')
                            <li class="{{ (request()->is('admin/notifications/templates')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/notifications/templates">{{ trans('admin/main.templates') }}</a>
                            </li>
                        @endcan

                        @can('admin_notifications_template_create')
                            <li class="{{ (request()->is('admin/notifications/templates/create')) ? 'active' : '' }}">
                                <a class="nav-link" href="/admin/notifications/templates/create">{{ trans('admin/main.new_template') }}</a>
                            </li>
                        @endcan
                    </ul>
                </li>
            @endcan


            @if($authUser->can('admin_settings'))
                <li class="menu-header">{{ trans('admin/main.settings') }}</li>
            @endif

            @can('admin_settings')
                @php
                    $settingClass ='';

                    if (request()->is('admin/settings*') and
                            !(
                                request()->is('admin/settings/404') or
                                request()->is('admin/settings/contact_us') or
                                request()->is('admin/settings/footer') or
                                request()->is('admin/settings/navbar_links')
                            )
                        ) {
                            $settingClass = 'active';
                        }
                @endphp

                <li class="{{ $settingClass ?? '' }}">
                    <a href="/admin/settings" class="nav-link">
                        <i class="fas fa-cogs"></i>
                        <span>{{ trans('admin/main.settings') }}</span>
                    </a>
                </li>
            @endcan()


            <li>
                <a class="nav-link" href="/admin/logout">
                    <i class="fas fa-sign-out-alt"></i>
                    <span>Logout</span>
                </a>
            </li>

        </ul>
        <br><br><br>
    </aside>
</div>
