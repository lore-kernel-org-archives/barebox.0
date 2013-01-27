Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzPlU-000648-8l
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 10:47:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Jan 2013 11:46:49 +0100
Message-Id: <1359283623-1782-21-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
References: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/34] ARM AT91: switch at91rm9200 board to barebox_arm_entry
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91rm9200ek/Makefile         |    2 ++
 arch/arm/boards/at91rm9200ek/lowlevel.c       |   14 ++++++++++++++
 arch/arm/mach-at91/Kconfig                    |    1 +
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c |    5 +++--
 arch/arm/mach-at91/include/mach/board.h       |    3 +++
 5 files changed, 23 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/at91rm9200ek/lowlevel.c

diff --git a/arch/arm/boards/at91rm9200ek/Makefile b/arch/arm/boards/at91rm9200ek/Makefile
index eb072c0..47ab803 100644
--- a/arch/arm/boards/at91rm9200ek/Makefile
+++ b/arch/arm/boards/at91rm9200ek/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
new file mode 100644
index 0000000..a6c8f13
--- /dev/null
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -0,0 +1,14 @@
+#include <common.h>
+#include <init.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/hardware.h>
+#include <mach/board.h>
+
+void __naked __bare_init reset(void)
+{
+	common_reset();
+
+	at91rm9200_entry(SZ_64M, 0);
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 4f30650..ec9e88b 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -73,6 +73,7 @@ config SOC_AT91RM9200
 	select HAVE_AT91_DBGU0
 	select HAS_AT91_ETHER
 	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config SOC_AT91SAM9260
 	bool
diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
index 4add3d9..c4b6155 100644
--- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
@@ -23,7 +23,8 @@ void static inline access_sdram(void)
 	writel(0x00000000, AT91_SDRAM_BASE);
 }
 
-void __naked __bare_init reset(void)
+void __naked __bare_init at91rm9200_entry(unsigned long sdram_size,
+		unsigned long board_data)
 {
 	u32 r;
 	int i;
@@ -129,5 +130,5 @@ void __naked __bare_init reset(void)
 	set_cr(r);
 
 end:
-	board_init_lowlevel_return();
+	barebox_arm_entry(AT91_SDRAM_BASE, sdram_size, board_data);
 }
diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
index b0afcf9..eefe389 100644
--- a/arch/arm/mach-at91/include/mach/board.h
+++ b/arch/arm/mach-at91/include/mach/board.h
@@ -163,4 +163,7 @@ struct at91_spi_platform_data {
 };
 
 void at91_add_device_spi(int spi_id, struct at91_spi_platform_data *pdata);
+
+void at91rm9200_entry(unsigned long sdram_size, unsigned long board_data);
+
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
