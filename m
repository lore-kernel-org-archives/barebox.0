Delivery-date: Wed, 05 Oct 2022 13:14:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1og2MH-006evm-3Y
	for lore@lore.pengutronix.de; Wed, 05 Oct 2022 13:14:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1og2MF-0004Gz-Ec
	for lore@pengutronix.de; Wed, 05 Oct 2022 13:14:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AKaE69Mv0WObHocIQJyV2TCKLNALr6Rz4bppJ7lyTE8=; b=RYv9xEEDGcfHv0Oj+rBSaAiXfA
	7xRByDVYWaW+iDTwa6T31RCjWVBdQhAmcZ9lvhrUWixYj63VE0nLqV6W6GVUMtKutTFc9rd4tZ3mO
	W/gMjdWZkuadukSfZ6uRVbuiRp2wgx3dYg9df7wc670cRH/LnCE4QS60bAFI8SPslxbXtTvJiMZMX
	h4B+Zo6F5D7ezKzIqlteXq/7YHk30xs20sW1xjFL6LQba41lE8lPLbUDhg4BgD3GkLkcACoyZ1S3x
	tWjJ8qxujOYfjPwXd/pC7LSxf9OneBPjGO7V6DeGU01VPsitdZxe0a8xbsfvCKPvdtJmC89YYnNYW
	1mHCo+7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og2KK-00DjUt-PZ; Wed, 05 Oct 2022 11:12:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og2K3-00DjL1-Qa
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 11:12:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K2-0003lQ-JL
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K3-004kIC-BW
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:17 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K0-000crr-IT
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:16 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  5 Oct 2022 13:12:13 +0200
Message-Id: <20221005111214.148844-6-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221005111214.148844-1-m.felsch@pengutronix.de>
References: <20221005111214.148844-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_041220_197893_53579136 
X-CRM114-Status: GOOD (  13.35  )
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
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/7] RISC-V: squash 64bit defconfigs into rv64i_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This commit squashes all 64bit risc-v defconfigs into one like armv8.
The 32bit defconfigs are not changed since those systems have tight
resource constraints and a generic defconfig may break some systems.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- new commit

 Documentation/boards/emulated.rst             |   4 +-
 Documentation/boards/riscv.rst                |   6 +-
 arch/riscv/Makefile                           |   2 +-
 .../{virt64_defconfig => rv64i_defconfig}     |  42 +++++-
 arch/riscv/configs/sifive_defconfig           | 129 -----------------
 arch/riscv/configs/starfive_defconfig         | 131 ------------------
 6 files changed, 47 insertions(+), 267 deletions(-)
 rename arch/riscv/configs/{virt64_defconfig => rv64i_defconfig} (76%)
 delete mode 100644 arch/riscv/configs/sifive_defconfig
 delete mode 100644 arch/riscv/configs/starfive_defconfig

diff --git a/Documentation/boards/emulated.rst b/Documentation/boards/emulated.rst
index 584883d6ef..ef035ec69a 100644
--- a/Documentation/boards/emulated.rst
+++ b/Documentation/boards/emulated.rst
@@ -64,12 +64,12 @@ The script can also be used with a precompiled barebox tree::
 ``emulate.pl`` also has some knowledge on paravirtualized devices::
 
   # Run target and pass a block device (here /dev/virtioblk0)
-  ARCH=riscv ./test/emulate.pl --blk=rootfs.ext4 virt64_defconfig
+  ARCH=riscv ./test/emulate.pl --blk=rootfs.ext4 rv64i_defconfig
 
 Needed command line options can be passed directly to the
 emulator/``pytest`` as well by placing them behind ``--``::
 
   # appends -device ? to the command line. Add -n to see the final result
-  ARCH=riscv ./test/emulate.pl virt64_defconfig -- -device ?
+  ARCH=riscv ./test/emulate.pl rv64i_defconfig -- -device ?
 
 For a complete listing of options run ``./test/emulate.pl -h``.
diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
index b7a3a95f0f..e69eca78c8 100644
--- a/Documentation/boards/riscv.rst
+++ b/Documentation/boards/riscv.rst
@@ -6,10 +6,10 @@ QEMU Virt
 
 barebox supports both the qemu riscv32 and riscv64 ``-M virt`` boards::
 
-  make ARCH=riscv virt64_defconfig
+  make ARCH=riscv rv64i_defconfig
   qemu-system-riscv64 -M virt -serial stdio -kernel build/images/barebox-dt-2nd.img
 
-Replace ``64`` by ``32`` for 32-bit build. :ref:`virtio_sect` over MMIO is supported and
+For 32-bit builds use ``virt32_defconfig``. :ref:`virtio_sect` over MMIO is supported and
 can be used for e.g. an extra console or to pass in a virtio-blk device::
 
   qemu-system-riscv64 -M virt -serial stdio                                \
@@ -65,7 +65,7 @@ BeagleV
 
 barebox has second-stage support for the BeagleV Starlight::
 
-  make ARCH=riscv starfive_defconfig
+  make ARCH=riscv rv64i_defconfig
   make
 
 Thie resulting ``./images/barebox-beaglev-starlight.img`` can be used as payload
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 6fbf1d4ddd..279db046c0 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-KBUILD_DEFCONFIG := virt64_defconfig
+KBUILD_DEFCONFIG := rv64i_defconfig
 
 KBUILD_CPPFLAGS += -fno-strict-aliasing
 
diff --git a/arch/riscv/configs/virt64_defconfig b/arch/riscv/configs/rv64i_defconfig
similarity index 76%
rename from arch/riscv/configs/virt64_defconfig
rename to arch/riscv/configs/rv64i_defconfig
index c2edd2dc28..6c8409567d 100644
--- a/arch/riscv/configs/virt64_defconfig
+++ b/arch/riscv/configs/rv64i_defconfig
@@ -1,5 +1,11 @@
 CONFIG_ARCH_RV64I=y
+CONFIG_SOC_SIFIVE=y
+CONFIG_SOC_STARFIVE=y
 CONFIG_SOC_VIRT=y
+CONFIG_BOARD_BEAGLEV=y
+CONFIG_BOARD_BEAGLEV_BETA=y
+CONFIG_BOARD_HIFIVE=y
+CONFIG_BOARD_RISCV_GENERIC_DT=y
 CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_STACK_SIZE=0x20000
 CONFIG_MALLOC_SIZE=0x0
@@ -13,6 +19,7 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
+CONFIG_SYSTEM_PARTITIONS=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
@@ -47,9 +54,11 @@ CONFIG_CMD_LN=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_PING=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
@@ -66,6 +75,7 @@ CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_SPI=y
+CONFIG_CMD_WD=y
 CONFIG_CMD_2048=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_DIFF=y
@@ -86,12 +96,21 @@ CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_VIRTIO_CONSOLE=y
+CONFIG_SERIAL_SIFIVE=y
+CONFIG_DRIVER_NET_MACB=y
+CONFIG_DRIVER_NET_DESIGNWARE=y
+CONFIG_DRIVER_NET_DESIGNWARE_GENERIC=y
+CONFIG_DRIVER_NET_DESIGNWARE_STARFIVE=y
 CONFIG_DRIVER_NET_VIRTIO=y
+CONFIG_MICREL_PHY=y
+CONFIG_SPI_MEM=y
 CONFIG_DRIVER_SPI_GPIO=y
+CONFIG_SPI_SIFIVE=y
 CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_MTD_RAW_DEVICE=y
 CONFIG_MTD_CONCAT=y
 CONFIG_MTD_M25P80=y
 CONFIG_MTD_MTDRAM=y
@@ -104,21 +123,42 @@ CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
 CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=y
+CONFIG_MCI=y
+CONFIG_MCI_SPI=y
+CONFIG_MCI_DW=y
 CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
 CONFIG_STATE_DRV=y
 CONFIG_EEPROM_AT24=y
 CONFIG_VIRTIO_INPUT=y
+CONFIG_SRAM=y
+CONFIG_STARFIVE_PWRSEQ=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_WATCHDOG=y
+CONFIG_STARFIVE_WDT=y
 CONFIG_HWRNG=y
 CONFIG_HW_RANDOM_VIRTIO=y
+CONFIG_GPIO_SIFIVE=y
+CONFIG_HW_RANDOM_STARFIVE=y
 CONFIG_GPIO_GENERIC_PLATFORM=y
-# CONFIG_PINCTRL is not set
+CONFIG_GPIO_STARFIVE=y
+CONFIG_PINCTRL_SINGLE=y
+CONFIG_NVMEM=y
+CONFIG_NVMEM_RMEM=y
+CONFIG_STARFIVE_OTP=y
 CONFIG_PCI_ECAM_GENERIC=y
 CONFIG_BLK_DEV_NVME=y
 CONFIG_SYSCON_REBOOT_MODE=y
+CONFIG_NVMEM_REBOOT_MODE=y
 CONFIG_POWER_RESET_SYSCON=y
 CONFIG_POWER_RESET_SYSCON_POWEROFF=y
 CONFIG_POWER_RESET_HTIF_POWEROFF=y
+CONFIG_POWER_RESET_GPIO=y
+CONFIG_POWER_RESET_GPIO_RESTART=y
 CONFIG_VIRTIO_MMIO=y
+# CONFIG_VIRTIO_MENU is not set
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
diff --git a/arch/riscv/configs/sifive_defconfig b/arch/riscv/configs/sifive_defconfig
deleted file mode 100644
index 6ebe6eaf37..0000000000
--- a/arch/riscv/configs/sifive_defconfig
+++ /dev/null
@@ -1,129 +0,0 @@
-CONFIG_ARCH_RV64I=y
-CONFIG_SOC_SIFIVE=y
-CONFIG_BOARD_HIFIVE=y
-CONFIG_BOARD_RISCV_GENERIC_DT=y
-CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_STACK_SIZE=0x20000
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_RELOCATABLE=y
-CONFIG_PANIC_HANG=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_CONSOLE_ALLOW_COLOR=y
-CONFIG_PBL_CONSOLE=y
-CONFIG_PARTITION_DISK_EFI=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_STATE=y
-CONFIG_STATE_CRYPTO=y
-CONFIG_BOOTCHOOSER=y
-CONFIG_RESET_SOURCE=y
-CONFIG_MACHINE_ID=y
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_IMD=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_POLLER=y
-CONFIG_CMD_SLICE=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_BOOTCHOOSER=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_CMP=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA256SUM=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_FBTEST=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_2048=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_OF_DIFF=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_DISPLAY_TIMINGS=y
-CONFIG_CMD_OF_FIXUP_STATUS=y
-CONFIG_CMD_OF_OVERLAY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_DHRYSTONE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_FASTBOOT=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_VIRTIO_CONSOLE=y
-CONFIG_SERIAL_SIFIVE=y
-CONFIG_DRIVER_NET_MACB=y
-CONFIG_DRIVER_SPI_GPIO=y
-CONFIG_SPI_SIFIVE=y
-CONFIG_I2C=y
-CONFIG_I2C_GPIO=y
-CONFIG_MTD=y
-CONFIG_MTD_RAW_DEVICE=y
-CONFIG_MTD_CONCAT=y
-CONFIG_MTD_M25P80=y
-CONFIG_DRIVER_CFI=y
-CONFIG_DRIVER_CFI_BANK_WIDTH_8=y
-CONFIG_VIRTIO_BLK=y
-CONFIG_VIDEO=y
-CONFIG_FRAMEBUFFER_CONSOLE=y
-CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=y
-CONFIG_MCI=y
-CONFIG_MCI_SPI=y
-CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
-CONFIG_EEPROM_AT24=y
-CONFIG_HWRNG=y
-CONFIG_HW_RANDOM_VIRTIO=y
-CONFIG_GPIO_SIFIVE=y
-# CONFIG_PINCTRL is not set
-CONFIG_SYSCON_REBOOT_MODE=y
-CONFIG_POWER_RESET_SYSCON=y
-CONFIG_POWER_RESET_SYSCON_POWEROFF=y
-CONFIG_POWER_RESET_GPIO_RESTART=y
-CONFIG_VIRTIO_MMIO=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_FS_UIMAGEFS=y
-CONFIG_FS_PSTORE=y
-CONFIG_FS_SQUASHFS=y
-CONFIG_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_LZ4_DECOMPRESS=y
-CONFIG_ZSTD_DECOMPRESS=y
-CONFIG_XZ_DECOMPRESS=y
-CONFIG_BASE64=y
-CONFIG_DIGEST_CRC32_GENERIC=y
-CONFIG_IMD_TARGET=y
-CONFIG_BAREBOXENV_TARGET=y
-CONFIG_BAREBOXCRC32_TARGET=y
diff --git a/arch/riscv/configs/starfive_defconfig b/arch/riscv/configs/starfive_defconfig
deleted file mode 100644
index c4df2256f5..0000000000
--- a/arch/riscv/configs/starfive_defconfig
+++ /dev/null
@@ -1,131 +0,0 @@
-CONFIG_ARCH_RV64I=y
-CONFIG_SOC_STARFIVE=y
-CONFIG_BOARD_BEAGLEV=y
-CONFIG_BOARD_BEAGLEV_BETA=y
-CONFIG_BOARD_RISCV_GENERIC_DT=y
-CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_STACK_SIZE=0x20000
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_RELOCATABLE=y
-CONFIG_PANIC_HANG=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_SYSTEM_PARTITIONS=y
-CONFIG_IMD_TARGET=y
-CONFIG_CONSOLE_ALLOW_COLOR=y
-CONFIG_PBL_CONSOLE=y
-CONFIG_PARTITION_DISK_EFI=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_BAREBOXENV_TARGET=y
-CONFIG_BAREBOXCRC32_TARGET=y
-CONFIG_STATE=y
-CONFIG_STATE_CRYPTO=y
-CONFIG_BOOTCHOOSER=y
-CONFIG_RESET_SOURCE=y
-CONFIG_MACHINE_ID=y
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_IMD=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_POLLER=y
-CONFIG_CMD_SLICE=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_BOOTCHOOSER=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_CMP=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA256SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_WD=y
-CONFIG_CMD_2048=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_OF_DIFF=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_DISPLAY_TIMINGS=y
-CONFIG_CMD_OF_FIXUP_STATUS=y
-CONFIG_CMD_OF_OVERLAY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_DHRYSTONE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_NET_DESIGNWARE=y
-CONFIG_DRIVER_NET_DESIGNWARE_GENERIC=y
-CONFIG_DRIVER_NET_DESIGNWARE_STARFIVE=y
-CONFIG_MICREL_PHY=y
-CONFIG_SPI_MEM=y
-CONFIG_DRIVER_SPI_GPIO=y
-CONFIG_MCI=y
-CONFIG_MCI_DW=y
-CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
-CONFIG_SRAM=y
-CONFIG_STARFIVE_PWRSEQ=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_GPIO_OF=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_WATCHDOG=y
-CONFIG_STARFIVE_WDT=y
-CONFIG_HWRNG=y
-CONFIG_HW_RANDOM_STARFIVE=y
-CONFIG_GPIO_GENERIC_PLATFORM=y
-CONFIG_GPIO_STARFIVE=y
-CONFIG_PINCTRL_SINGLE=y
-CONFIG_NVMEM=y
-CONFIG_NVMEM_RMEM=y
-CONFIG_STARFIVE_OTP=y
-CONFIG_SYSCON_REBOOT_MODE=y
-CONFIG_NVMEM_REBOOT_MODE=y
-CONFIG_POWER_RESET_SYSCON=y
-CONFIG_POWER_RESET_SYSCON_POWEROFF=y
-CONFIG_POWER_RESET_GPIO=y
-CONFIG_POWER_RESET_GPIO_RESTART=y
-# CONFIG_VIRTIO_MENU is not set
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_FS_UIMAGEFS=y
-CONFIG_FS_PSTORE=y
-CONFIG_FS_SQUASHFS=y
-CONFIG_ZLIB=y
-CONFIG_BZLIB=y
-CONFIG_LZ4_DECOMPRESS=y
-CONFIG_ZSTD_DECOMPRESS=y
-CONFIG_XZ_DECOMPRESS=y
-CONFIG_BASE64=y
-CONFIG_DIGEST_CRC32_GENERIC=y
-- 
2.30.2



