Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKi4f-0003ga-RI
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 08:20:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Jul 2016 10:20:26 +0200
Message-Id: <1467793227-29416-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] nvvar: Simplify by using dev_set_param()
To: Barebox List <barebox@lists.infradead.org>

The combination of get_param_by_name()/param->set() can be replaced
by using dev_set_param()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index decd73c..6687b03 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -70,17 +70,12 @@ static int nv_save(const char *name, const char *val)
 
 static int nv_set(struct device_d *dev, struct param_d *p, const char *val)
 {
-	struct param_d *gp;
 	int ret;
 
 	if (!val)
 		val = "";
 
-	gp = get_param_by_name(&global_device, p->name);
-	if (!gp)
-		return -EINVAL;
-
-	ret = gp->set(&global_device, gp, val);
+	ret = dev_set_param(&global_device, p->name, val);
 	if (ret)
 		return ret;
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
