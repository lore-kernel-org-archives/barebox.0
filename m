Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUbw0-0006mJ-Lb
 for barebox@lists.infradead.org; Wed, 16 May 2012 10:58:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 May 2012 12:58:17 +0200
Message-Id: <1337165897-18045-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mfd mc13xxxx: Set mc_dev to NULL on failure
To: barebox@lists.infradead.org

The mc13xxx driver correctly bails out on failure, but leaves
mc_dev initialized, so a later mc13xxx_get won't fail but returns
an invalid pointer. Fix this. While at it, remove some superfluous
code from mc13xxx_get.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/mc13xxx.c |    4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index ad7cb7e..f9477a3 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -38,9 +38,6 @@ static struct mc13xxx *mc_dev;
 
 struct mc13xxx *mc13xxx_get(void)
 {
-	if (!mc_dev)
-		return NULL;
-
 	return mc_dev;
 }
 EXPORT_SYMBOL(mc13xxx_get);
@@ -308,6 +305,7 @@ static int mc_probe(struct device_d *dev, enum mc13xxx_mode mode)
 	rev = mc13xxx_query_revision(mc_dev);
 	if (rev < 0) {
 		free(mc_dev);
+		mc_dev = NULL;
 		return -EINVAL;
 	}
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
