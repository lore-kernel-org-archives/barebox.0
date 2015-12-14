Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8Rbv-00049O-39
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 11:48:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Dec 2015 12:47:48 +0100
Message-Id: <1450093668-17961-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] state: implement signed int support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../devicetree/bindings/barebox/barebox,state.rst  |  5 +++--
 common/state.c                                     | 25 +++++++++++++++++++---
 2 files changed, 25 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index ef66029..d1b0627 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -55,8 +55,8 @@ Required properties:
   ``#size-cells = <1>``. Defines the ``offset`` and ``size`` of the
   variable in the ``raw`` backend. ``size`` must fit the node
   ``type``. Variables are not allowed to overlap.
-* ``type``: Should be ``uint8``, ``uint32``, ``enum32``, ``mac`` or
-  ``string`` for the type of the variable
+* ``type``: Should be ``uint8``, ``uint32``, ``int32``. ``enum32``, ``mac``
+  or ``string`` for the type of the variable
 * ``names``: For ``enum32`` values only, this specifies the values
   possible for ``enum32``.
 
@@ -93,6 +93,7 @@ Variable Types
 
 * ``uint8``:
 * ``uint32``:
+* ``int32``:
 * ``enum32``: The ``default`` value is an integer representing an
   offset into the names array.
 * ``mac``:
diff --git a/common/state.c b/common/state.c
index ec72dbd..d1fa47f 100644
--- a/common/state.c
+++ b/common/state.c
@@ -66,6 +66,7 @@ enum state_variable_type {
 	STATE_TYPE_ENUM,
 	STATE_TYPE_U8,
 	STATE_TYPE_U32,
+	STATE_TYPE_S32,
 	STATE_TYPE_MAC,
 	STATE_TYPE_STRING,
 };
@@ -209,8 +210,8 @@ static struct state_variable *state_uint8_create(struct state *state,
 	return &su32->var;
 }
 
-static struct state_variable *state_uint32_create(struct state *state,
-		const char *name, struct device_node *node)
+static struct state_variable *state_int32_create(struct state *state,
+		const char *name, struct device_node *node, const char *format)
 {
 	struct state_uint32 *su32;
 	struct param_d *param;
@@ -218,7 +219,7 @@ static struct state_variable *state_uint32_create(struct state *state,
 	su32 = xzalloc(sizeof(*su32));
 
 	param = dev_add_param_int(&state->dev, name, state_set_dirty,
-				  NULL, &su32->value, "%u", state);
+				  NULL, &su32->value, format, state);
 	if (IS_ERR(param)) {
 		free(su32);
 		return ERR_CAST(param);
@@ -231,6 +232,18 @@ static struct state_variable *state_uint32_create(struct state *state,
 	return &su32->var;
 }
 
+static struct state_variable *state_uint32_create(struct state *state,
+		const char *name, struct device_node *node)
+{
+	return state_int32_create(state, name, node, "%u");
+}
+
+static struct state_variable *state_sint32_create(struct state *state,
+		const char *name, struct device_node *node)
+{
+	return state_int32_create(state, name, node, "%d");
+}
+
 /*
  *  enum32
  */
@@ -605,6 +618,12 @@ static struct variable_type types[] =  {
 		.export = state_string_export,
 		.import = state_string_import,
 		.create = state_string_create,
+	}, {
+		.type = STATE_TYPE_S32,
+		.type_name = "int32",
+		.export = state_uint32_export,
+		.import = state_uint32_import,
+		.create = state_sint32_create,
 	},
 };
 
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
