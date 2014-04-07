Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f181.google.com ([209.85.217.181])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX4HC-0006zH-MW
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 07:47:31 +0000
Received: by mail-lb0-f181.google.com with SMTP id c11so4477286lbj.12
 for <barebox@lists.infradead.org>; Mon, 07 Apr 2014 00:47:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Apr 2014 11:38:49 +0400
Message-Id: <1396856329-17464-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1396856329-17464-1-git-send-email-antonynpavlov@gmail.com>
References: <1396856329-17464-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] MIPS: loongson-ls1b: switch to device tree
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/loongson-ls1b/Makefile   |  1 -
 arch/mips/boards/loongson-ls1b/ram.c      | 12 ------------
 arch/mips/boards/loongson-ls1b/serial.c   | 12 ------------
 arch/mips/configs/loongson-ls1b_defconfig |  6 ++++++
 4 files changed, 6 insertions(+), 25 deletions(-)

diff --git a/arch/mips/boards/loongson-ls1b/Makefile b/arch/mips/boards/loongson-ls1b/Makefile
index a21952b..31c0629 100644
--- a/arch/mips/boards/loongson-ls1b/Makefile
+++ b/arch/mips/boards/loongson-ls1b/Makefile
@@ -1,2 +1 @@
-obj-y += ram.o
 obj-y += serial.o
diff --git a/arch/mips/boards/loongson-ls1b/ram.c b/arch/mips/boards/loongson-ls1b/ram.c
deleted file mode 100644
index 9e655ab..0000000
--- a/arch/mips/boards/loongson-ls1b/ram.c
+++ /dev/null
@@ -1,12 +0,0 @@
-#include <common.h>
-#include <init.h>
-#include <sizes.h>
-#include <asm/memory.h>
-
-static int mem_init(void)
-{
-	mips_add_ram0(SZ_64M);
-
-	return 0;
-}
-mem_initcall(mem_init);
diff --git a/arch/mips/boards/loongson-ls1b/serial.c b/arch/mips/boards/loongson-ls1b/serial.c
index d8e0f7c..a9453ed 100644
--- a/arch/mips/boards/loongson-ls1b/serial.c
+++ b/arch/mips/boards/loongson-ls1b/serial.c
@@ -1,22 +1,10 @@
 #include <common.h>
 #include <init.h>
-#include <ns16550.h>
-
-#include <mach/loongson1.h>
-
-static struct NS16550_plat serial_plat = {
-	.clock = 83000000,
-	.shift = 0,
-};
 
 static int console_init(void)
 {
-	barebox_set_model("Loongson Tech LS1B Demo Board");
 	barebox_set_hostname("ls1b");
 
-	add_ns16550_device(DEVICE_ID_DYNAMIC, KSEG1ADDR(LS1X_UART2_BASE),
-		8, IORESOURCE_MEM_8BIT, &serial_plat);
-
 	return 0;
 }
 console_initcall(console_init);
diff --git a/arch/mips/configs/loongson-ls1b_defconfig b/arch/mips/configs/loongson-ls1b_defconfig
index 0322052..bc48aba 100644
--- a/arch/mips/configs/loongson-ls1b_defconfig
+++ b/arch/mips/configs/loongson-ls1b_defconfig
@@ -1,3 +1,5 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="loongson-ls1b"
 CONFIG_MACH_MIPS_LOONGSON=y
 CONFIG_PBL_IMAGE=y
 CONFIG_STACK_SIZE=0x7000
@@ -36,7 +38,11 @@ CONFIG_CMD_IOMEM=y
 CONFIG_FLEXIBLE_BOOTARGS=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_TIMEOUT=y
+CONFIG_OFDEVICE=y
 # CONFIG_SPI is not set
 CONFIG_ZLIB=y
 CONFIG_BZLIB=y
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
