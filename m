Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp12.mail.ru ([94.100.181.93])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGUEL-0002Co-CJ
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 16:45:22 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 24 Jun 2016 19:44:55 +0300
Message-Id: <1466786695-17512-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: i.MX: Remove unised procedure imx25_setup_weimcs
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/imx25.c             | 8 --------
 arch/arm/mach-imx/include/mach/weim.h | 3 ---
 2 files changed, 11 deletions(-)

diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 3cfeebb..2534d75 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -23,14 +23,6 @@
 #define MX25_BOOTROM_HAB_MAGIC		0x3c95cac6
 #define MX25_DRYICE_GPR			0x3c
 
-void imx25_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
-		unsigned additional)
-{
-	writel(upper, MX25_WEIM_BASE_ADDR + (cs * 0x10) + 0x0);
-	writel(lower, MX25_WEIM_BASE_ADDR + (cs * 0x10) + 0x4);
-	writel(additional, MX25_WEIM_BASE_ADDR + (cs * 0x10) + 0x8);
-}
-
 /* IIM fuse definitions */
 #define IIM_BANK0_BASE	(MX25_IIM_BASE_ADDR + 0x800)
 #define IIM_BANK1_BASE	(MX25_IIM_BASE_ADDR + 0xc00)
diff --git a/arch/arm/mach-imx/include/mach/weim.h b/arch/arm/mach-imx/include/mach/weim.h
index 3fbbb6b..22d9c76 100644
--- a/arch/arm/mach-imx/include/mach/weim.h
+++ b/arch/arm/mach-imx/include/mach/weim.h
@@ -12,9 +12,6 @@ void imx31_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 void imx35_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 		unsigned additional);
 
-void imx25_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
-		unsigned additional);
-
 void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower);
 
 void imx21_setup_eimcs(size_t cs, unsigned upper, unsigned lower);
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
