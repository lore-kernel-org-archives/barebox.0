Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cvI8K-0002n3-2l
 for barebox@lists.infradead.org; Tue, 04 Apr 2017 06:40:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  4 Apr 2017 08:39:41 +0200
Message-Id: <20170404063941.8835-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] state: remove unused variable type
To: Barebox List <barebox@lists.infradead.org>

enum state_variable_type is never used. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.h           | 10 ----------
 common/state/state_variables.c |  5 -----
 2 files changed, 15 deletions(-)

diff --git a/common/state/state.h b/common/state/state.h
index ead8cc88c1..8e4cbfc215 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -114,20 +114,10 @@ enum state_convert {
 	STATE_CONVERT_FIXUP,
 };
 
-enum state_variable_type {
-	STATE_TYPE_INVALID = 0,
-	STATE_TYPE_ENUM,
-	STATE_TYPE_U8,
-	STATE_TYPE_U32,
-	STATE_TYPE_MAC,
-	STATE_TYPE_STRING,
-};
-
 struct state_variable;
 
 /* A variable type (uint32, enum32) */
 struct variable_type {
-	enum state_variable_type type;
 	const char *type_name;
 	struct list_head list;
 	int (*export) (struct state_variable *, struct device_node *,
diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index fd072a0c27..5b8e6284d9 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -439,31 +439,26 @@ static struct state_variable *state_string_create(struct state *state,
 
 static struct variable_type types[] = {
 	{
-		.type = STATE_TYPE_U8,
 		.type_name = "uint8",
 		.export = state_uint32_export,
 		.import = state_uint32_import,
 		.create = state_uint8_create,
 	}, {
-		.type = STATE_TYPE_U32,
 		.type_name = "uint32",
 		.export = state_uint32_export,
 		.import = state_uint32_import,
 		.create = state_uint32_create,
 	}, {
-		.type = STATE_TYPE_ENUM,
 		.type_name = "enum32",
 		.export = state_enum32_export,
 		.import = state_enum32_import,
 		.create = state_enum32_create,
 	}, {
-		.type = STATE_TYPE_MAC,
 		.type_name = "mac",
 		.export = state_mac_export,
 		.import = state_mac_import,
 		.create = state_mac_create,
 	}, {
-		.type = STATE_TYPE_STRING,
 		.type_name = "string",
 		.export = state_string_export,
 		.import = state_string_import,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
