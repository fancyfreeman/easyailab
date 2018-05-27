{%- extends 'gradebook_base.tpl' -%}

{%- block head -%}
<script>
var assignment_id = "{{ assignment_id }}";
var notebook_id = "{{ notebook_id }}";
</script>

<script src="{{ base_url }}/formgrader/static/js/gradebook_notebook_submissions.js"></script>
{%- endblock head -%}

{%- block breadcrumbs -%}
<ol class="breadcrumb">
  <li><a href="{{ base_url }}/formgrader/gradebook">手动评分</a></li>
  <li><a href="{{ base_url }}/formgrader/gradebook/{{ assignment_id }}">{{ assignment_id }}</a></li>
  <li class="active">{{ notebook_id }}</li>
</ol>
{%- endblock -%}

{%- block table_header -%}
<tr>
  <th></th>
  <th>Submission ID</th>
  <th class="text-center">总得分</th>
  <th class="text-center">程序得分</th>
  <th class="text-center">手工得分</th>
  <th class="text-center">是否需要手动评分?</th>
  <th class="text-center">测试失败?</th>
  <th class="text-center">标记?</th>
</tr>
{%- endblock -%}

{%- block table_body -%}
<tr><td colspan="7">Loading, please wait...</td></tr>
{%- endblock -%}
