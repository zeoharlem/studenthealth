<div class="tabs-section-nav tabs-section-nav-left">
        <ul class="nav" role="tablist">
                <li class="nav-item {% if dataStage %}disabled{% endif %}">
                        <a class="nav-link {% if dataStage %}disabled{% endif %} {% if currUri == '/dashboard/' %}active{% endif %}" href="{{url('dashboard/')}}" role="tab">
                                <span class="nav-link-in">Stage One</span>
                        </a>
                </li>
                <li class="nav-item {% if dataStage.studenttwo %}disabled{% endif %}">
                        <a class="nav-link {% if currUri == '/dashboard/next1' %}active{% endif %}" href="{{url('dashboard/next1')}}" role="tab">
                                <span class="nav-link-in">Stage Two</span>
                        </a>
                </li>
                <li class="nav-item" {% if dataStage.studentthree %}disabled{% endif %}>
                        <a class="nav-link {% if currUri == '/dashboard/next2n' %}active{% endif %}" href="{{url('dashboard/next2n')}}" role="tab">
                                <span class="nav-link-in">Stage Three</span>
                        </a>
                </li>
                <li class="nav-item" {% if dataStage.studentfour %}disabled{% endif %}>
                        <a class="nav-link {% if currUri == '/dashboard/next2' %}active{% endif %}" href="{{url('dashboard/next2')}}" role="tab">
                                <span class="nav-link-in">Stage Four</span>
                        </a>
                </li>
        </ul>
</div><!--.tabs-section-nav-->