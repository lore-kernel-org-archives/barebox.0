Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmGSJ-0000Wh-QD
 for barebox@lists.infradead.org; Tue, 20 Sep 2016 08:31:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Sep 2016 10:30:40 +0200
Message-Id: <1474360242-3512-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] state: Add state to state_variable
To: Barebox List <barebox@lists.infradead.org>

A state variable should know which state it belongs to. Add field
for it to struct state_variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.h           |  3 +--
 common/state/state_variables.c | 11 +++++++----
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/common/state/state.h b/common/state/state.h
index 7b3e495..855ba9d 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -138,6 +138,7 @@ struct variable_type {
 
 /* instance of a single variable */
 struct state_variable {
+	struct state *state;
 	enum state_variable_type type;
 	struct list_head list;
 	const char *name;
@@ -152,7 +153,6 @@ struct state_variable {
 struct state_uint32 {
 	struct state_variable var;
 	struct param_d *param;
-	struct state *state;
 	uint32_t value;
 	uint32_t value_default;
 };
@@ -185,7 +185,6 @@ struct state_mac {
 struct state_string {
 	struct state_variable var;
 	struct param_d *param;
-	struct state *state;
 	char *value;
 	const char *value_default;
 	char raw[];
diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 0d2a626..4f82462 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -91,7 +91,7 @@ static int state_uint32_import(struct state_variable *sv,
 static int state_uint8_set(struct param_d *p, void *priv)
 {
 	struct state_uint32 *su32 = priv;
-	struct state *state = su32->state;
+	struct state *state = su32->var.state;
 
 	if (su32->value > 255)
 		return -ERANGE;
@@ -122,7 +122,7 @@ static struct state_variable *state_uint8_create(struct state *state,
 #else
 	su32->var.raw = &su32->value + 3;
 #endif
-	su32->state = state;
+	su32->var.state = state;
 
 	return &su32->var;
 }
@@ -146,6 +146,7 @@ static struct state_variable *state_uint32_create(struct state *state,
 	su32->param = param;
 	su32->var.size = sizeof(uint32_t);
 	su32->var.raw = &su32->value;
+	su32->var.state = state;
 
 	return &su32->var;
 }
@@ -235,6 +236,7 @@ static struct state_variable *state_enum32_create(struct state *state,
 	enum32->num_names = num_names;
 	enum32->var.size = sizeof(uint32_t);
 	enum32->var.raw = &enum32->value;
+	enum32->var.state = state;
 
 	for (i = 0; i < num_names; i++) {
 		const char *name;
@@ -307,6 +309,7 @@ static struct state_variable *state_mac_create(struct state *state,
 
 	mac->var.size = ARRAY_SIZE(mac->value);
 	mac->var.raw = mac->value;
+	mac->var.state = state;
 
 	mac->param = dev_add_param_mac(&state->dev, name, state_set_dirty,
 				       NULL, mac->value, state);
@@ -373,7 +376,7 @@ static int state_string_import(struct state_variable *sv,
 static int state_string_set(struct param_d *p, void *priv)
 {
 	struct state_string *string = priv;
-	struct state *state = string->state;
+	struct state *state = string->var.state;
 	int ret;
 
 	ret = state_string_copy_to_raw(string, string->value);
@@ -418,7 +421,7 @@ static struct state_variable *state_string_create(struct state *state,
 	string = xzalloc(sizeof(*string) + start_size[1]);
 	string->var.size = start_size[1];
 	string->var.raw = &string->raw;
-	string->state = state;
+	string->var.state = state;
 
 	string->param = dev_add_param_string(&state->dev, name,
 					     state_string_set, state_string_get,
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
