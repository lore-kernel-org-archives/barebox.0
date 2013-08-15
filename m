Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9rzu-0000AE-6S
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 07:29:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Aug 2013 09:29:01 +0200
Message-Id: <1376551741-16438-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
References: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/8] export model as globalvar
To: barebox@lists.infradead.org

The model string is valuable information. Make it available to scripts
with a globalvar.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/misc.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index d5ddfc4..f73f4cf 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -139,13 +139,20 @@ static char *model;
  */
 void barebox_set_model(const char *__model)
 {
-	free(model);
-	model = xstrdup(__model);
+	if (IS_ENABLED(CONFIG_GLOBALVAR)) {
+		globalvar_add_simple("model", __model);
+	} else {
+		free(model);
+		model = xstrdup(__model);
+	}
 }
 EXPORT_SYMBOL(barebox_set_model);
 
 const char *barebox_get_model(void)
 {
+	if (IS_ENABLED(CONFIG_GLOBALVAR))
+		return getenv("global.model");
+
 	return model;
 }
 EXPORT_SYMBOL(barebox_get_model);
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
