Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([2a01:198:210:70::2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YygYf-0007Me-8V
 for barebox@lists.infradead.org; Sat, 30 May 2015 13:12:14 +0000
Received: from polaris.fritz.box (f053152068.adsl.alicedsl.de [78.53.152.68])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id 3150FC189D
 for <barebox@lists.infradead.org>; Sat, 30 May 2015 15:11:52 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Sat, 30 May 2015 15:11:45 +0200
Message-Id: <1432991505-21204-3-git-send-email-jluebbe@debian.org>
In-Reply-To: <1432991505-21204-1-git-send-email-jluebbe@debian.org>
References: <1432991505-21204-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH 2/2] state: add support for uint8 variables
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 common/state.c | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/common/state.c b/common/state.c
index 0be0efe..7076f57 100644
--- a/common/state.c
+++ b/common/state.c
@@ -61,6 +61,7 @@ struct state_backend {
 enum state_variable_type {
 	STATE_TYPE_INVALID = 0,
 	STATE_TYPE_ENUM,
+	STATE_TYPE_U8,
 	STATE_TYPE_U32,
 	STATE_TYPE_MAC,
 };
@@ -162,6 +163,32 @@ static int state_uint32_import(struct state_variable *sv,
 	return 0;
 }
 
+static struct state_variable *state_uint8_create(struct state *state,
+		const char *name, struct device_node *node)
+{
+	struct state_uint32 *su32;
+	struct param_d *param;
+
+	su32 = xzalloc(sizeof(*su32));
+
+	param = dev_add_param_int(&state->dev, name, state_set_dirty,
+				  NULL, &su32->value, "%d", state);
+	if (IS_ERR(param)) {
+		free(su32);
+		return ERR_CAST(param);
+	}
+
+	su32->param = param;
+	su32->var.size = sizeof(uint8_t);
+#ifdef __LITTLE_ENDIAN
+	su32->var.raw = &su32->value;
+#else
+	su32->var.raw = &su32->value + 3;
+#endif
+
+	return &su32->var;
+}
+
 static struct state_variable *state_uint32_create(struct state *state,
 		const char *name, struct device_node *node)
 {
@@ -372,6 +399,12 @@ out:
 
 static struct variable_type types[] =  {
 	{
+		.type = STATE_TYPE_U8,
+		.type_name = "uint8",
+		.export = state_uint32_export,
+		.import = state_uint32_import,
+		.create = state_uint8_create,
+	}, {
 		.type = STATE_TYPE_U32,
 		.type_name = "uint32",
 		.export = state_uint32_export,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
