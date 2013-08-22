Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCbdH-0001vt-QO
 for barebox@lists.infradead.org; Thu, 22 Aug 2013 20:37:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Aug 2013 22:36:52 +0200
Message-Id: <1377203819-23074-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377203819-23074-1-git-send-email-s.hauer@pengutronix.de>
References: <1377203819-23074-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] ARM: am33xx: Add SRAM0 address/size defines
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/am33xx-silicon.h | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
index bd55da4..22ef3ca 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
@@ -115,11 +115,10 @@
 #define AM33XX_VTP1_CTRL_REG		0x48140E10
 
 /* OCMC */
-#define AM33XX_SRAM0_SIZE			(0x1B400) /* 109 KB */
+#define AM33XX_SRAM0_START			0x402f0400	
+#define AM33XX_SRAM0_SIZE			(SZ_64K - SZ_1K)
 #define AM33XX_SRAM_GPMC_STACK_SIZE		(0x40)
 
-#define AM33XX_LOW_LEVEL_SRAM_STACK		(AM33XX_SRAM0_START + AM33XX_SRAM0_SIZE - 4)
-
 /* DDR offsets */
 #define	AM33XX_DDR_PHY_BASE_ADDR		0x44E12000
 #define	AM33XX_DDR_IO_CTRL			0x44E10E04
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
