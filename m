Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUwBX-00080k-FM
 for barebox@lists.infradead.org; Thu, 17 May 2012 08:35:49 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 17 May 2012 12:35:39 +0400
Message-Id: <1337243739-15980-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1337243739-15980-1-git-send-email-shc_work@mail.ru>
References: <1337243739-15980-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] i.MX51: Added helper for SDHC3 registration.
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/devices-imx51.h |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index 7ba49a4..5de0fa7 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -57,6 +57,11 @@ static inline struct device_d *imx51_add_mmc1(struct esdhc_platform_data *pdata)
 	return imx_add_esdhc((void *)MX51_MMC_SDHC2_BASE_ADDR, 1, pdata);
 }
 
+static inline struct device_d *imx51_add_mmc2(struct esdhc_platform_data *pdata)
+{
+	return imx_add_esdhc((void *)MX51_MMC_SDHC3_BASE_ADDR, 2, pdata);
+}
+
 static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pdata)
 {
 	struct resource res[] = {
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
