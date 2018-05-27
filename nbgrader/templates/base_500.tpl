{%- extends 'base.tpl' -%}

{%- block title -%}
Error
{%- endblock -%}

{%- block body -%}
<div class="panel-body">
抱歉，课程管理模块出错了，请联系管理员。
<span id="error-{{ error_code }}"></span>
</div>
{%- endblock -%}