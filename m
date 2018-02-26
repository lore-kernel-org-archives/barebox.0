Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eqDdV-0006wv-FQ
 for barebox@lists.infradead.org; Mon, 26 Feb 2018 07:55:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Feb 2018 08:55:36 +0100
Message-Id: <20180226075536.21083-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] Use globalvar_add_simple_string for model and hostname
To: Barebox List <barebox@lists.infradead.org>

Simplify the code by using globalvar_add_simple_string(), no functional
change intended.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/misc.c | 26 ++++++++------------------
 1 file changed, 8 insertions(+), 18 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index 0888f1f4f6..665f72be7e 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -141,20 +141,15 @@ static char *model;
  */
 void barebox_set_model(const char *__model)
 {
-	if (IS_ENABLED(CONFIG_GLOBALVAR)) {
-		globalvar_add_simple("model", __model);
-	} else {
-		free(model);
-		model = xstrdup(__model);
-	}
+	globalvar_add_simple_string("model", &model);
+
+	free(model);
+	model = xstrdup(__model);
 }
 EXPORT_SYMBOL(barebox_set_model);
 
 const char *barebox_get_model(void)
 {
-	if (IS_ENABLED(CONFIG_GLOBALVAR))
-		return getenv("global.model");
-
 	return model;
 }
 EXPORT_SYMBOL(barebox_get_model);
@@ -170,19 +165,14 @@ static char *hostname;
  */
 void barebox_set_hostname(const char *__hostname)
 {
-	if (IS_ENABLED(CONFIG_GLOBALVAR)) {
-		globalvar_add_simple("hostname", __hostname);
-	} else {
-		free(hostname);
-		hostname = xstrdup(__hostname);
-	}
+	globalvar_add_simple_string("hostname", &hostname);
+
+	free(hostname);
+	hostname = xstrdup(__hostname);
 }
 
 const char *barebox_get_hostname(void)
 {
-	if (IS_ENABLED(CONFIG_GLOBALVAR))
-		return getenv("global.hostname");
-
 	return hostname;
 }
 EXPORT_SYMBOL(barebox_get_hostname);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
