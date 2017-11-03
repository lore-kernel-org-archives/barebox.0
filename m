Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1eAZX1-0005iA-97
 for barebox@lists.infradead.org; Fri, 03 Nov 2017 10:49:12 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A97E4A00955
 for <barebox@lists.infradead.org>; Fri,  3 Nov 2017 11:50:26 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 3 Nov 2017 11:48:26 +0100
Message-Id: <1509706109-41478-4-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1509706109-41478-1-git-send-email-d.schultz@phytec.de>
References: <1509706109-41478-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v3 4/7] common: state: Add variable_type to state_variable
To: barebox@lists.infradead.org

Add a pointer in state_variable to the corresponding variable_type array
element.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
Changes:
	v2: New patch
	v3: struct variable_type is passed as parameter in the create callbacks.

 common/state/state.c           |  2 +-
 common/state/state.h           |  8 +++++---
 common/state/state_variables.c | 20 +++++++++++++++-----
 3 files changed, 21 insertions(+), 9 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 266d211..98a7db3 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -246,7 +246,7 @@ static int state_convert_node_variable(struct state *state,
 	}
 
 	if (conv == STATE_CONVERT_FROM_NODE_CREATE) {
-		sv = vtype->create(state, name, node);
+		sv = vtype->create(state, name, node, vtype);
 		if (IS_ERR(sv)) {
 			ret = PTR_ERR(sv);
 			dev_err(&state->dev, "failed to create %s: %s\n", name,
diff --git a/common/state/state.h b/common/state/state.h
index 81aaec2..7dd163c 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -123,15 +123,17 @@ struct variable_type {
 	int (*export) (struct state_variable *, struct device_node *,
 		       enum state_convert);
 	int (*import) (struct state_variable *, struct device_node *);
-	struct state_variable *(*create) (struct state * state,
-					  const char *name,
-					  struct device_node *);
+	struct state_variable *(*create) (struct state *,
+					  const char *,
+					  struct device_node *,
+					  const struct variable_type *);
 };
 
 /* instance of a single variable */
 struct state_variable {
 	struct state *state;
 	struct list_head list;
+	const struct variable_type *type;
 	const char *name;
 	unsigned int start;
 	unsigned int size;
diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 56bcd95..688467d 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -101,7 +101,8 @@ static int state_uint8_set(struct param_d *p, void *priv)
 
 static struct state_variable *state_uint8_create(struct state *state,
 						 const char *name,
-						 struct device_node *node)
+						 struct device_node *node,
+					      const struct variable_type *vtype)
 {
 	struct state_uint32 *su32;
 	struct param_d *param;
@@ -116,6 +117,7 @@ static struct state_variable *state_uint8_create(struct state *state,
 	}
 
 	su32->param = param;
+	su32->var.type = vtype;
 	su32->var.size = sizeof(uint8_t);
 #ifdef __LITTLE_ENDIAN
 	su32->var.raw = &su32->value;
@@ -129,7 +131,8 @@ static struct state_variable *state_uint8_create(struct state *state,
 
 static struct state_variable *state_uint32_create(struct state *state,
 						  const char *name,
-						  struct device_node *node)
+						  struct device_node *node,
+					      const struct variable_type *vtype)
 {
 	struct state_uint32 *su32;
 	struct param_d *param;
@@ -144,6 +147,7 @@ static struct state_variable *state_uint32_create(struct state *state,
 	}
 
 	su32->param = param;
+	su32->var.type = vtype;
 	su32->var.size = sizeof(uint32_t);
 	su32->var.raw = &su32->value;
 	su32->var.state = state;
@@ -218,7 +222,8 @@ static int state_enum32_import(struct state_variable *sv,
 
 static struct state_variable *state_enum32_create(struct state *state,
 						  const char *name,
-						  struct device_node *node)
+						  struct device_node *node,
+					      const struct variable_type *vtype)
 {
 	struct state_enum32 *enum32;
 	int ret, i, num_names;
@@ -234,6 +239,7 @@ static struct state_variable *state_enum32_create(struct state *state,
 
 	enum32->names = xzalloc(sizeof(char *) * num_names);
 	enum32->num_names = num_names;
+	enum32->var.type = vtype;
 	enum32->var.size = sizeof(uint32_t);
 	enum32->var.raw = &enum32->value;
 	enum32->var.state = state;
@@ -300,13 +306,15 @@ static int state_mac_import(struct state_variable *sv, struct device_node *node)
 
 static struct state_variable *state_mac_create(struct state *state,
 					       const char *name,
-					       struct device_node *node)
+					       struct device_node *node,
+					      const struct variable_type *vtype)
 {
 	struct state_mac *mac;
 	int ret;
 
 	mac = xzalloc(sizeof(*mac));
 
+	mac->var.type = vtype;
 	mac->var.size = ARRAY_SIZE(mac->value);
 	mac->var.raw = mac->value;
 	mac->var.state = state;
@@ -402,7 +410,8 @@ static int state_string_get(struct param_d *p, void *priv)
 
 static struct state_variable *state_string_create(struct state *state,
 						  const char *name,
-						  struct device_node *node)
+						  struct device_node *node,
+					      const struct variable_type *vtype)
 {
 	struct state_string *string;
 	uint32_t start_size[2];
@@ -420,6 +429,7 @@ static struct state_variable *state_string_create(struct state *state,
 		return ERR_PTR(-EILSEQ);
 
 	string = xzalloc(sizeof(*string) + start_size[1]);
+	string->var.type = vtype;
 	string->var.size = start_size[1];
 	string->var.raw = &string->raw;
 	string->var.state = state;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
