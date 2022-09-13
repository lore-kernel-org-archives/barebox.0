Delivery-date: Tue, 13 Sep 2022 14:51:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY5OR-003gOX-Pg
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 14:51:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY5OO-0007tS-7c
	for lore@pengutronix.de; Tue, 13 Sep 2022 14:51:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oNthtIA0+T/dnMipy0TPL9G8GbDP4pJYirh0qImP3RM=; b=aqqBOb0p+f+ouQaWlSt8zIT6KS
	V9LIsf89H9476SdtqdVn7BoEc/u0C69Hl/o4ijeXufSgS315/yU5HV9Gw+QaD0vzWpWSMyYrkn1t8
	wnlXO/NvK/hDztGaMuMQsouOYXdBXKGvK1qML2El2q6Og2c8eRZJoN/kvuSkN3X7l0fnSNPQb3gbq
	5jW2dmbs59p6IiwQDZCpybSnyx9Rkrz6o9v4haSZ1KZ8l+Po2ZvRIDJ7hbOxlskdOMWB5ptYtZcrr
	gwXgQ9id1Oxt+3Vrc+mMZ+oM/54lWPVuDNBeMA6VtJBPO/+oakGNskQdYDGc9Vey4VVdHgJa03b/s
	ljm/g5kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5Mi-00ADI8-4P; Tue, 13 Sep 2022 12:50:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5MX-00ADAq-0v
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 12:50:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MU-0007LA-48
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:58 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MU-000VCr-So
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:57 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MR-005fnH-Lo
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:55 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 13 Sep 2022 14:49:54 +0200
Message-Id: <20220913124954.1346533-7-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220913124954.1346533-1-m.felsch@pengutronix.de>
References: <20220913124954.1346533-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_055001_326673_159CF840 
X-CRM114-Status: GOOD (  22.37  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] RISC-V: add Allwinner Sun20i D1 Nezha support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add Allwinner sun20i SoC and D1-Nezha board support.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/boards/riscv.rst            | 102 +++++++++++++++++
 arch/riscv/Kconfig.socs                   |  16 +++
 arch/riscv/boards/Makefile                |   1 +
 arch/riscv/boards/allwinner-d1/Makefile   |   3 +
 arch/riscv/boards/allwinner-d1/lowlevel.c |  12 ++
 arch/riscv/configs/sun20i_defconfig       | 130 ++++++++++++++++++++++
 arch/riscv/include/asm/debug_ll.h         |   5 +
 common/Kconfig                            |   5 +
 images/Makefile.riscv                     |   4 +
 9 files changed, 278 insertions(+)
 create mode 100644 arch/riscv/boards/allwinner-d1/Makefile
 create mode 100644 arch/riscv/boards/allwinner-d1/lowlevel.c
 create mode 100644 arch/riscv/configs/sun20i_defconfig

diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
index b7a3a95f0f..4c31c4316b 100644
--- a/Documentation/boards/riscv.rst
+++ b/Documentation/boards/riscv.rst
@@ -188,3 +188,105 @@ Next, start barebox from DRAM::
   running /env/bin/init...
   /env/bin/init not found
   barebox:/
+
+Allwinner D1 Nezha
+------------------
+
+Barebox has limited second-stage support for the Allwinner D1 Nezha (sun20i)::
+
+  ARCH=riscv make sun20i_defconfig
+  ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- make
+
+The resulting ``./images/barebox-allwinner-d1.img`` can be used as 2nd stage
+image which gets called by opensbi::
+
+  git clone https://github.com/tekkamanninja/opensbi -b allwinner_d1
+  cd opensbi
+  CROSS_COMPILE=riscv64-linux-gnu- PLATFORM=generic FW_PIC=y make
+
+The resulting ``./build/platform/generic/firmware/fw_dynamic.bin`` is loaded
+by the 1st stage (spl) loader, which is basically a u-boot spl::
+
+  git clone https://github.com/smaeul/sun20i_d1_spl -b mainline
+  cd sun20i_d1_spl
+  CROSS_COMPILE=riscv64-linux-gnu- make p=sun20iw1p1 mmc
+
+The resulting ``./nboot/boot0_sdcard_sun20iw1p1.bin`` image used as 1st stage
+bootloader which loads all necessary binaries: dtb, opensbi and barebox to the
+dedicated places in DRAM. After loading it jumps to the opensbi image.  The
+initial dtb can be taken from u-boot::
+
+  git clone https://github.com/smaeul/u-boot.git -b d1-wip
+  cd u-boot
+  ARCH=riscv make nezha_defconfig
+  ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- make
+
+Make will print two warnings at the end of this command but those can be ignored
+since we only want the devicetree blob which can be found under ``./u-boot.dtb``.
+
+The final image is build by mkimage. It is some sort of a self-defined toc1
+format. So we need to compile the mkimage with the toc1 format support as
+first::
+
+  cd u-boot
+  make tools-only
+
+The resulting ``tools/mkimage`` is used to build the toc1 image which is loaded
+by the 1st stage bootloader from the mmc interface. To build the final toc1 image
+we need to specify a toc1.cfg like::
+
+  [opensbi]
+  file = <ABSOLUT_PATH_TO>/opensbi/build/platform/generic/firmware/fw_dynamic.bin
+  addr = 0x40000000
+  [dtb]
+  file = <ABSOLUT_PATH_TO>/u-boot/u-boot.dtb
+  addr = 0x44000000
+  [u-boot]
+  file = <ABSOLUT_PATH_TO>/barebox/images/barebox-allwinner-d1.img
+  addr = 0x4a000000
+
+Then we need to call::
+
+  mkimage -T sunxi_toc1 -d toc1.cfg boot.toc1
+
+The last part is to place the 1st stage bootloader and the ``boot.toc1`` image
+onto the correct places. So the ROM loader can find the 1st stage bootloader
+and the 1st bootloader can find the ``boot.toc1`` image. This is done by::
+
+  dd if=boot0_sdcard_sun20iw1p1.bin of=/dev/sd<X> bs=512 seek=16
+  dd if=boot.toc1 of=/dev/sd<X> bs=512 seek=32800
+
+Now plug in the sdcard and power device and you will see::
+
+  [309]HELLO! BOOT0 is starting!
+  [312]BOOT0 commit : 882671f-dirty
+  [315]set pll start
+  [317]periph0 has been enabled
+  [320]set pll end
+  [322]board init ok
+
+  ...
+
+  OpenSBI v0.9-204-gc9024b5
+     ____                    _____ ____ _____
+    / __ \                  / ____|  _ \_   _|
+   | |  | |_ __   ___ _ __ | (___ | |_) || |
+   | |  | | '_ \ / _ \ '_ \ \___ \|  _ < | |
+   | |__| | |_) |  __/ | | |____) | |_) || |_
+    \____/| .__/ \___|_| |_|_____/|____/_____|
+          | |
+          |_|
+
+  Platform Name             : Allwinner D1 Nezha
+  Platform Features         : medeleg
+
+  ...
+
+  barebox 2022.08.0-00262-g38678340903b #1 Tue Sep 13 12:54:29 CEST 2022
+
+
+  Board: Allwinner D1 Nezha
+
+  ...
+
+  barebox@Allwinner D1 Nezha:/
diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 828b65a0c1..0f03637a66 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -110,6 +110,22 @@ config BOARD_BEAGLEV_BETA
 
 endif
 
+config SOC_ALLWINNER_SUN20I
+	bool "Allwinner Sun20i SoCs"
+	depends on ARCH_RV64I
+	select HAS_ASM_DEBUG_LL
+	select HAS_CACHE
+
+if SOC_ALLWINNER_SUN20I
+
+config BOARD_ALLWINNER_D1
+	bool "Allwinner D1 Nezha"
+	select RISCV_S_MODE
+	select RISCV_M_MODE
+	def_bool y
+
+endif
+
 comment "CPU features"
 
 config SIFIVE_L2
diff --git a/arch/riscv/boards/Makefile b/arch/riscv/boards/Makefile
index 3b763ff308..df16d38496 100644
--- a/arch/riscv/boards/Makefile
+++ b/arch/riscv/boards/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_BOARD_ALLWINNER_D1)	+= allwinner-d1/
 obj-$(CONFIG_BOARD_ERIZO_GENERIC)	+= erizo/
 obj-$(CONFIG_BOARD_HIFIVE)		+= hifive/
 obj-$(CONFIG_BOARD_BEAGLEV)		+= beaglev/
diff --git a/arch/riscv/boards/allwinner-d1/Makefile b/arch/riscv/boards/allwinner-d1/Makefile
new file mode 100644
index 0000000000..3d217ffe0b
--- /dev/null
+++ b/arch/riscv/boards/allwinner-d1/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+pbl-y += lowlevel.o
diff --git a/arch/riscv/boards/allwinner-d1/lowlevel.c b/arch/riscv/boards/allwinner-d1/lowlevel.c
new file mode 100644
index 0000000000..2b07a81edb
--- /dev/null
+++ b/arch/riscv/boards/allwinner-d1/lowlevel.c
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <debug_ll.h>
+#include <asm/barebox-riscv.h>
+
+#define DRAM_BASE	0x40000000
+
+ENTRY_FUNCTION(start_allwinner_d1, a0, a1, a2)
+{
+	barebox_riscv_supervisor_entry(DRAM_BASE, SZ_1G, a0, (void *)a1);
+}
diff --git a/arch/riscv/configs/sun20i_defconfig b/arch/riscv/configs/sun20i_defconfig
new file mode 100644
index 0000000000..157c430723
--- /dev/null
+++ b/arch/riscv/configs/sun20i_defconfig
@@ -0,0 +1,130 @@
+CONFIG_ARCH_RV64I=y
+CONFIG_SOC_ALLWINNER_SUN20I=y
+CONFIG_BOARD_ALLWINNER_D1=y
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
+CONFIG_BOOTM_INITRD=y
+CONFIG_SYSTEM_PARTITIONS=y
+CONFIG_IMD_TARGET=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_BAREBOXENV_TARGET=y
+CONFIG_BAREBOXCRC32_TARGET=y
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
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_WD=y
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
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_SERIAL_SBI=y
+CONFIG_DRIVER_NET_DESIGNWARE=y
+CONFIG_DRIVER_NET_DESIGNWARE_GENERIC=y
+CONFIG_DRIVER_NET_DESIGNWARE_STARFIVE=y
+CONFIG_MICREL_PHY=y
+CONFIG_SPI_MEM=y
+CONFIG_DRIVER_SPI_GPIO=y
+CONFIG_MCI=y
+CONFIG_MCI_DW=y
+CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
+CONFIG_SRAM=y
+CONFIG_STARFIVE_PWRSEQ=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_WATCHDOG=y
+CONFIG_STARFIVE_WDT=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_STARFIVE=y
+CONFIG_GPIO_GENERIC_PLATFORM=y
+CONFIG_GPIO_STARFIVE=y
+CONFIG_PINCTRL_SINGLE=y
+CONFIG_NVMEM=y
+CONFIG_NVMEM_RMEM=y
+CONFIG_STARFIVE_OTP=y
+CONFIG_SYSCON_REBOOT_MODE=y
+CONFIG_NVMEM_REBOOT_MODE=y
+CONFIG_POWER_RESET_SYSCON=y
+CONFIG_POWER_RESET_SYSCON_POWEROFF=y
+CONFIG_POWER_RESET_GPIO=y
+CONFIG_POWER_RESET_GPIO_RESTART=y
+# CONFIG_VIRTIO_MENU is not set
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
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
+CONFIG_DIGEST_CRC32_GENERIC=y
diff --git a/arch/riscv/include/asm/debug_ll.h b/arch/riscv/include/asm/debug_ll.h
index de9bc5f5fd..34294b09dd 100644
--- a/arch/riscv/include/asm/debug_ll.h
+++ b/arch/riscv/include/asm/debug_ll.h
@@ -29,6 +29,11 @@
 #define DEBUG_LL_UART_CLK       (58982400  / 16)
 #define DEBUG_LL_UART_SHIFT	0
 #define DEBUG_LL_UART_IOSIZE8
+#elif defined CONFIG_DEBUG_SUN20I
+#define DEBUG_LL_UART_ADDR	0x2500000
+#define DEBUG_LL_UART_CLK       (24000000 / 16)
+#define DEBUG_LL_UART_SHIFT	2
+#define DEBUG_LL_UART_IOSIZE32
 #endif
 
 #define DEBUG_LL_UART_BPS       CONFIG_BAUDRATE
diff --git a/common/Kconfig b/common/Kconfig
index 43dd92b08a..624d36a978 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1469,6 +1469,11 @@ config DEBUG_LITEX
 	bool "LiteX serial port"
 	depends on SOC_LITEX
 
+config DEBUG_SUN20I
+	bool "Allwinner Sun20i ns16550 serial0 port"
+	depends on SOC_ALLWINNER_SUN20I
+	select DEBUG_LL_NS16550
+
 endchoice
 
 config DEBUG_LL_NS16550
diff --git a/images/Makefile.riscv b/images/Makefile.riscv
index 0645238c43..df0e5a9146 100644
--- a/images/Makefile.riscv
+++ b/images/Makefile.riscv
@@ -23,3 +23,7 @@ image-$(CONFIG_BOARD_BEAGLEV) += barebox-beaglev-starlight.img
 pblb-$(CONFIG_BOARD_LITEX_LINUX) += start_litex_linux
 FILE_barebox-litex-linux.img = start_litex_linux.pblb
 image-$(CONFIG_BOARD_LITEX_LINUX) += barebox-litex-linux.img
+
+pblb-$(CONFIG_BOARD_ALLWINNER_D1) += start_allwinner_d1
+FILE_barebox-allwinner-d1.img = start_allwinner_d1.pblb
+image-$(CONFIG_BOARD_ALLWINNER_D1) += barebox-allwinner-d1.img
-- 
2.30.2



