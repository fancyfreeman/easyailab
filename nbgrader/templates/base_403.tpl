{%- extends 'base.tpl' -%}

{%- block title -%}
Not Authorized
{%- endblock -%}

{%- block body -%}
<div class="panel-body">
抱歉，您没有访问课程管理权限。
<span id="error-{{ error_code }}"></span>
</div>
{%- endblock -%}