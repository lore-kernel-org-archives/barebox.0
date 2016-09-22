Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmz6Z-00012h-SD
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 08:11:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 10:11:11 +0200
Message-Id: <1474531872-15000-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1474531872-15000-1-git-send-email-s.hauer@pengutronix.de>
References: <1474531872-15000-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] nv: simplify nvvar_add
To: Barebox List <barebox@lists.infradead.org>

We do not need to have an extra code path when the variable already
exists, instead setting an existing variable can be done in the
variable creation code path aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 25 +++++++------------------
 1 file changed, 7 insertions(+), 18 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 007e955..8f37c99 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -231,7 +231,7 @@ static int nv_param_set(struct device_d *dev, struct param_d *p, const char *val
 
 static int __nvvar_add(const char *name, const char *value)
 {
-	struct param_d *p, *gp;
+	struct param_d *p;
 	int ret;
 	int devspace;
 	struct device_d *dev;
@@ -246,19 +246,12 @@ static int __nvvar_add(const char *name, const char *value)
 
 	devspace = ret;
 
-	gp = get_param_by_name(&nv_device, name);
-	if (gp) {
-		if (!devspace) {
-			ret = dev_set_param(&global_device, name, value);
-			if (ret)
-				return ret;
-		}
-
-		ret = dev_set_param(&nv_device, name, value);
-		if (ret)
-			return ret;
-
-		return 0;
+	/* Get param. If it doesn't exist yet, create it */
+	p = get_param_by_name(&nv_device, name);
+	if (!p) {
+		p = dev_add_param(&nv_device, name, nv_param_set, nv_param_get, 0);
+		if (IS_ERR(p))
+			return PTR_ERR(p);
 	}
 
 	if (!devspace) {
@@ -267,10 +260,6 @@ static int __nvvar_add(const char *name, const char *value)
 			return ret;
 	}
 
-	p = dev_add_param(&nv_device, name, nv_param_set, nv_param_get, 0);
-	if (IS_ERR(p))
-		return PTR_ERR(p);
-
 	if (!value) {
 		if (devspace) {
 			if (dev)
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
