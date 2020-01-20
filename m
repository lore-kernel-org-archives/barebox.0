Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSsp-00069Q-4B
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 08:58:15 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 20 Jan 2020 09:56:46 +0100
Message-Id: <20200120085647.19784-3-r.czerwinski@pengutronix.de>
In-Reply-To: <20200120085647.19784-1-r.czerwinski@pengutronix.de>
References: <20200120085647.19784-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 3/5] ARM: add optee early loading function
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add a OP-TEE early loading function which expects a pointer to a valid
tee binary and the device tree. OP-TEE will then be started and barebox
will continue to run in normal mode.

The function start_optee_early should be used in a boards lowlevel.c
file. Ensure that barebox has been relocated and a proper c environment
has been setup beforehand. Depending on the OP-TEE configuration, the
fdt will be modified. If the internal barebox device tree is passed,
OP-TEE will overwrite barebox PBL memory during this modification. Copy
the fdt to a save memory location beforehand to avoid a corruption of
barebox PBL memory.

This also moves the OP-TEE Kconfig symbols into a separate menu.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/lib32/Makefile             |  3 ++
 arch/arm/lib32/optee-early.c        | 38 ++++++++++++++++++++
 common/Kconfig                      | 54 ++++++++++++++++++-----------
 common/Makefile                     |  1 +
 include/asm-generic/memory_layout.h |  4 +--
 include/tee/optee.h                 |  6 ++++
 6 files changed, 83 insertions(+), 23 deletions(-)
 create mode 100644 arch/arm/lib32/optee-early.c

diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index cd43147e66..18f6973fcc 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -28,3 +28,6 @@ extra-y += barebox.lds
 pbl-y	+= lib1funcs.o
 pbl-y	+= ashldi3.o
 pbl-y	+= div0.o
+
+pbl-$(CONFIG_PBL_OPTEE)	+= setjmp.o
+pbl-$(CONFIG_PBL_OPTEE)	+= optee-early.o
diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-early.c
new file mode 100644
index 0000000000..197325b8a0
--- /dev/null
+++ b/arch/arm/lib32/optee-early.c
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * optee-early.c - start OP-TEE during PBL
+ *
+ * Copyright (c) 2019 Rouven Czerwinski <r.czerwinski@pengutronix.de>, Pengutronix
+ *
+ */
+#include <asm/cache.h>
+#include <asm/setjmp.h>
+#include <tee/optee.h>
+#include <debug_ll.h>
+
+static jmp_buf tee_buf;
+
+int start_optee_early(void *fdt, void *tee)
+{
+	void (*tee_start)(void *r0, void *r1, void *r2);
+	struct optee_header *hdr;
+	int ret;
+
+	hdr = tee;
+	ret = optee_verify_header(hdr);
+	if (ret < 0)
+		return ret;
+
+	memcpy((void *)hdr->init_load_addr_lo, tee + sizeof(*hdr), hdr->init_size);
+	tee_start = (void *) hdr->init_load_addr_lo;
+
+	/* We use setjmp/longjmp here because OP-TEE clobbers most registers */
+	ret = setjmp(tee_buf);
+	if (ret == 0) {
+		sync_caches_for_execution();
+		tee_start(0, 0, fdt);
+		longjmp(tee_buf, 1);
+	}
+
+	return 0;
+}
diff --git a/common/Kconfig b/common/Kconfig
index 60237d3056..25587d1927 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -643,27 +643,6 @@ config BOOTM_FORCE_SIGNED_IMAGES
 	  are refused to boot. Effectively this means only FIT images can be booted
 	  since they are the only supported image type that support signing.
 
-config BOOTM_OPTEE
-	bool
-	prompt "support booting OP-TEE"
-	depends on BOOTM && ARM
-	help
-	  OP-TEE is a trusted execution environment (TEE). With this option
-	  enabled barebox supports starting optee_os as part of the bootm command.
-	  Instead of the kernel bootm starts the optee_os binary which then starts
-	  the kernel in nonsecure mode. Pass the optee_os binary with the -t option
-	  or in the global.bootm.tee variable.
-
-config BOOTM_OPTEE_SIZE
-	hex
-	default 0x02000000
-	prompt "OP-TEE Memory Size"
-	depends on BOOTM_OPTEE
-	help
-	  Size to reserve in main memory for OP-TEE.
-	  Can be smaller than the actual size used by OP-TEE, this is used to prevent
-	  barebox from allocating memory in this area.
-
 config BLSPEC
 	depends on FLEXIBLE_BOOTARGS
 	depends on !SHELL_NONE
@@ -1000,6 +979,39 @@ config MACHINE_ID
 	  Note: if no hashable information is available no machine id will be passed
 	  to the kernel.
 
+menu "OP-TEE loading"
+
+config OPTEE_SIZE
+	hex
+	default 0x02000000
+	prompt "OP-TEE Memory Size"
+	depends on BOOTM_OPTEE || PBL_OPTEE
+	help
+	  Size to reserve in main memory for OP-TEE.
+	  Can be smaller than the actual size used by OP-TEE, this is used to prevent
+	  barebox from allocating memory in this area.
+
+config BOOTM_OPTEE
+	bool
+	prompt "support booting OP-TEE"
+	depends on BOOTM && ARM
+	help
+	  OP-TEE is a trusted execution environment (TEE). With this option
+	  enabled barebox supports starting optee_os as part of the bootm command.
+	  Instead of the kernel bootm starts the optee_os binary which then starts
+	  the kernel in nonsecure mode. Pass the optee_os binary with the -t option
+	  or in the global.bootm.tee variable.
+
+config PBL_OPTEE
+	bool "Enable OP-TEE early start"
+	depends on ARM
+	depends on !THUMB2_BAREBOX
+	help
+	  Allows starting OP-TEE during lowlevel initialization of the PBL.
+	  Requires explicit support in the boards lowlevel file.
+
+endmenu
+
 endmenu
 
 menu "Debugging"
diff --git a/common/Makefile b/common/Makefile
index fbdd74a9fd..8312e88572 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -66,6 +66,7 @@ obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
 obj-$(CONFIG_BOOT)		+= boot.o
 obj-$(CONFIG_SERIAL_DEV_BUS)	+= serdev.o
 obj-$(CONFIG_USBGADGET_START)	+= usbgadget.o
+pbl-$(CONFIG_PBL_OPTEE)		+= optee.o
 obj-$(CONFIG_BOOTM_OPTEE)	+= optee.o
 
 ifdef CONFIG_PASSWORD
diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
index 3f69664aa0..0d7ce3fe02 100644
--- a/include/asm-generic/memory_layout.h
+++ b/include/asm-generic/memory_layout.h
@@ -11,8 +11,8 @@
 #define MALLOC_BASE CONFIG_MALLOC_BASE
 #endif
 
-#ifdef CONFIG_BOOTM_OPTEE_SIZE
-#define OPTEE_SIZE CONFIG_BOOTM_OPTEE_SIZE
+#ifdef CONFIG_OPTEE_SIZE
+#define OPTEE_SIZE CONFIG_OPTEE_SIZE
 #else
 #define OPTEE_SIZE 0
 #endif
diff --git a/include/tee/optee.h b/include/tee/optee.h
index 9fb27fcec0..fa124236ba 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -32,4 +32,10 @@ struct optee_header {
 
 int optee_verify_header (struct optee_header *hdr);
 
+#ifdef __PBL__
+
+int start_optee_early(void* fdt, void* tee);
+
+#endif /* __PBL__ */
+
 #endif /* _OPTEE_H */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
