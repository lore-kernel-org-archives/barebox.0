Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo1.mail-out.ovh.net ([178.32.97.206]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXaO7-0000ol-1A
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 15:23:28 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id EC247FFB032
 for <barebox@lists.infradead.org>; Mon,  5 Dec 2011 16:23:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  5 Dec 2011 16:19:00 +0100
Message-Id: <1323098343-31863-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111205151439.GC9192@game.jcrosoft.org>
References: <20111205151439.GC9192@game.jcrosoft.org>
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
Subject: [PATCH 1/4] mx53: fix devid for imx53_add_mmc1/2
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-imx/include/mach/devices-imx53.h |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 70e7671..bc32048 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -43,12 +43,12 @@ static inline struct device_d *imx53_add_mmc0(void *pdata)
 
 static inline struct device_d *imx53_add_mmc1(void *pdata)
 {
-	return imx_add_esdhc((void *)MX53_ESDHC2_BASE_ADDR, 0, pdata);
+	return imx_add_esdhc((void *)MX53_ESDHC2_BASE_ADDR, 1, pdata);
 }
 
 static inline struct device_d *imx53_add_mmc2(void *pdata)
 {
-	return imx_add_esdhc((void *)MX53_ESDHC3_BASE_ADDR, 0, pdata);
+	return imx_add_esdhc((void *)MX53_ESDHC3_BASE_ADDR, 2, pdata);
 }
 
 static inline struct device_d *imx53_add_nand(struct imx_nand_platform_data *pdata)
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
