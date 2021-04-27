Delivery-date: Tue, 27 Apr 2021 22:25:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGr-0006a2-3p
	for lore@lore.pengutronix.de; Tue, 27 Apr 2021 22:25:25 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGo-0006GQ-DH
	for lore@pengutronix.de; Tue, 27 Apr 2021 22:25:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lW9iaJXVt1JREhQ5IMKrDQZjosji95bs/a+TXXFsc7k=; b=MAzZJrWKB+wcY3wJ5n4fKLjFd
	v9RC5Cex7Dvs6gV0VCTPfeP7ftxmvE3fytXw3fVS6MeoNKeOnBGdM0nFxabcHTuHHNG+83dQzsVo9
	j1mHlh8r0Q/FhWZXAtpjxgoSc7D7SzV1HPaYWDqYJUS8abfPiSyNyTvzawK+bx0cHQkdBbe0AS37d
	Hv5q45Uok8PiWJwHLKlLdBb8CcN93aiLGCpLEldG4DNKhkZ6AnQ/HIiMUcwsAnjcfZpxN1mtakn+Y
	lFtDLfdT0CbQDDEw5UlKMQbdAboRYxSyILzFHjX80Uwf+RcUR+c4MO9OXLFhLoLMQyeXO4JVPRU5P
	G3dt7Fh3w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbUFh-002C2c-3b; Tue, 27 Apr 2021 20:24:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUFH-002Bug-7r
 for barebox@desiato.infradead.org; Tue, 27 Apr 2021 20:23:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=rXJ6dlAiJK0V+LLJ9cf8GxL0naaDS2T0d4ubWmamkec=; b=oVZe8Wynlsimo+QmJVM2EG2orj
 VM3/V6dI3CRe/sOdKC7DCNoC7N67VoRMRtFLd62FPI3dP1fwqWncsBLu+QJC4EfGAolCaiRsHsOjZ
 W0KOdDGsJcGImA89n4C33lkx5IzfzAvUDgoykX8aCQ8RbdmxROcFjFBiDDKaUdl68pIJagwLsAIBq
 6X5o19k/QlVH50VzxZxEUaSqZOqLGINAxERCGfxNsEmUSCweiTEupY+vfrjPMnzVKxZQR3WZOkmMz
 ukCKd4iGoK9JeuXBoafNGRzmauEkz5uHCBCHoBInZ5oEvi1RsaK4lXndoNhooIsapptko0+cW613n
 TeKLDh1A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUFE-00GyKL-3t
 for barebox@lists.infradead.org; Tue, 27 Apr 2021 20:23:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEo-0005Xf-Pv; Tue, 27 Apr 2021 22:23:18 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEm-00016u-4Y; Tue, 27 Apr 2021 22:23:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Apr 2021 22:23:09 +0200
Message-Id: <20210427202309.32077-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210427202309.32077-1-a.fatoum@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_132344_340834_675F8A08 
X-CRM114-Status: GOOD (  17.65  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 12/12] RISC-V: sifive: add HiFive board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the recently added SiFive support, we now have enough functionality
to boot a HiFive board to shell:

  qemu-system-riscv64 -M sifive_u serial_stdio \
  -kernel./images/barebox-hifive-unleashed.img

Some more drivers need to be ported for this to be useful:

  - sifive,spi0		needed for talking to SD-Card
  - clocksource		The riscv-timer seems to be 10x too fast

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs                 |  19 ++++
 arch/riscv/boards/Makefile              |   1 +
 arch/riscv/boards/hifive/Makefile       |   3 +
 arch/riscv/boards/hifive/lowlevel.c     |  25 +++++
 arch/riscv/configs/sifive_defconfig     | 128 ++++++++++++++++++++++++
 arch/riscv/dts/Makefile                 |   2 +
 arch/riscv/dts/hifive-unleashed-a00.dts |   3 +
 arch/riscv/dts/hifive-unmatched-a00.dts |   3 +
 arch/riscv/include/asm/debug_ll.h       |  14 +++
 common/Kconfig                          |   4 +
 images/Makefile.riscv                   |   5 +
 11 files changed, 207 insertions(+)
 create mode 100644 arch/riscv/boards/hifive/Makefile
 create mode 100644 arch/riscv/boards/hifive/lowlevel.c
 create mode 100644 arch/riscv/configs/sifive_defconfig
 create mode 100644 arch/riscv/dts/hifive-unleashed-a00.dts
 create mode 100644 arch/riscv/dts/hifive-unmatched-a00.dts

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index ea5ae0a6e9b5..c6875738d05c 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -21,4 +21,23 @@ config SOC_VIRT
 	  Generates an image tht can be be booted by QEMU. The image is called
 	  barebox-dt-2nd.img
 
+config SOC_SIFIVE
+	bool "SiFive SoCs"
+	select CLK_SIFIVE
+	select CLK_SIFIVE_PRCI
+	select RISCV_TIMER
+	select HAS_MACB
+	select HAS_ASM_DEBUG_LL
+	help
+	  This enables support for SiFive SoC platform hardware.
+
+if SOC_SIFIVE
+
+config BOARD_HIFIVE
+	bool "HiFive"
+	depends on ARCH_RV64I
+	select USE_COMPRESSED_DTB
+
+endif
+
 endmenu
diff --git a/arch/riscv/boards/Makefile b/arch/riscv/boards/Makefile
index 2ce9af41e03b..99f22f32b470 100644
--- a/arch/riscv/boards/Makefile
+++ b/arch/riscv/boards/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_BOARD_ERIZO_GENERIC)	+= erizo/
+obj-$(CONFIG_BOARD_HIFIVE)		+= hifive/
diff --git a/arch/riscv/boards/hifive/Makefile b/arch/riscv/boards/hifive/Makefile
new file mode 100644
index 000000000000..3d217ffe0b93
--- /dev/null
+++ b/arch/riscv/boards/hifive/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+pbl-y += lowlevel.o
diff --git a/arch/riscv/boards/hifive/lowlevel.c b/arch/riscv/boards/hifive/lowlevel.c
new file mode 100644
index 000000000000..1de13cac1688
--- /dev/null
+++ b/arch/riscv/boards/hifive/lowlevel.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <asm/barebox-riscv.h>
+#include <debug_ll.h>
+
+ENTRY_FUNCTION(start_hifive_unmatched, a0, a1, a2)
+{
+	extern char __dtb_z_hifive_unmatched_a00_start[];
+
+	putc_ll('>');
+
+	barebox_riscv_entry(0x80000000, SZ_128M,
+			    __dtb_z_hifive_unmatched_a00_start + get_runtime_offset());
+}
+
+ENTRY_FUNCTION(start_hifive_unleashed, a0, a1, a2)
+{
+	extern char __dtb_z_hifive_unleashed_a00_start[];
+
+	putc_ll('>');
+
+	barebox_riscv_entry(0x80000000, SZ_128M,
+			    __dtb_z_hifive_unleashed_a00_start + get_runtime_offset());
+}
diff --git a/arch/riscv/configs/sifive_defconfig b/arch/riscv/configs/sifive_defconfig
new file mode 100644
index 000000000000..59cfebf194df
--- /dev/null
+++ b/arch/riscv/configs/sifive_defconfig
@@ -0,0 +1,128 @@
+CONFIG_ARCH_RV64I=y
+CONFIG_SOC_SIFIVE=y
+CONFIG_BOARD_HIFIVE=y
+CONFIG_BOARD_RISCV_GENERIC_DT=y
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
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
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
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_FASTBOOT=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_VIRTIO_CONSOLE=y
+CONFIG_SERIAL_SIFIVE=y
+CONFIG_DRIVER_NET_MACB=y
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
+CONFIG_GPIO_SIFIVE=y
+# CONFIG_PINCTRL is not set
+CONFIG_SYSCON_REBOOT_MODE=y
+CONFIG_POWER_RESET_SYSCON=y
+CONFIG_POWER_RESET_SYSCON_POWEROFF=y
+CONFIG_POWER_RESET_GPIO_RESTART=y
+CONFIG_VIRTIO_MMIO=y
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
diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
index 4041c34e0c45..17fdc9445bd0 100644
--- a/arch/riscv/dts/Makefile
+++ b/arch/riscv/dts/Makefile
@@ -5,5 +5,7 @@
 obj- += dummy.o
 
 pbl-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
+pbl-$(CONFIG_BOARD_HIFIVE) += hifive-unmatched-a00.dtb.o \
+                              hifive-unleashed-a00.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
diff --git a/arch/riscv/dts/hifive-unleashed-a00.dts b/arch/riscv/dts/hifive-unleashed-a00.dts
new file mode 100644
index 000000000000..65694bfd246a
--- /dev/null
+++ b/arch/riscv/dts/hifive-unleashed-a00.dts
@@ -0,0 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0 OR X11 */
+
+#include <riscv/sifive/hifive-unleashed-a00.dts>
diff --git a/arch/riscv/dts/hifive-unmatched-a00.dts b/arch/riscv/dts/hifive-unmatched-a00.dts
new file mode 100644
index 000000000000..b8793e910555
--- /dev/null
+++ b/arch/riscv/dts/hifive-unmatched-a00.dts
@@ -0,0 +1,3 @@
+/* SPDX-License-Identifier: GPL-2.0 OR X11 */
+
+#include <riscv/sifive/hifive-unmatched-a00.dts>
diff --git a/arch/riscv/include/asm/debug_ll.h b/arch/riscv/include/asm/debug_ll.h
index 755ed09786d5..6ef26280d14e 100644
--- a/arch/riscv/include/asm/debug_ll.h
+++ b/arch/riscv/include/asm/debug_ll.h
@@ -24,6 +24,20 @@
 
 #include <asm/debug_ll_ns16550.h>
 
+#elif defined CONFIG_DEBUG_SIFIVE
+
+#include <io.h>
+
+static inline void PUTC_LL(char ch)
+{
+	void __iomem *uart0 = IOMEM(0x10010000);
+
+	while (readl(uart0) & 0x80000000)
+		;
+
+	writel(ch, uart0);
+}
+
 #endif
 
 #endif /* __ASM_DEBUG_LL__ */
diff --git a/common/Kconfig b/common/Kconfig
index 6d7a1c6b0494..a883f2f69cb9 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1347,6 +1347,10 @@ config DEBUG_ERIZO
 	bool "Erizo ns16550 port"
 	depends on SOC_ERIZO
 
+config DEBUG_SIFIVE
+	bool "SiFive serial0 port"
+	depends on SOC_SIFIVE
+
 endchoice
 
 config DEBUG_IMX_UART_PORT
diff --git a/images/Makefile.riscv b/images/Makefile.riscv
index 463c6ce4400d..c44c683431f7 100644
--- a/images/Makefile.riscv
+++ b/images/Makefile.riscv
@@ -10,3 +10,8 @@ $(obj)/%.nmon: $(obj)/%.img FORCE
 pblb-$(CONFIG_BOARD_ERIZO_GENERIC) += start_erizo_generic
 FILE_barebox-erizo-generic.img = start_erizo_generic.pblb
 image-$(CONFIG_BOARD_ERIZO_GENERIC) += barebox-erizo-generic.img barebox-erizo-generic.nmon
+
+pblb-$(CONFIG_BOARD_HIFIVE) += start_hifive_unmatched start_hifive_unleashed
+FILE_barebox-hifive-unmatched.img = start_hifive_unmatched.pblb
+FILE_barebox-hifive-unleashed.img = start_hifive_unleashed.pblb
+image-$(CONFIG_BOARD_HIFIVE) += barebox-hifive-unmatched.img barebox-hifive-unleashed.img
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

