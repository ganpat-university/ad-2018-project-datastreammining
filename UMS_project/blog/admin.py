from django.contrib import admin
from .models import Post , Add_Student,Add_Faculty


class PostAdmin(admin.ModelAdmin):
    list_display = ('title', 'slug' , 'status', 'created_on')
    list_filter = ("status",)
    search_fields = ['title', 'content']
    prepopulated_fields = {'slug': ('title',)}


admin.site.register(Post, PostAdmin)
admin.site.register(Add_Student)
admin.site.register(Add_Faculty)