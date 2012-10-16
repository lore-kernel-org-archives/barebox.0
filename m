Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TO1gY-0001Vs-U1
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 07:35:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Oct 2012 09:35:28 +0200
Message-Id: <1350372928-27838-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] environment variables: use linux list
To: barebox@lists.infradead.org

This switches environment variables to use linux list. This is easier
to read. An additional plus is that the environment variables no longer
need an initcall, so malloc is the only requirement for them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/printenv.c   |   22 ++++-----
 common/complete.c     |   12 +++--
 common/env.c          |  121 ++++++++++++++++++++++++++-----------------------
 include/environment.h |   11 +++--
 4 files changed, 85 insertions(+), 81 deletions(-)

diff --git a/commands/printenv.c b/commands/printenv.c
index b18c7a1..10e882a 100644
--- a/commands/printenv.c
+++ b/commands/printenv.c
@@ -27,8 +27,8 @@
 
 static int do_printenv(int argc, char *argv[])
 {
-	struct variable_d *var;
-	struct env_context *c, *current_c;
+	struct variable_d *v;
+	struct env_context *c;
 
 	if (argc == 2) {
 		const char *val = getenv(argv[1]);
@@ -40,22 +40,16 @@ static int do_printenv(int argc, char *argv[])
 		return 1;
 	}
 
-	current_c = get_current_context();
-	var = current_c->local->next;
+	c = get_current_context();
 	printf("locals:\n");
-	while (var) {
-		printf("%s=%s\n", var_name(var), var_val(var));
-		var = var->next;
-	}
+	list_for_each_entry(v, &c->local, list)
+		printf("%s=%s\n", var_name(v), var_val(v));
 
 	printf("globals:\n");
 	c = get_current_context();
-	while(c) {
-		var = c->global->next;
-		while (var) {
-			printf("%s=%s\n", var_name(var), var_val(var));
-			var = var->next;
-		}
+	while (c) {
+		list_for_each_entry(v, &c->global, list)
+			printf("%s=%s\n", var_name(v), var_val(v));
 		c = c->parent;
 	}
 
diff --git a/common/complete.c b/common/complete.c
index 32d0d19..9206ef0 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -208,7 +208,7 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 {
 	struct device_d *dev;
 	struct variable_d *var;
-	struct env_context *c, *current_c;
+	struct env_context *c;
 	char *instr_param;
 	int len;
 	char end = '=';
@@ -225,21 +225,23 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
 	instr_param = strchr(instr, '.');
 	len = strlen(instr);
 
-	current_c = get_current_context();
-	for(var = current_c->local->next; var; var = var->next) {
+	c = get_current_context();
+	list_for_each_entry(var, &c->local, list) {
 		if (strncmp(instr, var_name(var), len))
 			continue;
 		string_list_add_asprintf(sl, "%s%s%c",
 			begin, var_name(var), end);
 	}
 
-	for (c = get_current_context(); c; c = c->parent) {
-		for (var = c->global->next; var; var = var->next) {
+	c = get_current_context();
+	while (c) {
+		list_for_each_entry(var, &c->global, list) {
 			if (strncmp(instr, var_name(var), len))
 				continue;
 			string_list_add_asprintf(sl, "%s%s%c",
 				begin, var_name(var), end);
 		}
+		c = c->parent;
 	}
 
 	if (instr_param) {
diff --git a/common/env.c b/common/env.c
index 1b2a7c2..33a871f 100644
--- a/common/env.c
+++ b/common/env.c
@@ -30,23 +30,36 @@
 #include <init.h>
 #include <environment.h>
 
-#define VARIABLE_D_SIZE(name, value) (sizeof(struct variable_d) + strlen(name) + strlen(value) + 2)
+static struct env_context root = {
+	.local = LIST_HEAD_INIT(root.local),
+	.global = LIST_HEAD_INIT(root.global),
+};
 
-static struct env_context *context;
+static struct env_context *context = &root;
 
 /**
  * Remove a list of environment variables
  * @param[in] v Variable anchor to remove
  */
-static void free_variables(struct variable_d *v)
+static void free_context(struct env_context *c)
 {
-	struct variable_d *next;
+	struct variable_d *v, *tmp;
 
-	while (v) {
-		next = v->next;
+	list_for_each_entry_safe(v, tmp, &c->local, list) {
+		free(v->name);
+		free(v->data);
+		list_del(&v->list);
 		free(v);
-		v = next;
 	}
+
+	list_for_each_entry_safe(v, tmp, &c->global, list) {
+		free(v->name);
+		free(v->data);
+		list_del(&v->list);
+		free(v);
+	}
+
+	free(c);
 }
 
 /** Read back current context */
@@ -58,19 +71,14 @@ EXPORT_SYMBOL(get_current_context);
 
 
 /**
- * FIXME
+ * Create a new variable context and put it on the stack
  */
 int env_push_context(void)
 {
 	struct env_context *c = xzalloc(sizeof(struct env_context));
 
-	c->local = xzalloc(VARIABLE_D_SIZE("", ""));
-	c->global = xzalloc(VARIABLE_D_SIZE("", ""));
-
-	if (!context) {
-		context = c;
-		return 0;
-	}
+	INIT_LIST_HEAD(&c->local);
+	INIT_LIST_HEAD(&c->global);
 
 	c->parent = context;
 	context = c;
@@ -78,10 +86,8 @@ int env_push_context(void)
 	return 0;
 }
 
-postcore_initcall(env_push_context);
-
 /**
- * FIXME
+ * free current variable context and restore the previous one
  */
 int env_pop_context(void)
 {
@@ -89,9 +95,7 @@ int env_pop_context(void)
 
 	if (context->parent) {
 		c = context->parent;
-		free_variables(context->local);
-		free_variables(context->global);
-		free(context);
+		free_context(context);
 		context = c;
 		return 0;
 	}
@@ -105,7 +109,7 @@ int env_pop_context(void)
  */
 char *var_val(struct variable_d *var)
 {
-	return &var->data[strlen(var->data) + 1];
+	return var->data;
 }
 
 /**
@@ -115,16 +119,18 @@ char *var_val(struct variable_d *var)
  */
 char *var_name(struct variable_d *var)
 {
-	return var->data;
+	return var->name;
 }
 
-static const char *getenv_raw(struct variable_d *var, const char *name)
+static const char *getenv_raw(struct list_head *l, const char *name)
 {
-	while (var) {
-		if (!strcmp(var_name(var), name))
-			return var_val(var);
-		var = var->next;
+	struct variable_d *v;
+
+	list_for_each_entry(v, l, list) {
+		if (!strcmp(var_name(v), name))
+			return var_val(v);
 	}
+
 	return NULL;
 }
 
@@ -150,12 +156,12 @@ const char *getenv (const char *name)
 
 	c = context;
 
-	val = getenv_raw(c->local, name);
+	val = getenv_raw(&c->local, name);
 	if (val)
 		return val;
 
 	while (c) {
-		val = getenv_raw(c->global, name);
+		val = getenv_raw(&c->global, name);
 		if (val)
 			return val;
 		c = c->parent;
@@ -164,34 +170,35 @@ const char *getenv (const char *name)
 }
 EXPORT_SYMBOL(getenv);
 
-static int setenv_raw(struct variable_d *var, const char *name, const char *value)
+static int setenv_raw(struct list_head *l, const char *name, const char *value)
 {
-	struct variable_d *newvar = NULL;
-
-	if (value) {
-		newvar = xzalloc(VARIABLE_D_SIZE(name, value));
-		strcpy(&newvar->data[0], name);
-		strcpy(&newvar->data[strlen(name) + 1], value);
-	}
+	struct variable_d *v;
 
-	while (var->next) {
-		if (!strcmp(var->next->data, name)) {
+	list_for_each_entry(v, l, list) {
+		if (!strcmp(v->name, name)) {
 			if (value) {
-				newvar->next = var->next->next;
-				free(var->next);
-				var->next = newvar;
+				free(v->data);
+				v->data = xstrdup(value);
+
 				return 0;
 			} else {
-				struct variable_d *tmp;
-				tmp = var->next;
-				var->next = var->next->next;
-				free(tmp);
+				list_del(&v->list);
+				free(v->name);
+				free(v->data);
+				free(v);
+
 				return 0;
 			}
 		}
-		var = var->next;
 	}
-	var->next = newvar;
+
+	if (value) {
+		v = xzalloc(sizeof(*v));
+		v->name = xstrdup(name);
+		v->data = xstrdup(value);
+		list_add_tail(&v->list, l);
+	}
+
 	return 0;
 }
 
@@ -199,8 +206,8 @@ int setenv(const char *_name, const char *value)
 {
 	char *name = strdup(_name);
 	char *par;
-	struct variable_d *var;
 	int ret = 0;
+	struct list_head *list;
 
 	if (value && !*value)
 		value = NULL;
@@ -224,12 +231,12 @@ int setenv(const char *_name, const char *value)
 		goto out;
 	}
 
-	if (getenv_raw(context->global, name))
-		var = context->global;
+	if (getenv_raw(&context->global, name))
+		list = &context->global;
 	else
-		var = context->local;
+		list = &context->local;
 
-	ret = setenv_raw(var, name, value);
+	ret = setenv_raw(list, name, value);
 out:
 	free(name);
 
@@ -239,11 +246,11 @@ EXPORT_SYMBOL(setenv);
 
 int export(const char *varname)
 {
-	const char *val = getenv_raw(context->local, varname);
+	const char *val = getenv_raw(&context->local, varname);
 
 	if (val) {
-		setenv_raw(context->global, varname, val);
-		setenv_raw(context->local, varname, NULL);
+		setenv_raw(&context->global, varname, val);
+		setenv_raw(&context->local, varname, NULL);
 	}
 	return 0;
 }
diff --git a/include/environment.h b/include/environment.h
index 95e75e7..4184977 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -26,14 +26,15 @@
  * Managment of a environment variable
  */
 struct variable_d {
-	struct variable_d *next;	/**< List management */
-	char data[0];			/**< variable length data */
+	struct list_head list;
+	char *name;
+	char *data;
 };
 
 struct env_context {
-	struct env_context *parent;	/**< FIXME */
-	struct variable_d *local;	/**< FIXME */
-	struct variable_d *global;	/**< FIXME */
+	struct env_context *parent;
+	struct list_head local;
+	struct list_head global;
 };
 
 struct env_context *get_current_context(void);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
