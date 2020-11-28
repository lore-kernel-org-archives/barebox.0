Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kj7wY-0002QZ-Gu
 for barebox@lists.infradead.org; Sat, 28 Nov 2020 21:39:49 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 28 Nov 2020 22:39:33 +0100
Message-Id: <20201128213934.681065-10-ahmad@a3f.at>
In-Reply-To: <20201128213934.681065-1-ahmad@a3f.at>
References: <20201128213934.681065-1-ahmad@a3f.at>
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
Subject: [PATCH 10/11] ARM: rpi: add new rpi boot target
To: barebox@lists.infradead.org
Cc: Tomaz Solc <tomaz.solc@tablix.org>

For drop-in placement of barebox into the boot chain, it's useful to
have a target to boot the kernel like the VideoCore would have booted
the kernel if barebox hadn't been started instead.

This commit is based on the information here:
https://www.tablix.org/~avian/blog/archives/2019/03/booting_raspbian_from_barebox/

Cc: Tomaz Solc <tomaz.solc@tablix.org>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/raspberry-pi/Makefile             |  1 +
 .../boards/raspberry-pi/defaultenv-rpi/boot/rpi   |  5 +++++
 arch/arm/boards/raspberry-pi/rpi-common.c         | 15 +++++++++++++++
 3 files changed, 21 insertions(+)
 create mode 100755 arch/arm/boards/raspberry-pi/defaultenv-rpi/boot/rpi

diff --git a/arch/arm/boards/raspberry-pi/Makefile b/arch/arm/boards/raspberry-pi/Makefile
index a3e93eb73a32..ddcf015f0848 100644
--- a/arch/arm/boards/raspberry-pi/Makefile
+++ b/arch/arm/boards/raspberry-pi/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_MACH_RPI_COMMON) += rpi-common.o
 lwl-y += lowlevel.o
+bbenv-y += defaultenv-rpi
diff --git a/arch/arm/boards/raspberry-pi/defaultenv-rpi/boot/rpi b/arch/arm/boards/raspberry-pi/defaultenv-rpi/boot/rpi
new file mode 100755
index 000000000000..bf81aeb87bb0
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/defaultenv-rpi/boot/rpi
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+global linux.bootargs.dyn.vc="${global.vc.bootargs}"
+global.bootm.image="/boot/${global.vc.kernel}"
+global.bootm.oftree=/vc.dtb
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 30bfa995b3fa..e326732b3aa4 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -20,6 +20,7 @@
 #include <generated/mach-types.h>
 #include <linux/sizes.h>
 #include <globalvar.h>
+#include <asm/system_info.h>
 
 #include <mach/core.h>
 #include <mach/mbox.h>
@@ -414,6 +415,8 @@ static int rpi_env_init(void)
 		return 0;
 	}
 
+	defaultenv_append_directory(defaultenv_rpi);
+
 	default_environment_path_set("/boot/barebox.env");
 
 	return 0;
@@ -450,6 +453,18 @@ static int rpi_vc_fdt_bootargs(void *fdt)
 
 	globalvar_add_simple("vc.bootargs", cmdline);
 
+	switch(cpu_architecture()) {
+	case CPU_ARCH_ARMv6:
+		globalvar_add_simple("vc.kernel", "kernel.img");
+		break;
+	case CPU_ARCH_ARMv7:
+		globalvar_add_simple("vc.kernel", "kernel7.img");
+		break;
+	case CPU_ARCH_ARMv8:
+		globalvar_add_simple("vc.kernel", "kernel7l.img");
+		break;
+	}
+
 out:
 	if (root)
 		of_delete_node(root);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
