{%- extends 'base.tpl' -%}

{%- block head -%}
<script>
var assignment_id = "{{ assignment_id }}";
</script>

<script src="{{ base_url }}/formgrader/static/js/manage_submissions.js"></script>
{%- endblock head -%}

{%- block title -%}
管理作业提交
{%- endblock -%}

{%- block sidebar -%}
<li role="presentation" class="active"><a href="{{ base_url }}/formgrader/manage_assignments">管理作业提交</a></li>
<li role="presentation"><a href="{{ base_url }}/formgrader/gradebook">手动评分</a></li>
<li role="presentation"><a href="{{ base_url }}/formgrader/manage_students">管理学生</a></li>
{%- endblock -%}

{%- block breadcrumbs -%}
<ol class="breadcrumb">
  <li><a href="{{ base_url }}/formgrader/manage_assignments">作业</a></li>
  <li class="active">{{ assignment_id }}</li>
</ol>
{%- endblock -%}

{%- block messages -%}
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
          帮助 (点击展开)
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
        <p>
          <b>提示:</b> 点击下方的自动评分图标，给每一位学生的作业进行评分，如果想对所有学生评分，请使用
          <a target="_blank" href="{{ base_url }}/terminals/1">命令行</a>:
        </p>
        <p>
        <pre>
cd "{{ course_dir }}"
nbgrader autograde "{{ assignment_id }}"</pre>
        </p>
      </div>
    </div>
  </div>
</div>
{%- endblock -%}

{%- block table_header -%}
<tr>
  <th>学生姓名</th>
  <th class="text-center">学生 ID</th>
  <th class="text-center">时间</th>
  <th class="text-center">状态</th>
  <th class="text-center">得分</th>
  <th class="text-center no-sort">自动评分</th>
</tr>
{%- endblock -%}

{%- block table_body -%}
<tr>
  <td>正在加载，请稍等...</td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
</tr>
{%- endblock -%}
