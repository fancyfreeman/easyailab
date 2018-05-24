{%- extends 'gradebook_base.tpl' -%}

{%- block head -%}
<script src="{{ base_url }}/formgrader/static/js/gradebook_assignments.js"></script>
{%- endblock -%}

{%- block breadcrumbs -%}
<ol class="breadcrumb">
  <li class="active">Manual Grading</li>
</ol>
{%- endblock -%}

{%- block table_header -%}
<tr>
  <th>Assignment ID</th>
  <th class="text-center">到期日期</th>
  <th class="text-center">提交</th>
  <th class="text-center">得分</th>
</tr>
{%- endblock -%}

{%- block table_body -%}
<tr><td colspan="4">正在加载，请稍后...</td></tr>
{%- endblock -%}
