Delivery-date: Wed, 05 Oct 2022 13:14:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1og2MG-006euz-0E
	for lore@lore.pengutronix.de; Wed, 05 Oct 2022 13:14:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1og2ME-0004GW-AD
	for lore@pengutronix.de; Wed, 05 Oct 2022 13:14:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WvF9TA0MFTC+g1sE3cAmPtwfx29bz08F7TklhxdqFIM=; b=B04yauCMroXIL7g07YI53ndkej
	/9ROH95BP3Vggs1wP73oD2WCYKvbDAupdJ6hiHbKvPFZOlyue4KWFN7M/E8zYM8Vy2PMi3fofCv3/
	lqd5HotaJZShJ+rZcyS+1XnF3LGntch8K43rn+LZVoU+xiK0K92m6rPUi+8MmF+T+T89IgO0FC3DU
	JfolHTNBU2iOWIKDi0KBSsQZF/jA1Pe9ALRnHiZ88riPUkMLPndWNupiGvcdsWF4yBsjuJIzShT4v
	9D4htJT84VXwwpmgfqpSnpF9Hf8vPV4LYLEIWUupPifc7u4WAcpC85lXJJUC0PUwI94gSGZswEj6r
	n9wpUDRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og2KI-00DjU9-2y; Wed, 05 Oct 2022 11:12:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og2K3-00DjL2-Qq
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 11:12:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K2-0003lS-Kd
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K3-004kIH-CM
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:17 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K0-000cru-JS
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:16 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  5 Oct 2022 13:12:14 +0200
Message-Id: <20221005111214.148844-7-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221005111214.148844-1-m.felsch@pengutronix.de>
References: <20221005111214.148844-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_041220_050171_5516E5EF 
X-CRM114-Status: GOOD (  22.32  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 7/7] RISC-V: add Allwinner Sun20i D1 Nezha support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add Allwinner sun20i SoC and D1-Nezha board support.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- drop own defconfig instead use the new rv64i_defconfig

 Documentation/boards/riscv.rst            | 102 ++++++++++++++++++++++
 arch/riscv/Kconfig.socs                   |  16 ++++
 arch/riscv/boards/Makefile                |   1 +
 arch/riscv/boards/allwinner-d1/Makefile   |   3 +
 arch/riscv/boards/allwinner-d1/lowlevel.c |  12 +++
 arch/riscv/configs/rv64i_defconfig        |   3 +
 arch/riscv/include/asm/debug_ll.h         |   5 ++
 common/Kconfig                            |   5 ++
 images/Makefile.riscv                     |   4 +
 9 files changed, 151 insertions(+)
 create mode 100644 arch/riscv/boards/allwinner-d1/Makefile
 create mode 100644 arch/riscv/boards/allwinner-d1/lowlevel.c

diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
index e69eca78c8..92f663cfb9 100644
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
+  ARCH=riscv make rv64i_defconfig
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
diff --git a/arch/riscv/configs/rv64i_defconfig b/arch/riscv/configs/rv64i_defconfig
index 6c8409567d..2c5bfd2df1 100644
--- a/arch/riscv/configs/rv64i_defconfig
+++ b/arch/riscv/configs/rv64i_defconfig
@@ -1,7 +1,9 @@
 CONFIG_ARCH_RV64I=y
+CONFIG_SOC_ALLWINNER_SUN20I=y
 CONFIG_SOC_SIFIVE=y
 CONFIG_SOC_STARFIVE=y
 CONFIG_SOC_VIRT=y
+CONFIG_BOARD_ALLWINNER_D1=y
 CONFIG_BOARD_BEAGLEV=y
 CONFIG_BOARD_BEAGLEV_BETA=y
 CONFIG_BOARD_HIFIVE=y
@@ -95,6 +97,7 @@ CONFIG_NET_FASTBOOT=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_SERIAL_SBI=y
 CONFIG_VIRTIO_CONSOLE=y
 CONFIG_SERIAL_SIFIVE=y
 CONFIG_DRIVER_NET_MACB=y
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
index 350e6aeea7..fb2bf49683 100644
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



