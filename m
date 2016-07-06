Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKi4f-0003gW-RF
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 08:20:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Jul 2016 10:20:25 +0200
Message-Id: <1467793227-29416-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1467793227-29416-1-git-send-email-s.hauer@pengutronix.de>
References: <1467793227-29416-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] nvvar: Simplify by using nv_set()
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 75e4d43..decd73c 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -124,19 +124,10 @@ int nvvar_add(const char *name, const char *value)
 	if (IS_ERR(p))
 		return PTR_ERR(p);
 
-	if (value) {
-		ret = dev_set_param(&global_device, name, value);
-		if (ret)
-			return ret;
-	} else {
+	if (!value)
 		value = dev_get_param(&global_device, name);
-		if (!value)
-			value = "";
-	}
-
-	p->value = xstrdup(value);
 
-	return nv_save(p->name, value);
+	return nv_set(&nv_device, p, value);
 }
 
 int nvvar_remove(const char *name)
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
