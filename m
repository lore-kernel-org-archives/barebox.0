Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp12.mail.ru ([94.100.176.89])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIMiN-0002e0-Ei
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 16:17:48 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 12 Apr 2012 20:20:23 +0400
Message-Id: <1334247624-24896-6-git-send-email-shc_work@mail.ru>
In-Reply-To: <1334247624-24896-1-git-send-email-shc_work@mail.ru>
References: <1334247624-24896-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 6/7] i.MX51: Add PAD_CTL_HYS bit to SD_CLK pads
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/iomux-mx51.h |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx51.h b/arch/arm/mach-imx/include/mach/iomux-mx51.h
index cf80693..ccc4c21 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx51.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx51.h
@@ -344,7 +344,7 @@
 #define MX51_PAD_DISP2_DAT15__DISP2_DAT15		IOMUX_PAD(0x798, 0x390, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_DISP2_DAT15__FEC_TDATA0		IOMUX_PAD(0x798, 0x390, 2, 0x0, 0, MX51_FEC_PAD_CTRL)
 #define MX51_PAD_SD1_CMD__SD1_CMD			IOMUX_PAD(0x79C, 0x394, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL)
-#define MX51_PAD_SD1_CLK__SD1_CLK			IOMUX_PAD(0x7A0, 0x398, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL)
+#define MX51_PAD_SD1_CLK__SD1_CLK			IOMUX_PAD(0x7A0, 0x398, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL | PAD_CTL_HYS)
 #define MX51_PAD_SD1_DATA0__SD1_DATA0			IOMUX_PAD(0x7A4, 0x39C, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL)
 #define MX51_PAD_SD1_DATA1__SD1_DATA1			IOMUX_PAD(0x7A8, 0x3A0, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL)
 #define MX51_PAD_SD1_DATA2__SD1_DATA2			IOMUX_PAD(0x7AC, 0x3A4, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL)
@@ -352,7 +352,7 @@
 #define MX51_PAD_GPIO1_0__GPIO1_0			IOMUX_PAD(0x7B4, 0x3AC, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_GPIO1_1__GPIO1_1			IOMUX_PAD(0x7B8, 0x3B0, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_SD2_CMD__SD2_CMD			IOMUX_PAD(0x7BC, 0x3B4, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL)
-#define MX51_PAD_SD2_CLK__SD2_CLK			IOMUX_PAD(0x7C0, 0x3B8, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL)
+#define MX51_PAD_SD2_CLK__SD2_CLK			IOMUX_PAD(0x7C0, 0x3B8, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL | PAD_CTL_HYS)
 #define MX51_PAD_SD2_DATA0__SD2_DATA0			IOMUX_PAD(0x7C4, 0x3BC, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL)
 #define MX51_PAD_SD2_DATA1__SD2_DATA1			IOMUX_PAD(0x7C8, 0x3C0, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL)
 #define MX51_PAD_SD2_DATA2__SD2_DATA2			IOMUX_PAD(0x7CC, 0x3C4, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
