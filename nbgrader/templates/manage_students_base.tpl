{%- extends 'base.tpl' -%}

{%- block title -%}
管理学生
{%- endblock -%}

{%- block sidebar -%}
<li role="presentation"><a href="{{ base_url }}/formgrader/manage_assignments">Manage Assignments</a></li>
<li role="presentation"><a href="{{ base_url }}/formgrader/gradebook">Manual Grading</a></li>
<li role="presentation" class="active"><a href="{{ base_url }}/formgrader/manage_students">Manage Students</a></li>
{%- endblock -%}
