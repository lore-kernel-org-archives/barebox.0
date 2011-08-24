Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QwRMA-0004LL-BR
	for barebox@lists.infradead.org; Thu, 25 Aug 2011 04:15:55 +0000
Received: by bke17 with SMTP id 17so1765726bke.36
	for <barebox@lists.infradead.org>; Wed, 24 Aug 2011 21:15:50 -0700 (PDT)
Message-Id: <201108250415.p7P4FmPE009300@home.pavel.comp>
From: Paul Fertser <fercerpav@gmail.com>
Date: Wed, 24 Aug 2011 16:30:59 +0400
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
Subject: [PATCH] iomux-mx25: fix MDIO pin configuration
To: barebox@lists.infradead.org

According to the datasheet, PUE is not effective without PKE set.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 arch/arm/mach-imx/include/mach/iomux-mx25.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-mx25.h b/arch/arm/mach-imx/include/mach/iomux-mx25.h
index e636c7f..ae29323 100644
--- a/arch/arm/mach-imx/include/mach/iomux-mx25.h
+++ b/arch/arm/mach-imx/include/mach/iomux-mx25.h
@@ -425,7 +425,7 @@
 #define MX25_PAD_FEC_MDC__AUD4_TXD	IOMUX_PAD(0x3c0, 0x1c8, 0x02, 0x464, 1, NO_PAD_CTRL)
 #define MX25_PAD_FEC_MDC__GPIO_3_5	IOMUX_PAD(0x3c0, 0x1c8, 0x05, 0, 0, NO_PAD_CTRL)
 
-#define MX25_PAD_FEC_MDIO__FEC_MDIO	IOMUX_PAD(0x3c4, 0x1cc, 0x00, 0, 0, PAD_CTL_HYS | PAD_CTL_PUS_22K_UP | PAD_CTL_PUE)
+#define MX25_PAD_FEC_MDIO__FEC_MDIO	IOMUX_PAD(0x3c4, 0x1cc, 0x00, 0, 0, PAD_CTL_HYS | PAD_CTL_PUS_22K_UP | PAD_CTL_PUE | PAD_CTL_PKE)
 #define MX25_PAD_FEC_MDIO__AUD4_RXD	IOMUX_PAD(0x3c4, 0x1cc, 0x02, 0x460, 1, NO_PAD_CTRL)
 #define MX25_PAD_FEC_MDIO__GPIO_3_6	IOMUX_PAD(0x3c4, 0x1cc, 0x05, 0, 0, NO_PAD_CTRL)
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
