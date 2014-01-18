Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Xaf-0006Ih-NX
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 15:13:43 +0000
Received: by mail-la0-f46.google.com with SMTP id b8so4465231lan.33
 for <barebox@lists.infradead.org>; Sat, 18 Jan 2014 07:13:19 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 18 Jan 2014 19:12:56 +0400
Message-Id: <1390057983-17921-7-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 06/13] MIPS: mach-loongson: add loongson-ls1b board
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Makefile                      |  1 +
 arch/mips/boards/loongson-ls1b/Makefile |  1 +
 arch/mips/boards/loongson-ls1b/ram.c    | 12 ++++++++++++
 arch/mips/mach-loongson/Kconfig         | 12 ++++++++++++
 4 files changed, 26 insertions(+)
 create mode 100644 arch/mips/boards/loongson-ls1b/Makefile
 create mode 100644 arch/mips/boards/loongson-ls1b/ram.c

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index b4c0e7a..8986fcf 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -82,6 +82,7 @@ machine-$(CONFIG_MACH_MIPS_BCM47XX)	:= bcm47xx
 board-$(CONFIG_BOARD_DLINK_DIR320)	:= dlink-dir-320
 
 machine-$(CONFIG_MACH_MIPS_LOONGSON)	:= loongson
+board-$(CONFIG_BOARD_LOONGSON_TECH_LS1B)	:= loongson-ls1b
 
 machine-$(CONFIG_MACH_MIPS_XBURST)	:= xburst
 board-$(CONFIG_BOARD_RZX50)	:= rzx50
diff --git a/arch/mips/boards/loongson-ls1b/Makefile b/arch/mips/boards/loongson-ls1b/Makefile
new file mode 100644
index 0000000..0899b66
--- /dev/null
+++ b/arch/mips/boards/loongson-ls1b/Makefile
@@ -0,0 +1 @@
+obj-y += ram.o
diff --git a/arch/mips/boards/loongson-ls1b/ram.c b/arch/mips/boards/loongson-ls1b/ram.c
new file mode 100644
index 0000000..9e655ab
--- /dev/null
+++ b/arch/mips/boards/loongson-ls1b/ram.c
@@ -0,0 +1,12 @@
+#include <common.h>
+#include <init.h>
+#include <sizes.h>
+#include <asm/memory.h>
+
+static int mem_init(void)
+{
+	mips_add_ram0(SZ_64M);
+
+	return 0;
+}
+mem_initcall(mem_init);
diff --git a/arch/mips/mach-loongson/Kconfig b/arch/mips/mach-loongson/Kconfig
index b594288..9db9607 100644
--- a/arch/mips/mach-loongson/Kconfig
+++ b/arch/mips/mach-loongson/Kconfig
@@ -4,4 +4,16 @@ config ARCH_TEXT_BASE
 	hex
 	default 0xa0800000
 
+choice
+	prompt "Board type"
+
+config BOARD_LOONGSON_TECH_LS1B
+	bool "Loongson Tech. LS1B demo board"
+	select SYS_HAS_CPU_LOONGSON1B
+	select SYS_SUPPORTS_32BIT_KERNEL
+	select SYS_SUPPORTS_LITTLE_ENDIAN
+	select CSRC_R4K_LIB
+
+endchoice
+
 endif
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
