{%- extends 'manage_students_base.tpl' -%}

{%- block head -%}
<script>
var student_id = "{{ student_id }}";
</script>

<script src="{{ base_url }}/formgrader/static/js/manage_students_assignments.js"></script>
{%- endblock head -%}

{%- block breadcrumbs -%}
<ol class="breadcrumb">
  <li><a href="{{ base_url }}/formgrader/manage_students">Students</a></li>
  <li class="active">{{ student_id }}</li>
</ol>
{%- endblock -%}

{%- block table_header -%}
<tr>
  <th>作业 ID</th>
  <th class="text-center">总得分</th>
  <th class="text-center">Code Score</th>
  <th class="text-center">Written Score</th>
  <th class="text-center">需要手动评分吗？</th>
</tr>
{%- endblock -%}

{%- block table_body -%}
<tr><td colspan="5">正在加载，请稍等...</td></tr>
{%- endblock -%}
