Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamE-00027E-Ah
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:12 +0200
Message-Id: <1350507817-7819-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/28] ARM at91rm9200: provide reset function for boards with
 lowlevel init
To: barebox@lists.infradead.org

Some Atmel boards use a reset() function provided by the architecture.
Add a reset function for the board instead and call the architecture
specific init function from there. While at it, test if we are running
from SDRAM and skip the init function in this case. This makes the configs
safe for both first and second stage.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91rm9200ek/Makefile         |    2 ++
 arch/arm/mach-at91/Kconfig                    |    3 +++
 arch/arm/mach-at91/Makefile                   |    7 ++-----
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c |    9 ++++++---
 arch/arm/mach-at91/include/mach/board.h       |    1 +
 5 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/at91rm9200ek/Makefile b/arch/arm/boards/at91rm9200ek/Makefile
index eb072c0..47ab803 100644
--- a/arch/arm/boards/at91rm9200ek/Makefile
+++ b/arch/arm/boards/at91rm9200ek/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index f962084..8ec033b 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -110,6 +110,9 @@ config SUPPORT_CALAO_MOB_TNY_MD2
 config HAVE_AT91SAM926X_LOWLEVEL_INIT
 	bool
 
+config HAVE_AT91RM9200_LOWLEVEL_INIT
+	bool
+
 # ----------------------------------------------------------
 
 if ARCH_AT91RM9200
diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index f9cb4f1..5ce433c 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,10 +1,7 @@
 obj-y += clock.o gpio.o
 
-lowlevel_init-$(CONFIG_ARCH_AT91RM9200) = at91rm9200_lowlevel_init.o
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
-
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += $(lowlevel_init-y)
-
+obj-$(CONFIG_HAVE_AT91RM9200_LOWLEVEL_INIT) += at91rm9200_lowlevel_init.o
+pbl-$(CONFIG_HAVE_AT91RM9200_LOWLEVEL_INIT) += at91rm9200_lowlevel_init.o
 obj-$(CONFIG_HAVE_AT91SAM926X_LOWLEVEL_INIT) += at91sam926x_lowlevel_init.o
 pbl-$(CONFIG_HAVE_AT91SAM926X_LOWLEVEL_INIT) += at91sam926x_lowlevel_init.o
 
diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
index 3ce3e67..a0a0d5e 100644
--- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
@@ -21,12 +21,15 @@ void static inline access_sdram(void)
 	writel(0x00000000, AT91_SDRAM_BASE);
 }
 
-void __naked __bare_init reset(void)
+void __naked __bare_init at91rm9200_entry(unsigned long sdram_base,
+		unsigned long sdram_size)
 {
-	u32 r;
+	u32 r, pc;
 	int i;
 
-	common_reset();
+	pc = get_pc();
+	if (pc < AT91_SDRAM_BASE || pc > AT91_SDRAM_BASE + 0x10000000)
+		goto end;
 
 	/*
 	 * PMC Check if the PLL is already initialized
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index eb71ed5..fc8947d 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -156,5 +156,6 @@ struct at91_spi_platform_data {
 void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata);
 
 void at91sam926x_entry(unsigned long sdram_base, unsigned long sdram_size);
+void at91rm9200_entry(unsigned long sdram_base, unsigned long sdram_size);
 
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
