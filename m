Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJh9z-0000Ou-24
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:50:58 +0100
Message-Id: <20181105155113.3434-8-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/22] ARM: at91: remove AT91_SDRAM_BASE
To: Barebox List <barebox@lists.infradead.org>

AT91_SDRAM_BASE is only used in board code which known the SDRAM base
address, so we do not need a common define.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91rm9200ek/lowlevel.c                  | 2 +-
 arch/arm/mach-at91/include/mach/at91sam926x_board_init.h | 2 +-
 arch/arm/mach-at91/include/mach/at91sam9g45.h            | 2 --
 arch/arm/mach-at91/include/mach/at91sam9n12.h            | 2 --
 arch/arm/mach-at91/include/mach/hardware.h               | 7 -------
 5 files changed, 2 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
index 905f5999d6..acff615779 100644
--- a/arch/arm/boards/at91rm9200ek/lowlevel.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -18,7 +18,7 @@
 
 void static inline access_sdram(void)
 {
-	writel(0x00000000, AT91_SDRAM_BASE);
+	writel(0x00000000, AT91_CHIPSELECT_1);
 }
 
 void __naked __bare_init barebox_arm_reset_vector(void)
diff --git a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
index 749baaa8a6..b93b37d8c7 100644
--- a/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
+++ b/arch/arm/mach-at91/include/mach/at91sam926x_board_init.h
@@ -51,7 +51,7 @@ struct at91sam926x_board_cfg {
 
 static void __always_inline access_sdram(void)
 {
-	writel(0x00000000, AT91_SDRAM_BASE);
+	writel(0x00000000, AT91_CHIPSELECT_1);
 }
 
 static void __always_inline pmc_check_mckrdy(void)
diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
index e9c7d7572a..7b19d92ad3 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
@@ -137,6 +137,4 @@
 #define AT91SAM9G45_EHCI_BASE	0x00800000	/* USB Host controller (EHCI) */
 #define AT91SAM9G45_VDEC_BASE	0x00900000	/* Video Decoder Controller */
 
-#define CONFIG_DRAM_BASE	AT91_CHIPSELECT_6
-
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/arch/arm/mach-at91/include/mach/at91sam9n12.h
index cb84e4cf76..0bb105b910 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9n12.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9n12.h
@@ -130,6 +130,4 @@
 #define AT91SAM9N12_SMD_BASE	0x00400000	/* SMD Controller */
 #define AT91SAM9N12_OHCI_BASE	0x00500000	/* USB Host controller (OHCI) */
 
-#define CONFIG_DRAM_BASE	AT91_CHIPSELECT_1
-
 #endif
diff --git a/arch/arm/mach-at91/include/mach/hardware.h b/arch/arm/mach-at91/include/mach/hardware.h
index bbaad714cf..e2e01343d4 100644
--- a/arch/arm/mach-at91/include/mach/hardware.h
+++ b/arch/arm/mach-at91/include/mach/hardware.h
@@ -66,13 +66,6 @@
 #define SAMA5_CHIPSELECT_2	0x50000000
 #define SAMA5_CHIPSELECT_3	0x60000000
 
-/* SDRAM */
-#ifdef CONFIG_DRAM_BASE
-#define AT91_SDRAM_BASE		CONFIG_DRAM_BASE
-#else
-#define AT91_SDRAM_BASE		AT91_CHIPSELECT_1
-#endif
-
 /* Clocks */
 #define AT91_SLOW_CLOCK		32768		/* slow clock */
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
