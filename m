Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x235.google.com ([2a00:1450:400c:c09::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3K1H-0007G8-CA
 for barebox@lists.infradead.org; Mon, 30 Nov 2015 08:41:12 +0000
Received: by wmww144 with SMTP id w144so127253463wmw.0
 for <barebox@lists.infradead.org>; Mon, 30 Nov 2015 00:40:49 -0800 (PST)
From: yegorslists@googlemail.com
Date: Mon, 30 Nov 2015 09:40:04 +0100
Message-Id: <1448872804-18942-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH] driver: make all dev_request_mem_region_* routines MIPS
 compatible
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Use IOMEM() macro in all dev_request_mem_region_* routines to allow
the proper mapping on all platforms.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 drivers/base/driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 943deb4..a70fbb2 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -380,7 +380,7 @@ void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *n
 	if (IS_ERR(res))
 		return ERR_CAST(res);
 
-	return (void __force __iomem *)res->start;
+	return IOMEM(res->start);
 }
 EXPORT_SYMBOL(dev_request_mem_region_by_name);
 
@@ -396,7 +396,7 @@ void __iomem *dev_request_mem_region_err_null(struct device_d *dev, int num)
 	if (IS_ERR(res))
 		return NULL;
 
-	return (void __force __iomem *)res->start;
+	return IOMEM(res->start);
 }
 EXPORT_SYMBOL(dev_request_mem_region_err_null);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
