Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjDFB-0002O1-QQ
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:38:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 19:38:22 +0200
Message-Id: <1340645910-15668-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
References: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] Do not use iomem space for dev_get_mem_region
To: barebox@lists.infradead.org

It is mostly used for mmapping sdram which is no iomem.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c |    6 +++---
 include/driver.h      |    2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 547d684..cb876fa 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -241,15 +241,15 @@ static struct resource *dev_get_resource(struct device_d *dev, int num)
 	return NULL;
 }
 
-void __iomem *dev_get_mem_region(struct device_d *dev, int num)
+void *dev_get_mem_region(struct device_d *dev, int num)
 {
 	struct resource *res;
 
 	res = dev_get_resource(dev, num);
 	if (!res)
-		return res;
+		return NULL;
 
-	return (void __force __iomem *)res->start;
+	return (void __force *)res->start;
 }
 EXPORT_SYMBOL(dev_get_mem_region);
 
diff --git a/include/driver.h b/include/driver.h
index 09dd1e4..470ae2d 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -183,7 +183,7 @@ static inline const char *dev_name(const struct device_d *dev)
 /*
  * get register base 'num' for a device
  */
-void __iomem *dev_get_mem_region(struct device_d *dev, int num);
+void *dev_get_mem_region(struct device_d *dev, int num);
 
 /*
  * exlusively request register base 'num' for a device
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
