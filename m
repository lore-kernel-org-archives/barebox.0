Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSNrr-00039v-Ej
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 10:14:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Sep 2014 12:13:43 +0200
Message-Id: <1410516830-9403-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
References: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] resource: Let dev_get_mem_region_by_name return an
 error pointer
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 00b3046..e39a351 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -296,7 +296,7 @@ void *dev_get_mem_region_by_name(struct device_d *dev, const char *name)
 
 	res = dev_get_resource_by_name(dev, IORESOURCE_MEM, name);
 	if (IS_ERR(res))
-		return NULL;
+		return ERR_CAST(res);
 
 	return (void __force *)res->start;
 }
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
