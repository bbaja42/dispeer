<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN">
<html lang="en">
<head>
    <title>{% block title %}{% endblock title %}</title>
</head>
<body>
{% include 'nav.tpl' %}
{% block content %}
{% endblock content %}
</body>
</html>