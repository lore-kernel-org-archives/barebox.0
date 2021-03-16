Delivery-date: Tue, 16 Mar 2021 09:09:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4lI-0002OE-0D
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 09:09:08 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4lG-0001LF-1Z
	for lore@pengutronix.de; Tue, 16 Mar 2021 09:09:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q4YQojIPQXSFH+EBzO/sQYi6+aPo+/a5DEYzNgjxz38=; b=Cy08g9ZL70YaRRCThKMvoZ6EF
	xmC6CYapXc1YzWuFf8NQ+0nuMKM2KUPr6/cf0zinLxEHyd74g8BOlhEh9nJh8zLGx+fbT5D4DkgxB
	ZbDRqJzIUmkP7RTpvgvtMgurRwFkUcrILApwexT0lOT+IpBXDiXWKyHySehiU2IAiE8A+ar06Ry15
	lVFOi45v4Y+xwzTzA6sUJ6l2lVyyAb9lgYhv7qGbiEoST8b2K5yCCa6mLvjRHDSlo1/laW3PdY9tt
	+aKSKNmTrpBPMaA+hRw6U1ia8EDczjqPXOgQWHnJ3fYvRJrVEI7iY7COmq5hgHtnacgBxghRW4qf2
	/R0hivqxw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM4jc-0005dj-Sx; Tue, 16 Mar 2021 08:07:25 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM4iZ-00052c-7d
 for barebox@desiato.infradead.org; Tue, 16 Mar 2021 08:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=QZNm+gE88JUee1fT7Ymm6Lz4gN3FWLu2SBfjRrV0mJ8=; b=rqlUjVyjIzlo5MYgfl30MkYIA+
 arNxU1pjHnIftNMQtV6jdagATR5BL+vft84bpjniy/gm/kioBU99o5qg+KDFa8dy5WCEp/jjLrZe8
 FhhY6oAew4ikftjGOQDzMhGlPXzA0l3IO9h8z23Cj5Aasnd2qMMlqowG2QbnjJeeCctFjAyNO9NYA
 RBYp0UBSxVXuoJOkyAumuD0QBCWDyMTHnwaY2GnO7SNKPVJyUdvPY/QTiA7RY2QrddlLNiMZ6kN1c
 nYCWXvdE1iSVkPFnpQW7ZcvBa217ZV52PVIIT1z/MkaC8Ze3lmQpel6ecXjISW+D0kwf3DI0uk2eg
 hCk2BraQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM4hj-001dIU-BS
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 08:05:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lM4hS-0007yI-M9; Tue, 16 Mar 2021 09:05:10 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lM4hR-0006DZ-9V; Tue, 16 Mar 2021 09:05:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Mar 2021 09:05:05 +0100
Message-Id: <20210316080505.19361-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210316080505.19361-1-a.fatoum@pengutronix.de>
References: <20210316080505.19361-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_080540_966161_1A52B91F 
X-CRM114-Status: GOOD (  18.10  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 20/20] RISC-V: add Qemu virt support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The generic dt board added in a previous commit can be booted on RISC-V
qemu -M virt. Add defconfigs for both 32- and 64-bit machines.

We could in theory drop the mach directory altogether like it's done on
arm64, but for now it's left in as it provides <mach/debug_ll.h>.

It's expected that we can drop it in future in favor of generic earlycon
support (which also wouldn't require manual adjustment of the shared entry
point like with debug_ll).

Signed-off-by: Rouven Czerwinski <r.czerwinksi@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/riscv.rst               |  59 ++++++++++
 arch/riscv/Kconfig                           |   8 ++
 arch/riscv/Makefile                          |   3 +-
 arch/riscv/configs/virt32_defconfig          | 116 ++++++++++++++++++
 arch/riscv/configs/virt64_defconfig          | 117 +++++++++++++++++++
 arch/riscv/mach-virt/Makefile                |   3 +
 arch/riscv/mach-virt/include/mach/debug_ll.h |  25 ++++
 7 files changed, 330 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/configs/virt32_defconfig
 create mode 100644 arch/riscv/configs/virt64_defconfig
 create mode 100644 arch/riscv/mach-virt/Makefile
 create mode 100644 arch/riscv/mach-virt/include/mach/debug_ll.h

diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
index a1f7e30531ee..049029b4f23d 100644
--- a/Documentation/boards/riscv.rst
+++ b/Documentation/boards/riscv.rst
@@ -1,6 +1,65 @@
 RISC-V
 ======
 
+QEMU Virt
+---------
+
+barebox supports both the qemu riscv32 and riscv64 ``-M virt`` boards::
+
+  make ARCH=riscv virt64_defconfig
+  qemu-system-riscv64 -M virt -serial stdio -kernel build/images/barebox-dt-2nd.img
+
+Replace ``64`` by ``32`` for 32-bit build. :ref:`virtio` over MMIO is supported and
+can be used for e.g. an extra console or to pass in a virtio-blk device::
+
+  qemu-system-riscv64 -M virt -serial stdio                                \
+  	-kernel ./images/barebox-dt-2nd.img                                \
+  	-device virtio-rng-device                                          \
+  	-drive if=none,file=./images/barebox-dt-2nd.img,format=raw,id=hd0  \
+  	-device virtio-blk-device,drive=hd0                                \
+  	-device virtio-serial-device                                       \
+  	-chardev socket,path=/tmp/foo,server,nowait,id=foo           	   \
+  	-device virtconsole,chardev=foo,name=console.foo
+
+  barebox 2021.02.0 #27 Sun Mar 14 10:08:09 CET 2021
+  
+  
+  Board: riscv-virtio,qemu
+  malloc space: 0x83dff820 -> 0x87bff03f (size 62 MiB)
+  
+  barebox@riscv-virtio,qemu:/ filetype /dev/virtioblk0
+  /dev/virtioblk0: RISC-V Linux image (riscv-linux)
+
+Note that the ``board-dt-2nd.img`` uses the Linux RISC-V kernel image
+format and boot protocol. It thus requires the device tree to be passed
+from outside in ``a1`` and must be loaded at an offset as indicated in
+the header for the initial stack to work. Using the ``-kernel`` option
+in Qemu or booting from bootloaders that can properly boot Linux will
+take care of this.
+
+TinyEMU
+-------
+
+TinyEMU can emulate a qemu-virt like machine with a RISC-V 32-, 64-
+and 128-bit CPU. It can run barebox with this sample configuration::
+
+  /* temu barebox-virt64.cfg */
+  {
+      version: 1,
+      machine: "riscv64",
+      memory_size: 256,
+      bios: "bbl64.bin",
+      kernel: "./images/barebox-dt-2nd.img",
+  }
+
+``barebox-dt-2nd.img`` can be generated like with Qemu. Graphical
+output is also supported, but virtio input support is still missing.
+To activate add::
+
+    display0: { device: "simplefb", width: 800, height: 600 },
+
+into the config file.
+
 Erizo
 -----
 
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 6e8bfdef14db..c0583f31536b 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -34,6 +34,14 @@ config MACH_ERIZO
 	select RISCV_M_MODE
 	select RISCV_TIMER
 
+config MACH_VIRT
+	bool "virt family"
+	select BOARD_RISCV_GENERIC_DT
+	select CLINT_TIMER
+	help
+	  Generates an image tht can be be booted by QEMU. The image is called
+	  barebox-dt-2nd.img
+
 endchoice
 
 choice
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index c0dadead42ad..aba4526bba5a 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -1,4 +1,4 @@
-KBUILD_DEFCONFIG := erizo_generic_defconfig
+KBUILD_DEFCONFIG := virt64_defconfig
 
 KBUILD_CPPFLAGS += -fno-strict-aliasing
 
@@ -20,6 +20,7 @@ cflags-y += $(riscv-cflags-y)
 LDFLAGS_barebox += -nostdlib
 
 machine-$(CONFIG_MACH_ERIZO)	:= erizo
+machine-$(CONFIG_MACH_VIRT)	:= virt
 
 LDFLAGS_barebox += $(riscv-ldflags-y)
 
diff --git a/arch/riscv/configs/virt32_defconfig b/arch/riscv/configs/virt32_defconfig
new file mode 100644
index 000000000000..83e3ca1bade8
--- /dev/null
+++ b/arch/riscv/configs/virt32_defconfig
@@ -0,0 +1,116 @@
+CONFIG_MACH_VIRT=y
+CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_STACK_SIZE=0x20000
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_PANIC_HANG=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_IMD_TARGET=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_BAREBOXENV_TARGET=y
+CONFIG_BAREBOXCRC32_TARGET=y
+CONFIG_POLLER=y
+CONFIG_STATE=y
+CONFIG_STATE_CRYPTO=y
+CONFIG_BOOTCHOOSER=y
+CONFIG_RESET_SOURCE=y
+CONFIG_MACHINE_ID=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_POLLER=y
+CONFIG_CMD_SLICE=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_BOOTCHOOSER=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_FBTEST=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_2048=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_DIFF=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OF_FIXUP_STATUS=y
+CONFIG_CMD_OF_OVERLAY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_DHRYSTONE=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_VIRTIO_CONSOLE=y
+CONFIG_DRIVER_SPI_GPIO=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_CONCAT=y
+CONFIG_MTD_M25P80=y
+CONFIG_DRIVER_CFI=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_8=y
+CONFIG_DISK=y
+CONFIG_DISK_WRITE=y
+CONFIG_VIRTIO_BLK=y
+CONFIG_VIDEO=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=y
+CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
+CONFIG_EEPROM_AT24=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
+CONFIG_GPIO_GENERIC_PLATFORM=y
+# CONFIG_PINCTRL is not set
+CONFIG_SYSCON_REBOOT_MODE=y
+CONFIG_POWER_RESET_SYSCON=y
+CONFIG_POWER_RESET_SYSCON_POWEROFF=y
+CONFIG_VIRTIO_MMIO=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_FS_UIMAGEFS=y
+CONFIG_FS_PSTORE=y
+CONFIG_FS_SQUASHFS=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
+CONFIG_LZ4_DECOMPRESS=y
+CONFIG_ZSTD_DECOMPRESS=y
+CONFIG_XZ_DECOMPRESS=y
+CONFIG_BASE64=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_DIGEST_CRC32_GENERIC=y
diff --git a/arch/riscv/configs/virt64_defconfig b/arch/riscv/configs/virt64_defconfig
new file mode 100644
index 000000000000..17ce16637d96
--- /dev/null
+++ b/arch/riscv/configs/virt64_defconfig
@@ -0,0 +1,117 @@
+CONFIG_MACH_VIRT=y
+CONFIG_ARCH_RV64I=y
+CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_STACK_SIZE=0x20000
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_PANIC_HANG=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_IMD_TARGET=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_BAREBOXENV_TARGET=y
+CONFIG_BAREBOXCRC32_TARGET=y
+CONFIG_POLLER=y
+CONFIG_STATE=y
+CONFIG_STATE_CRYPTO=y
+CONFIG_BOOTCHOOSER=y
+CONFIG_RESET_SOURCE=y
+CONFIG_MACHINE_ID=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_POLLER=y
+CONFIG_CMD_SLICE=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_BOOTCHOOSER=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_FBTEST=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_2048=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_DIFF=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OF_FIXUP_STATUS=y
+CONFIG_CMD_OF_OVERLAY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_DHRYSTONE=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_VIRTIO_CONSOLE=y
+CONFIG_DRIVER_SPI_GPIO=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_CONCAT=y
+CONFIG_MTD_M25P80=y
+CONFIG_DRIVER_CFI=y
+CONFIG_DRIVER_CFI_BANK_WIDTH_8=y
+CONFIG_DISK=y
+CONFIG_DISK_WRITE=y
+CONFIG_VIRTIO_BLK=y
+CONFIG_VIDEO=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=y
+CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
+CONFIG_EEPROM_AT24=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
+CONFIG_GPIO_GENERIC_PLATFORM=y
+# CONFIG_PINCTRL is not set
+CONFIG_SYSCON_REBOOT_MODE=y
+CONFIG_POWER_RESET_SYSCON=y
+CONFIG_POWER_RESET_SYSCON_POWEROFF=y
+CONFIG_VIRTIO_MMIO=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_FS_UIMAGEFS=y
+CONFIG_FS_PSTORE=y
+CONFIG_FS_SQUASHFS=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
+CONFIG_LZ4_DECOMPRESS=y
+CONFIG_ZSTD_DECOMPRESS=y
+CONFIG_XZ_DECOMPRESS=y
+CONFIG_BASE64=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_DIGEST_CRC32_GENERIC=y
diff --git a/arch/riscv/mach-virt/Makefile b/arch/riscv/mach-virt/Makefile
new file mode 100644
index 000000000000..d9c51e74c379
--- /dev/null
+++ b/arch/riscv/mach-virt/Makefile
@@ -0,0 +1,3 @@
+# just to build a built-in.o. Otherwise compilation fails when no o-files is
+# created.
+obj- += dummy.o
diff --git a/arch/riscv/mach-virt/include/mach/debug_ll.h b/arch/riscv/mach-virt/include/mach/debug_ll.h
new file mode 100644
index 000000000000..056b7a330bdd
--- /dev/null
+++ b/arch/riscv/mach-virt/include/mach/debug_ll.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2017 Antony Pavlov <antonynpavlov@gmail.com>
+ */
+
+#ifndef __MACH_VIRT_DEBUG_LL__
+#define __MACH_VIRT_DEBUG_LL__
+
+/** @file
+ *  This File contains declaration for early output support
+ */
+
+#include <linux/kconfig.h>
+
+#define DEBUG_LL_UART_ADDR	0x10000000
+#define DEBUG_LL_UART_SHIFT	0
+#define DEBUG_LL_UART_IOSIZE8
+
+#define DEBUG_LL_UART_CLK       0x00384000
+#define DEBUG_LL_UART_BPS       CONFIG_BAUDRATE
+#define DEBUG_LL_UART_DIVISOR   (DEBUG_LL_UART_CLK / DEBUG_LL_UART_BPS)
+
+#include <asm/debug_ll_ns16550.h>
+
+#endif /* __MACH_VIRT_DEBUG_LL__ */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

