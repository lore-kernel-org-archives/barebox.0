Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward14.mail.yandex.net ([95.108.130.92])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YCSuq-00011S-L7
 for barebox@lists.infradead.org; Sat, 17 Jan 2015 12:55:50 +0000
Received: from smtp14.mail.yandex.net (smtp14.mail.yandex.net [95.108.131.192])
 by forward14.mail.yandex.net (Yandex) with ESMTP id DC5FA19812D7
 for <barebox@lists.infradead.org>; Sat, 17 Jan 2015 15:55:13 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Sat, 17 Jan 2015 15:54:35 +0300
Message-Id: <1421499275-3280-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH] MMC: IMX: Reset MMC_BOOT register after controller reset.
To: barebox@lists.infradead.org

This helps with EMMC detection when booting from EMMC directly.
Taken from u-boot.

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/mci/imx-esdhc.c | 3 +++
 drivers/mci/sdhci.h     | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 239cd37..23bdc1f 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -471,6 +471,9 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	esdhc_write32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			SYSCTL_HCKEN | SYSCTL_IPGEN);
 
+	/* RSTA doesn't reset MMC_BOOT register, so manually reset it */
+	esdhc_write32(regs + SDHCI_MMC_BOOT, 0);
+
 	/* Set the initial clock speed */
 	set_sysctl(mci, 400000);
 
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index b678184..82a692e 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -18,6 +18,7 @@
 #define SDHCI_SIGNAL_ENABLE					0x38
 #define SDHCI_ACMD12_ERR__HOST_CONTROL2				0x3C
 #define SDHCI_CAPABILITIES					0x40
+#define SDHCI_MMC_BOOT						0xC4
 
 #define COMMAND_CMD(x)		((x & 0x3f) << 24)
 #define COMMAND_CMDTYP_NORMAL	0x0
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
