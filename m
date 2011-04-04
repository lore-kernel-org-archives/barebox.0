Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6ko7-00038e-SY
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:31:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:31:02 +0200
Message-Id: <1301927465-23717-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301927465-23717-1-git-send-email-s.hauer@pengutronix.de>
References: <1301927465-23717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] ARM: factor out a start_linux function
To: barebox@lists.infradead.org

This can be shared between the different boot commands.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                |    5 +++++
 arch/arm/include/asm/armlinux.h |    4 ++++
 arch/arm/lib/Makefile           |    2 +-
 arch/arm/lib/armlinux.c         |   39 ++++++++++++++++++++-------------------
 4 files changed, 30 insertions(+), 20 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index aae0e99..4392620 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -21,6 +21,11 @@ config ARM
 config ARM_AMBA
 	bool
 
+config ARM_LINUX
+	bool
+	default y
+	depends on CMD_BOOTZ || CMD_BOOTU || CMD_BOOTM
+
 menu "System Type"
 
 choice
diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index 0d9d4e9..3cab209 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -30,4 +30,8 @@ static inline void armlinux_set_serial(u64 serial)
 }
 #endif
 
+struct image_data;
+
+void start_linux(void *adr, int swap, struct image_data *data);
+
 #endif /* __ARCH_ARMLINUX_H */
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 3a01083..899c391 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -1,4 +1,4 @@
-obj-y	+= armlinux.o
+obj-$(CONFIG_ARM_LINUX)	+= armlinux.o
 obj-y	+= div0.o
 obj-y	+= findbit.o
 obj-y	+= arm.o
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 9927b76..15b92f9 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -215,6 +215,23 @@ void armlinux_set_serial(u64 serial)
 	system_serial = serial;
 }
 
+void start_linux(void *adr, int swap, struct image_data *data)
+{
+	void (*kernel)(int zero, int arch, void *params) = adr;
+
+	setup_tags(data, swap);
+
+	shutdown_barebox();
+	if (swap) {
+		u32 reg;
+		__asm__ __volatile__("mrc p15, 0, %0, c1, c0" : "=r" (reg));
+		reg ^= CR_B; /* swap big-endian flag */
+		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
+	}
+
+	kernel(0, armlinux_architecture, armlinux_bootparams);
+}
+
 #ifdef CONFIG_CMD_BOOTM
 static int do_bootm_linux(struct image_data *data)
 {
@@ -241,8 +258,6 @@ static int do_bootm_linux(struct image_data *data)
 	debug("## Transferring control to Linux (at address 0x%p) ...\n",
 	       theKernel);
 
-	setup_tags(data, 0);
-
 	if (relocate_image(data->os, (void *)image_get_load(os_header)))
 		return -1;
 
@@ -253,8 +268,7 @@ static int do_bootm_linux(struct image_data *data)
 	/* we assume that the kernel is in place */
 	printf("\nStarting kernel %s...\n\n", data->initrd ? "with initrd " : "");
 
-	shutdown_barebox();
-	theKernel (0, armlinux_architecture, armlinux_bootparams);
+	start_linux(theKernel, 0, data);
 
 	return -1;
 }
@@ -370,17 +384,7 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 
 	printf("loaded zImage from %s with size %d\n", argv[1], end);
 
-	setup_tags(NULL, swap);
-
-	shutdown_barebox();
-	if (swap) {
-		u32 reg;
-		__asm__ __volatile__("mrc p15, 0, %0, c1, c0" : "=r" (reg));
-		reg ^= CR_B; /* swap big-endian flag */
-		__asm__ __volatile__("mcr p15, 0, %0, c1, c0" :: "r" (reg));
-	}
-
-	theKernel(0, armlinux_architecture, armlinux_bootparams);
+	start_linux(theKernel, swap, NULL);
 
 	return 0;
 
@@ -421,10 +425,7 @@ static int do_bootu(struct command *cmdtp, int argc, char *argv[])
 	if (!theKernel)
 		theKernel = (void *)simple_strtoul(argv[1], NULL, 0);
 
-	setup_tags(NULL, 0);
-
-	shutdown_barebox();
-	theKernel(0, armlinux_architecture, armlinux_bootparams);
+	start_linux(theKernel, 0, NULL);
 
 	return 1;
 }
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
