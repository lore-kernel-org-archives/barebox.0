Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4USB-00056w-Ll
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 13:29:33 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 15 Jun 2015 15:29:06 +0200
Message-Id: <1434374946-7212-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1434374946-7212-1-git-send-email-mkl@pengutronix.de>
References: <1434374946-7212-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 3/3] state: uint8: add range check for uint8
To: barebox@lists.infradead.org
Cc: Jan Luebbe <jluebbe@debian.org>

Bail out, if the user tries to set a value > 255.

Cc: Jan Luebbe <jluebbe@debian.org>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/common/state.c b/common/state.c
index e30f72660797..8fa027a847b9 100644
--- a/common/state.c
+++ b/common/state.c
@@ -113,6 +113,7 @@ static int state_set_dirty(struct param_d *p, void *priv)
 struct state_uint32 {
 	struct state_variable var;
 	struct param_d *param;
+	struct state *state;
 	uint32_t value;
 	uint32_t value_default;
 };
@@ -163,6 +164,17 @@ static int state_uint32_import(struct state_variable *sv,
 	return 0;
 }
 
+static int state_uint8_set(struct param_d *p, void *priv)
+{
+	struct state_uint32 *su32 = priv;
+	struct state *state = su32->state;
+
+	if (su32->value > 255)
+		return -ERANGE;
+
+	return state_set_dirty(p, state);
+}
+
 static struct state_variable *state_uint8_create(struct state *state,
 		const char *name, struct device_node *node)
 {
@@ -171,8 +183,8 @@ static struct state_variable *state_uint8_create(struct state *state,
 
 	su32 = xzalloc(sizeof(*su32));
 
-	param = dev_add_param_int(&state->dev, name, state_set_dirty,
-				  NULL, &su32->value, "%u", state);
+	param = dev_add_param_int(&state->dev, name, state_uint8_set,
+				  NULL, &su32->value, "%u", su32);
 	if (IS_ERR(param)) {
 		free(su32);
 		return ERR_CAST(param);
@@ -185,6 +197,7 @@ static struct state_variable *state_uint8_create(struct state *state,
 #else
 	su32->var.raw = &su32->value + 3;
 #endif
+	su32->state = state;
 
 	return &su32->var;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
