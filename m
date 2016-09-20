Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmGSN-0000Y4-Eg
 for barebox@lists.infradead.org; Tue, 20 Sep 2016 08:31:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Sep 2016 10:30:42 +0200
Message-Id: <1474360242-3512-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1474360242-3512-1-git-send-email-s.hauer@pengutronix.de>
References: <1474360242-3512-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] state: consistently pass one type as private data to
 dev_add_param_*
To: Barebox List <barebox@lists.infradead.org>

The different dev_add_param_* calls all use different types as private
data. This is unnecessary, use struct state_variable * for all of them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state_variables.c | 29 +++++++++++++++--------------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 6f2b1ae..efc2456 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -36,9 +36,9 @@
  */
 static int state_set_dirty(struct param_d *p, void *priv)
 {
-	struct state *state = priv;
+	struct state_variable *sv = priv;
 
-	state->dirty = 1;
+	sv->state->dirty = 1;
 
 	return 0;
 }
@@ -90,13 +90,13 @@ static int state_uint32_import(struct state_variable *sv,
 
 static int state_uint8_set(struct param_d *p, void *priv)
 {
-	struct state_uint32 *su32 = priv;
-	struct state *state = su32->var.state;
+	struct state_variable *sv = priv;
+	struct state_uint32 *su32 = to_state_uint32(sv);
 
 	if (su32->value > 255)
 		return -ERANGE;
 
-	return state_set_dirty(p, state);
+	return state_set_dirty(p, sv);
 }
 
 static struct state_variable *state_uint8_create(struct state *state,
@@ -109,7 +109,7 @@ static struct state_variable *state_uint8_create(struct state *state,
 	su32 = xzalloc(sizeof(*su32));
 
 	param = dev_add_param_int(&state->dev, name, state_uint8_set,
-				  NULL, &su32->value, "%u", su32);
+				  NULL, &su32->value, "%u", &su32->var);
 	if (IS_ERR(param)) {
 		free(su32);
 		return ERR_CAST(param);
@@ -137,7 +137,7 @@ static struct state_variable *state_uint32_create(struct state *state,
 	su32 = xzalloc(sizeof(*su32));
 
 	param = dev_add_param_int(&state->dev, name, state_set_dirty,
-				  NULL, &su32->value, "%u", state);
+				  NULL, &su32->value, "%u", &su32->var);
 	if (IS_ERR(param)) {
 		free(su32);
 		return ERR_CAST(param);
@@ -249,7 +249,7 @@ static struct state_variable *state_enum32_create(struct state *state,
 
 	enum32->param = dev_add_param_enum(&state->dev, name, state_set_dirty,
 					   NULL, &enum32->value, enum32->names,
-					   num_names, state);
+					   num_names, &enum32->var);
 	if (IS_ERR(enum32->param)) {
 		ret = PTR_ERR(enum32->param);
 		goto out;
@@ -312,7 +312,7 @@ static struct state_variable *state_mac_create(struct state *state,
 	mac->var.state = state;
 
 	mac->param = dev_add_param_mac(&state->dev, name, state_set_dirty,
-				       NULL, mac->value, state);
+				       NULL, mac->value, &mac->var);
 	if (IS_ERR(mac->param)) {
 		ret = PTR_ERR(mac->param);
 		goto out;
@@ -375,20 +375,21 @@ static int state_string_import(struct state_variable *sv,
 
 static int state_string_set(struct param_d *p, void *priv)
 {
-	struct state_string *string = priv;
-	struct state *state = string->var.state;
+	struct state_variable *sv = priv;
+	struct state_string *string = to_state_string(sv);
 	int ret;
 
 	ret = state_string_copy_to_raw(string, string->value);
 	if (ret)
 		return ret;
 
-	return state_set_dirty(p, state);
+	return state_set_dirty(p, sv->state);
 }
 
 static int state_string_get(struct param_d *p, void *priv)
 {
-	struct state_string *string = priv;
+	struct state_variable *sv = priv;
+	struct state_string *string = to_state_string(sv);
 
 	free(string->value);
 	if (string->raw[0])
@@ -425,7 +426,7 @@ static struct state_variable *state_string_create(struct state *state,
 
 	string->param = dev_add_param_string(&state->dev, name,
 					     state_string_set, state_string_get,
-					     &string->value, string);
+					     &string->value, &string->var);
 	if (IS_ERR(string->param)) {
 		ret = PTR_ERR(string->param);
 		goto out;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
