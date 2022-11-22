from django.db.models.expressions import RawSQL
from django.contrib.auth.models import User

# secure example
User.objects.annotate(val=RawSQL('secure', []))

# insecure example
User.objects.annotate(val=RawSQL('%secure' % 'nos', []))

