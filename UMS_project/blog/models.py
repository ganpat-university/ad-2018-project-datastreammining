from django.db import models
from django.contrib.auth.models import User


STATUS = (
    (0,"Draft"),
    (1,"Publish")
)

class Post(models.Model):
    title = models.CharField(max_length=200, unique=True)
    slug = models.SlugField(max_length=200, unique=True)
    author = models.ForeignKey(User, on_delete= models.CASCADE,related_name='blog_posts')
    updated_on = models.DateTimeField(auto_now= True)
    content = models.TextField()
    created_on = models.DateTimeField(auto_now_add=True)
  #  document = models.FileField(upload_to='../../documents/')
    status = models.IntegerField(choices=STATUS, default=0)

    class Meta:
        ordering = ['-created_on']

    def __str__(self):
        return self.title

Branch=(('cba','CBA'),('bda','BDA'),('cs','CS'))
class Add_Student(models.Model):
        Enrollment_no=models.IntegerField('Enrollment No:')
        student_name=models.CharField('Student Name',max_length=40)
        address = models.CharField('Address:',max_length=300)
        phone = models.CharField('Contact Phone', max_length=10, blank=True)
        email_address = models.EmailField('Email Address')
        branch=models.CharField('Branch',choices=Branch,max_length=10)

        
        def __str__(self):
            return self.student_name

        class Meta:
            ordering = ['student_name']

f_type=(('principal','principal'),('HOD','HOD'),('professor','professor'),('Assistant Professor',('Assistant Professor')))
class Add_Faculty(models.Model):
    Faculty_no = models.IntegerField('Faculty No:')
    Faculty_name = models.CharField('Faculty Name', max_length=40)
    phone = models.CharField('Contact No.', max_length=10, blank=True)
    email_address = models.EmailField('Email Address')
    F_type = models.CharField('Faculty Type', choices=f_type, max_length=30)

    def __str__(self):
        return self.Faculty_name

    class Meta:
        ordering = ['Faculty_name']