Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdpgX-0006G4-2L
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 19:51:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Jan 2011 20:51:34 +0100
Message-Id: <1295034699-18863-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
References: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] ARM tx28: Add mmu support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx28/tx28.c |   23 +++++++++++++++++++++++
 arch/arm/mach-stm/Kconfig        |    1 +
 2 files changed, 24 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 6f4ef4e..5692171 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -21,6 +21,7 @@
 #include <asm/io.h>
 #include <generated/mach-types.h>
 #include <mach/imx-regs.h>
+#include <asm/mmu.h>
 
 static struct memory_platform_data ram_pdata = {
 	.name = "ram0",
@@ -82,6 +83,28 @@ static const uint32_t tx28_pad_setup[] = {
 
 extern void base_board_init(void);
 
+#ifdef CONFIG_MMU
+static int tx28_mmu_init(void)
+{
+	mmu_init();
+
+	arm_create_section(0x40000000, 0x40000000, 128, PMD_SECT_DEF_CACHED);
+	arm_create_section(0x50000000, 0x40000000, 128, PMD_SECT_DEF_UNCACHED);
+
+	setup_dma_coherent(0x10000000);
+
+#if TEXT_BASE & (0x100000 - 1)
+#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
+#else
+	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
+#endif
+	mmu_enable();
+
+	return 0;
+}
+postcore_initcall(tx28_mmu_init);
+#endif
+
 static int tx28_devices_init(void)
 {
 	int i;
diff --git a/arch/arm/mach-stm/Kconfig b/arch/arm/mach-stm/Kconfig
index e47d9f1..402a9b7 100644
--- a/arch/arm/mach-stm/Kconfig
+++ b/arch/arm/mach-stm/Kconfig
@@ -55,6 +55,7 @@ choice
 
 config MACH_TX28
 	bool "KARO tx28"
+	select HAVE_MMU
 	help
 	  Say Y here if you are using the KARO TX28 CPU module.
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
