from django.db import models


class User(models.Model):
    GENDER_CHOICES = (
        ('M', '男'),
        ('F', '女'),
    )
    ROLE_CHOICES = (
        ('0', '管理员'),
        ('1', '普通用户'),
    )
    STATUS_CHOICES = (
        ('0', '正常'),
        ('1', '封号'),
    )
    id = models.BigAutoField(primary_key=True)
    username = models.CharField(max_length=50, null=True)
    password = models.CharField(max_length=50, null=True)
    role = models.CharField(max_length=2, blank=True, null=True)
    status = models.CharField(max_length=1, choices=STATUS_CHOICES, default='0')
    nickname = models.CharField(blank=True, null=True, max_length=20)
    avatar = models.FileField(upload_to='avatar/', null=True)
    mobile = models.CharField(max_length=13, blank=True, null=True)
    email = models.CharField(max_length=50, blank=True, null=True)
    gender = models.CharField(max_length=1, choices=GENDER_CHOICES, blank=True, null=True)
    description = models.TextField(max_length=200, null=True)
    create_time = models.DateTimeField(auto_now_add=True, null=True)
    score = models.IntegerField(default=0, blank=True, null=True)
    push_email = models.CharField(max_length=40, blank=True, null=True)
    push_switch = models.BooleanField(blank=True, null=True, default=False)
    admin_token = models.CharField(max_length=32, blank=True, null=True)
    token = models.CharField(max_length=32, blank=True, null=True)

    class Meta:
        db_table = "b_user"


class Tag(models.Model):
    id = models.BigAutoField(primary_key=True)
    title = models.CharField(max_length=100, blank=True, null=True)
    create_time = models.DateTimeField(auto_now_add=True, null=True)

    class Meta:
        db_table = "b_tag"


class Classification(models.Model):
    list_display = ("title", "id")
    id = models.BigAutoField(primary_key=True)
    title = models.CharField(max_length=100, blank=True, null=True)
    create_time = models.DateTimeField(auto_now_add=True, null=True)

    def __str__(self):
        return self.title

    class Meta:
        db_table = "b_classification"


class Thing(models.Model):
    STATUS_CHOICES = (
        ('0', '空闲'),
        ('1', '使用中'),
    )
    id = models.BigAutoField(primary_key=True)
    # 所属场地
    classification = models.ForeignKey(Classification, on_delete=models.CASCADE, blank=True, null=True,
                                       related_name='classification_thing')
    title = models.CharField(max_length=30, blank=True, null=True)  # 姓名
    sex = models.CharField(max_length=30, blank=True, null=True)  # 性别
    age = models.CharField(max_length=30, blank=True, null=True)  # 年龄
    major = models.CharField(max_length=100, blank=True, null=True)  # 专长
    create_time = models.DateTimeField(auto_now_add=True, null=True)

    class Meta:
        db_table = "b_thing"


# 器材表
class Equipment(models.Model):
    id = models.BigAutoField(primary_key=True)
    title = models.CharField(max_length=30, blank=True, null=True)
    status = models.CharField(max_length=30, blank=True, null=True)  # 状态
    create_time = models.DateTimeField(auto_now_add=True, null=True)

    class Meta:
        db_table = "b_equipment"


# 会员表
class Member(models.Model):
    id = models.BigAutoField(primary_key=True)
    title = models.CharField(max_length=30, blank=True, null=True)  # 姓名
    age = models.CharField(max_length=30, blank=True, null=True)  # 年龄
    mobile = models.CharField(max_length=30, blank=True, null=True)  # 手机号
    score = models.CharField(max_length=30, blank=True, null=True)  # 积分
    create_time = models.DateTimeField(auto_now_add=True, null=True)

    class Meta:
        db_table = "b_member"


# 课程表
class Course(models.Model):
    id = models.BigAutoField(primary_key=True)
    title = models.CharField(max_length=30, blank=True, null=True)  # 课程名称
    course_type = models.CharField(max_length=30, blank=True, null=True)  # 课程类型
    desc = models.CharField(max_length=30, blank=True, null=True)  # 描述
    duration = models.CharField(max_length=30, blank=True, null=True)  # 课程时长
    price = models.CharField(max_length=30, blank=True, null=True)  # 价格
    create_time = models.DateTimeField(auto_now_add=True, null=True)

    class Meta:
        db_table = "b_course"


class LoginLog(models.Model):
    id = models.BigAutoField(primary_key=True)
    username = models.CharField(max_length=50, blank=True, null=True)
    ip = models.CharField(max_length=100, blank=True, null=True)
    ua = models.CharField(max_length=200, blank=True, null=True)
    log_time = models.DateTimeField(auto_now_add=True, null=True)

    class Meta:
        db_table = "b_login_log"


class OpLog(models.Model):
    id = models.BigAutoField(primary_key=True)
    re_ip = models.CharField(max_length=100, blank=True, null=True)
    re_time = models.DateTimeField(auto_now_add=True, null=True)
    re_url = models.CharField(max_length=200, blank=True, null=True)
    re_method = models.CharField(max_length=10, blank=True, null=True)
    re_content = models.CharField(max_length=200, blank=True, null=True)
    access_time = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        db_table = "b_op_log"


class ErrorLog(models.Model):
    id = models.BigAutoField(primary_key=True)
    ip = models.CharField(max_length=100, blank=True, null=True)
    url = models.CharField(max_length=200, blank=True, null=True)
    method = models.CharField(max_length=10, blank=True, null=True)
    content = models.CharField(max_length=200, blank=True, null=True)
    log_time = models.DateTimeField(auto_now_add=True, null=True)

    class Meta:
        db_table = "b_error_log"
