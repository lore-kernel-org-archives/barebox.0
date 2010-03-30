Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZHf-0001S6-Qf
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:07:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:06:54 +0200
Message-Id: <1269947215-18214-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
References: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] pcm043: enable l2x0 cache
To: barebox@lists.infradead.org

Also, initialize the MMU in a postcore_initcall to enable
it earlier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |    3 ++-
 board/pcm043/pcm043.c     |   15 ++++++++-------
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index eeb392a..10561f0 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -228,7 +228,8 @@ config MACH_PCM043
         bool "phyCORE-i.MX35"
         select HAS_CFI
 	select HAVE_MMU
-        select MACH_HAS_LOWLEVEL_INIT
+	select MACH_HAS_LOWLEVEL_INIT
+	select ARCH_HAS_L2X0
         help
           Say Y here if you are using Phytec's phyCORE-i.MX35 (pcm043) equipped
           with a Freescale i.MX35 Processor
diff --git a/board/pcm043/pcm043.c b/board/pcm043/pcm043.c
index 7b0bad1..2ce7e3a 100644
--- a/board/pcm043/pcm043.c
+++ b/board/pcm043/pcm043.c
@@ -145,7 +145,7 @@ static struct device_d imx_ipu_fb_dev = {
 };
 
 #ifdef CONFIG_MMU
-static void pcm043_mmu_init(void)
+static int pcm043_mmu_init(void)
 {
 	mmu_init();
 
@@ -159,20 +159,21 @@ static void pcm043_mmu_init(void)
 #else
 	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
 #endif
+
 	mmu_enable();
+
+#ifdef CONFIG_CACHE_L2X0
+	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
+#endif
+	return 0;
 }
-#else
-static void pcm043_mmu_init(void)
-{
-}
+postcore_initcall(pcm043_mmu_init);
 #endif
 
 static int imx35_devices_init(void)
 {
 	uint32_t reg;
 
-	pcm043_mmu_init();
-
 	/* CS0: Nor Flash */
 	writel(0x0000cf03, CSCR_U(0));
 	writel(0x10000d03, CSCR_L(0));
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
