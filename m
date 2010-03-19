Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4-g21.free.fr ([212.27.42.4])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NsdAp-0000vh-UV
	for barebox@lists.infradead.org; Fri, 19 Mar 2010 14:27:45 +0000
Received: from smtp4-g21.free.fr (localhost [127.0.0.1])
	by smtp4-g21.free.fr (Postfix) with ESMTP id D2B744C81B6
	for <barebox@lists.infradead.org>; Fri, 19 Mar 2010 15:27:35 +0100 (CET)
Received: from localhost.localdomain (pac33-2-82-240-38-71.fbx.proxad.net
	[82.240.38.71])
	by smtp4-g21.free.fr (Postfix) with ESMTP id A66FA4C8093
	for <barebox@lists.infradead.org>; Fri, 19 Mar 2010 15:27:32 +0100 (CET)
From: Eric Benard <eric@eukrea.com>
Date: Fri, 19 Mar 2010 15:27:30 +0100
Message-Id: <1269008851-16647-3-git-send-email-eric@eukrea.com>
In-Reply-To: <1269008851-16647-2-git-send-email-eric@eukrea.com>
References: <1269008851-16647-1-git-send-email-eric@eukrea.com>
	<1269008851-16647-2-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 3/4] i.MX25 : change IOMUX for LD16 and LD17
To: barebox@lists.infradead.org

This allows the iomux to reconfigure these pins which are opendrain at
power on and thus can't drive the LCD.

Signed-off-by: Eric Benard <eric@eukrea.com>
---
 arch/arm/mach-imx/include/mach/iomux-mx25.h |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx25.h b/arch/arm/mach-imx/include/mach/iomux-mx25.h
index 020b7f2..379bfcb 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx25.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx25.h
@@ -400,12 +400,12 @@
 #define MX25_PAD_GPIO_D__SS2                               IOMUX_PAD(0x3fc, 0x200, 7, 0x4c4, 1, NO_PAD_CTRL)
 #define MX25_PAD_GPIO_E__GPIO4                             IOMUX_PAD(0x400, 0x204, 0,     0, 0, NO_PAD_CTRL)
 #define MX25_PAD_GPIO_E__SCL                               IOMUX_PAD(0x400, 0x204, 1, 0x524, 2, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_E__LCDC_LD16                         IOMUX_PAD(0x400, 0x204, 2,     0, 0, NO_PAD_CTRL)
+#define MX25_PAD_GPIO_E__LCDC_LD16                         IOMUX_PAD(0x400, 0x204, 2,     0, 0, (PKE | PUE | PUS_100K_UP))
 #define MX25_PAD_GPIO_E__AUD7_TXD                          IOMUX_PAD(0x400, 0x204, 4,     0, 0, NO_PAD_CTRL)
 #define MX25_PAD_GPIO_E__RXD_MUX                           IOMUX_PAD(0x400, 0x204, 6, 0x570, 2, NO_PAD_CTRL)
 #define MX25_PAD_GPIO_E__CTI_TRIG_IN0_6                    IOMUX_PAD(0x400, 0x204, 7,     0, 0, NO_PAD_CTRL)
 #define MX25_PAD_GPIO_F__GPIO5                             IOMUX_PAD(0x404, 0x208, 0,     0, 0, NO_PAD_CTRL)
-#define MX25_PAD_GPIO_F__LCDC_LD17                         IOMUX_PAD(0x404, 0x208, 2,     0, 0, NO_PAD_CTRL)
+#define MX25_PAD_GPIO_F__LCDC_LD17                         IOMUX_PAD(0x404, 0x208, 2,     0, 0, (PKE | PUE | PUS_100K_UP))
 #define MX25_PAD_GPIO_F__EPITO                             IOMUX_PAD(0x404, 0x208, 3,     0, 0, NO_PAD_CTRL)
 #define MX25_PAD_GPIO_F__AUD7_TXC                          IOMUX_PAD(0x404, 0x208, 4,     0, 0, NO_PAD_CTRL)
 #define MX25_PAD_GPIO_F__TXD_MUX                           IOMUX_PAD(0x404, 0x208, 6,     0, 0, NO_PAD_CTRL)
-- 
1.6.3.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
