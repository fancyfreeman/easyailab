{%- extends 'base.tpl' -%}

{%- block head -%}
<script>
var url_prefix = "{{ url_prefix }}";
</script>

<script src="{{ base_url }}/formgrader/static/js/manage_assignments.js"></script>
{%- endblock -%}

{%- block title -%}
管理作业
{%- endblock -%}

{%- block sidebar -%}
<li role="presentation" class="active"><a href="{{ base_url }}/formgrader/manage_assignments">作业管理</a></li>
<li role="presentation"><a href="{{ base_url }}/formgrader/gradebook">手动评分</a></li>
<li role="presentation"><a href="{{ base_url }}/formgrader/manage_students">学生管理</a></li>
{%- endblock -%}

{%- block breadcrumbs -%}
<ol class="breadcrumb">
  <li class="active">作业列表</li>
</ol>
{%- endblock -%}

{%- block messages -%}
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
          帮助（点击展开）
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
        <ol>
          <li>创建作业，请点击添加新作业按钮。</li>
          <li>编辑作业，请点击作业名。</li>
          <li>编辑作业信息，请点击编辑按钮。</li>
          <li>生成下发作业，请点击生成按钮。</li>
          <li>预览下发作业，请点击预览按钮。</li>
          <li>下发作业，请点击下发按钮，再次点击按钮可以回收作业。</li>
          <li>回收作业，请点击回收按钮。</li>
          <li>要对学生提交的作业进行自动评分，请点击提交作业的数字。自动评分要在手动评分之前完成。</li>
        </ol>
      </div>
    </div>
  </div>
</div>
{% if windows %}
<div class="alert alert-warning" id="warning-windows">
Windows operating system detected. Please note that the "release" and "collect"
functionality will not be available.
</div>
{% elif exchange_missing %}
<div class="alert alert-warning" id="warning-exchange">
The exchange directory at <code>{{ exchange }}</code> does not exist and could
not be created. The "release" and "collect" functionality will not be available.
Please see the documentation on
<a href="http://nbgrader.readthedocs.io/en/stable/user_guide/managing_assignment_files.html#setting-up-the-exchange">Setting Up The Exchange</a>
for instructions.
</div>
{% elif not course_id %}
<div class="alert alert-warning" id="warning-course-id">
The course id has not been set in <code>nbgrader_config.py</code>. The "release"
and "collect" functionality will not be available. Please see the documentation on
<a href="http://nbgrader.readthedocs.io/en/stable/user_guide/managing_assignment_files.html#setting-up-the-exchange">Setting Up The Exchange</a>
for instructions.
</div>
{% endif %}
{%- endblock -%}

{%- block table_header -%}
<tr>
  <th>作业名称</th>
  <th class="text-center">到期日期</th>
  <th class="text-center">状态</th>
  <th class="text-center no-sort">编辑</th>
  <th class="text-center no-sort">生成</th>
  <th class="text-center no-sort">预览</th>
  <th class="text-center no-sort">下发</th>
  <th class="text-center no-sort">回收</th>
  <th class="text-center"># 作业提交数量</th>
</tr>
{%- endblock -%}

{%- block table_body -%}
<tr><td colspan="9">正在加载，请稍等...</td></tr>
{%- endblock -%}

{%- block table_footer -%}
<tr>
  <td colspan="9">
    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
    <a href="#" onClick="createAssignmentModal();">添加新作业...</a>
  </td>
</tr>
{%- endblock -%}
