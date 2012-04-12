Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp12.mail.ru ([94.100.176.89])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIMiN-0002dz-EN
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 16:17:48 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 12 Apr 2012 20:20:22 +0400
Message-Id: <1334247624-24896-5-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 5/7] i.MX51: Add iomux definitions for I2C2
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/include/mach/iomux-mx51.h |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx51.h b/arch/arm/mach-imx/include/mach/iomux-mx51.h
index cf39ef5..cf80693 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx51.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx51.h
@@ -357,8 +357,13 @@
 #define MX51_PAD_SD2_DATA1__SD2_DATA1			IOMUX_PAD(0x7C8, 0x3C0, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL)
 #define MX51_PAD_SD2_DATA2__SD2_DATA2			IOMUX_PAD(0x7CC, 0x3C4, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL)
 #define MX51_PAD_SD2_DATA3__SD2_DATA3			IOMUX_PAD(0x7D0, 0x3C8, 0x10, 0x0, 0, MX51_SDHCI_PAD_CTRL)
+
 #define MX51_PAD_GPIO1_2__GPIO1_2			IOMUX_PAD(0x7D4, 0x3CC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_2__I2C2_SCL			IOMUX_PAD(0x7D4, 0x3CC, 0x12, 0x9b8, 3, NO_PAD_CTRL)
+
 #define MX51_PAD_GPIO1_3__GPIO1_3			IOMUX_PAD(0x7D8, 0x3D0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_3__I2C2_SDA			IOMUX_PAD(0x7D8, 0x3D0, 0x12, 0x9bc, 3, NO_PAD_CTRL)
+
 #define MX51_PAD_PMIC_INT_REQ__PMIC_INT_REQ		IOMUX_PAD(0x7FC, 0x3D4, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_GPIO1_4__GPIO1_4			IOMUX_PAD(0x804, 0x3D8, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_GPIO1_5__GPIO1_5			IOMUX_PAD(0x808, 0x3DC, 0, 0x0, 0, NO_PAD_CTRL)
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
