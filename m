Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5KFG-0007g5-6C
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 20:47:40 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 17 Jun 2015 22:47:03 +0200
Message-Id: <1434574023-20556-5-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1434574023-20556-1-git-send-email-mkl@pengutronix.de>
References: <1434574023-20556-1-git-send-email-mkl@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 4/4] state: add support for fixed length strings
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 .../devicetree/bindings/barebox/barebox,state.rst  |  19 ++-
 common/state.c                                     | 149 +++++++++++++++++++++
 2 files changed, 164 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index 3d664f1f0208..6ded161e618d 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -40,8 +40,8 @@ variable. The node name may end with ``@<ADDRESS>``, but the suffix is
 sripped from the variable name.
 
 State variables have a type. Currenty supported types are: ``uint8``,
-``uint32``, ``enum32`` and ``mac`` address. Fixed length strings are
-planned but not implemented. Variable length strings are not planned.
+``uint32``, ``enum32``, ``mac`` address or ``string``. Variable length
+strings are not planned.
 
 Required properties:
 
@@ -49,8 +49,8 @@ Required properties:
   ``#size-cells = <1>``. Defines the ``offset`` and ``size`` of the
   variable in the ``raw`` backend. ``size`` must fit the node
   ``type``. Variables are not allowed to overlap.
-* ``type``: Should be ``uint8``, ``uint32``, ``enum32`` or ``mac`` for
-  the type of the variable
+* ``type``: Should be ``uint8``, ``uint32``, ``enum32``, ``mac`` or
+  ``string`` for the type of the variable
 * ``names``: For ``enum32`` values only, this specifies the values
   possible for ``enum32``.
 
@@ -82,6 +82,17 @@ Example::
   	};
   };
 
+Variable Types
+--------------
+
+* ``uint8``:
+* ``uint32``:
+* ``enum32``: The ``default`` value it is an integer representing an
+  offset into the names array.
+* ``mac``:
+* ``string``: The length of the string excluding the trailing 0 is
+  determined by the length given in the ``reg`` property.
+
 Backends
 --------
 
diff --git a/common/state.c b/common/state.c
index 8a7a7680bca5..377507bb482a 100644
--- a/common/state.c
+++ b/common/state.c
@@ -64,6 +64,7 @@ enum state_variable_type {
 	STATE_TYPE_U8,
 	STATE_TYPE_U32,
 	STATE_TYPE_MAC,
+	STATE_TYPE_STRING,
 };
 
 /* instance of a single variable */
@@ -410,6 +411,148 @@ out:
 	return ERR_PTR(ret);
 }
 
+/*
+ *  string
+ */
+struct state_string {
+	struct state_variable var;
+	struct param_d *param;
+	struct state *state;
+	char *value;
+	const char *value_default;
+	char raw[];
+};
+
+static inline struct state_string *to_state_string(struct state_variable *s)
+{
+	return container_of(s, struct state_string, var);
+}
+
+static int state_string_export(struct state_variable *var,
+		struct device_node *node, enum state_convert conv)
+{
+	struct state_string *string = to_state_string(var);
+	int ret = 0;
+
+	if (string->value_default || conv == STATE_CONVERT_FIXUP) {
+		ret = of_set_property(node, "default", string->value_default,
+				      strlen(string->value_default) + 1, 1);
+
+		if (ret || conv == STATE_CONVERT_FIXUP)
+			return ret;
+	}
+
+	if (string->value)
+		ret = of_set_property(node, "value", string->value,
+				      strlen(string->value) + 1, 1);
+
+	return ret;
+}
+
+static int state_string_copy_to_raw(struct state_string *string,
+				    const char *src)
+{
+	size_t len;
+
+	len = strlen(src);
+	if (len > string->var.size)
+		return -EILSEQ;
+
+	/* copy string and clear remaining contents of buffer */
+	memcpy(string->raw, src, len);
+	memset(string->raw + len, 0x0, string->var.size - len);
+
+	return 0;
+}
+
+static int state_string_import(struct state_variable *sv,
+			       struct device_node *node)
+{
+	struct state_string *string = to_state_string(sv);
+	const char *value = NULL;
+	size_t len;
+	int ret;
+
+	of_property_read_string(node, "default", &string->value_default);
+	if (string->value_default) {
+		len = strlen(string->value_default);
+		if (len > string->var.size)
+			return -EILSEQ;
+	}
+
+	ret = of_property_read_string(node, "value", &value);
+	if (ret)
+		value = string->value_default;
+
+	if (value)
+		return state_string_copy_to_raw(string, value);
+
+	return 0;
+}
+
+static int state_string_set(struct param_d *p, void *priv)
+{
+	struct state_string *string = priv;
+	struct state *state = string->state;
+	int ret;
+
+	ret = state_string_copy_to_raw(string, string->value);
+	if (ret)
+		return ret;
+
+	return state_set_dirty(p, state);
+}
+
+static int state_string_get(struct param_d *p, void *priv)
+{
+	struct state_string *string = priv;
+
+	free(string->value);
+	if (string->raw[0])
+		string->value = xstrndup(string->raw, string->var.size);
+	else
+		string->value = xstrdup("");
+
+	return 0;
+}
+
+static struct state_variable *state_string_create(struct state *state,
+		const char *name, struct device_node *node)
+{
+	struct state_string *string;
+	u32 start_size[2];
+	int ret;
+
+	ret = of_property_read_u32_array(node, "reg", start_size,
+					 ARRAY_SIZE(start_size));
+	if (ret) {
+		dev_err(&state->dev,
+			"%s: reg property not found\n", name);
+		return ERR_PTR(ret);
+	}
+
+	/* limit to arbitrary len of 4k */
+	if (start_size[1] > 4096)
+		return ERR_PTR(-EILSEQ);
+
+	string = xzalloc(sizeof(*string) + start_size[1]);
+	string->var.size = start_size[1];
+	string->var.raw = &string->raw;
+	string->state = state;
+
+	string->param = dev_add_param_string(&state->dev, name, state_string_set,
+					     state_string_get, &string->value, string);
+	if (IS_ERR(string->param)) {
+		ret = PTR_ERR(string->param);
+		goto out;
+	}
+
+	return &string->var;
+out:
+	free(string);
+	return ERR_PTR(ret);
+}
+
 static struct variable_type types[] =  {
 	{
 		.type = STATE_TYPE_U8,
@@ -435,6 +578,12 @@ static struct variable_type types[] =  {
 		.export = state_mac_export,
 		.import = state_mac_import,
 		.create = state_mac_create,
+	}, {
+		.type = STATE_TYPE_STRING,
+		.type_name = "string",
+		.export = state_string_export,
+		.import = state_string_import,
+		.create = state_string_create,
 	},
 };
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
