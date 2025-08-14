Delivery-date: Thu, 14 Aug 2025 16:12:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYhJ-000X92-11
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 16:12:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYhH-00014I-MB
	for lore@pengutronix.de; Thu, 14 Aug 2025 16:12:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VKeLbVDgrqAA1lrhJAgqxcFoxpc+nQ5rou3xJf76tbo=; b=xIHyhFmOoohg2r5wWzH0EfRCae
	7W52ttOIcqR3dYNz7MOQDz4MXTivBLHtS3ODLo81Zf6SQ0FreA+4Ekt6491e3bTb/COeUan1z/9xP
	XCKbQyUPQs9dGjK3qAgtLWD3PWYw8cEVRXyo8lIIjaQsBs+diZu5Pw235RYTWdspK09vcH+AsL3WZ
	dUj0Z82jqaOWLzvTMZsN69xFENP+nRA70ay08MeMYKwXq0YgSmd9llT2gHWyUQfNi9OPRGKQTxX4H
	PNiTkqWmRZ1kKFTPHmF4PLmMbNAujnd8dD+7QXBkOh2hSisjyaqb77V8Wu6mFpobD+y+YK8qjJZJT
	an8lA5nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYgo-0000000HBeT-2Aey;
	Thu, 14 Aug 2025 14:12:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7r-0000000H4Pk-3kZH
	for barebox@bombadil.infradead.org;
	Thu, 14 Aug 2025 13:36:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=VKeLbVDgrqAA1lrhJAgqxcFoxpc+nQ5rou3xJf76tbo=; b=mRBLYiyNrDIQp6TuLPkQ2GZFgu
	l+P3T7wPnDq5wbII60qsRlHlMGStZdJ8728eL0vBJ1gMFWgoGMB1W9JnGhiB95iLraGckWi77hoZb
	OIpdD6dKzHd8CvRwoxyMp+osTX/b6ahRUEqWiNOfhAKdDH5nRZf+yrObz6I0hKL/seAe5kNy/+NjL
	Yo4sF3ViKfTbFsm5D5kRfh7g9KV/EbmZQVGhLwhfzAebmdyTurPtjOr0YT6HJLs33pER8UebKsAYF
	sWnG7RRX7fbo2JQCJxh45geDd+R/ALrNaAjIPUVjythuuEoDK8nsJEpw7WFKTFyNUEuG7752YMopW
	WclxrN9w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7m-0000000GPTr-12tg
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:36:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7k-0002jh-8X; Thu, 14 Aug 2025 15:36:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7k-000GOO-0B;
	Thu, 14 Aug 2025 15:36:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-26;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:06:59 +0200
Message-Id: <20250814130702.4039241-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_143610_466190_C259EDC1 
X-CRM114-Status: GOOD (  11.06  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_75_100 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 14/17] ARM: configs: add virt32_secure_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The security policy support does not allow for incomplete configs and
thus sconfig files must be refreshed when config options they depend on
changes. This means that a security profile that's up-to-date with
respect to one .config is often outdated with respect to another.

To allow easy development and experimentation, let's make 32-bit ARM
Qemu Virt our reference platform and add a new config for it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/virt32_secure_defconfig | 301 +++++++++++++++++++++++
 test/arm/virt32_secure_defconfig.yaml    |  20 ++
 2 files changed, 321 insertions(+)
 create mode 100644 arch/arm/configs/virt32_secure_defconfig
 create mode 100644 test/arm/virt32_secure_defconfig.yaml

diff --git a/arch/arm/configs/virt32_secure_defconfig b/arch/arm/configs/virt32_secure_defconfig
new file mode 100644
index 000000000000..34cc49405495
--- /dev/null
+++ b/arch/arm/configs/virt32_secure_defconfig
@@ -0,0 +1,301 @@
+CONFIG_ARCH_VERSATILE=y
+CONFIG_ARCH_VEXPRESS=y
+CONFIG_MACH_VEXPRESS=y
+CONFIG_MACH_VIRT=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_EXCEPTIONS_PBL=y
+CONFIG_ARM_UNWIND=y
+CONFIG_ARM_SEMIHOSTING=y
+CONFIG_BOOT_ATAGS=y
+CONFIG_ARM_BOOTM_ELF=y
+CONFIG_ARM_BOOTM_FIP=y
+CONFIG_NAME="virt32_secure_defconfig"
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="barebox> "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_AIMAGE=y
+CONFIG_BOOTM_FITIMAGE=y
+CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PBL_CONSOLE=y
+CONFIG_CONSOLE_RATP=y
+CONFIG_RATP_CMD_I2C=y
+CONFIG_RATP_CMD_GPIO=y
+CONFIG_PARTITION_DISK_EFI=y
+# CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE is not set
+# CONFIG_PARTITION_DISK_EFI_GPT_COMPARE is not set
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_SECURITY_POLICY=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG=y
+CONFIG_TLV=y
+CONFIG_STATE=y
+CONFIG_BOOTCHOOSER=y
+CONFIG_RESET_SOURCE=y
+CONFIG_MACHINE_ID=y
+CONFIG_SYSTEMD_OF_WATCHDOG=y
+CONFIG_FASTBOOT_SPARSE=y
+CONFIG_FASTBOOT_CMD_OEM=y
+CONFIG_CMD_TUTORIAL=y
+CONFIG_CMD_CLASS=y
+CONFIG_CMD_DEVLOOKUP=y
+CONFIG_CMD_DEVUNBIND=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_CMD_BLKSTATS=y
+CONFIG_CMD_REGULATOR=y
+CONFIG_CMD_PM_DOMAIN=y
+CONFIG_CMD_NVMEM=y
+CONFIG_CMD_VARINFO=y
+CONFIG_CMD_MMC=y
+CONFIG_CMD_MMC_EXTCSD=y
+CONFIG_CMD_POLLER=y
+CONFIG_CMD_SLICE=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_SAVES=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_BOOTCHOOSER=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FINDMNT=y
+CONFIG_CMD_PARTED=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_CREATENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_STAT=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA224SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_BASE64=y
+CONFIG_CMD_SHA384SUM=y
+CONFIG_CMD_SHA512SUM=y
+CONFIG_CMD_FIPTOOL=y
+CONFIG_CMD_FIPTOOL_WRITE=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_IP=y
+CONFIG_CMD_ETHLOG=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_MENUTREE=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_FBTEST=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MEMTESTER=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_TRUNCATE=y
+CONFIG_CMD_SYNC=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_PWM=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_NANDTEST=y
+CONFIG_CMD_NAND_BITFLIP=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_SMC=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_USBGADGET=y
+CONFIG_CMD_DFU=y
+CONFIG_CMD_WD=y
+CONFIG_CMD_SCONFIG_MODIFY=y
+CONFIG_CMD_BLOBGEN=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_PASSWD=y
+CONFIG_PASSWD_MODE_STAR=y
+CONFIG_CMD_2048=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_FIRMWARELOAD=y
+CONFIG_CMD_KALLSYMS=y
+CONFIG_CMD_OF_COMPATIBLE=y
+CONFIG_CMD_OF_DIFF=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OF_FIXUP=y
+CONFIG_CMD_OF_FIXUP_STATUS=y
+CONFIG_CMD_OF_OVERLAY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_WATCH=y
+CONFIG_CMD_UPTIME=y
+CONFIG_CMD_TLV=y
+CONFIG_CMD_DHRYSTONE=y
+CONFIG_CMD_SPD_DECODE=y
+CONFIG_CMD_SEED=y
+CONFIG_CMD_STACKSMASH=y
+CONFIG_NET=y
+CONFIG_NET_ETHADDR_FROM_MACHINE_ID=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_FASTBOOT=y
+CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
+CONFIG_DEEP_PROBE_DEFAULT=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
+CONFIG_OF_OVERLAY_LIVE=y
+CONFIG_AIODEV=y
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_VIRTIO_CONSOLE=y
+CONFIG_DRIVER_NET_VIRTIO=y
+CONFIG_DRIVER_SPI_GPIO=y
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
+CONFIG_I2C_MUX=y
+CONFIG_MTD=y
+CONFIG_MTD_RAW_DEVICE=y
+CONFIG_MTD_CONCAT=y
+CONFIG_MTD_DATAFLASH=y
+CONFIG_MTD_M25P80=y
+CONFIG_DRIVER_CFI=y
+CONFIG_NAND=y
+CONFIG_NAND_ALLOW_ERASE_BAD=y
+CONFIG_MTD_UBI=y
+CONFIG_MTD_UBI_FASTMAP=y
+CONFIG_VIRTIO_BLK=y
+CONFIG_DISK_AHCI=y
+CONFIG_DISK_INTF_PLATFORM_IDE=y
+CONFIG_USB_HOST=y
+CONFIG_USB_DWC2_HOST=y
+CONFIG_USB_DWC2_GADGET=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_ULPI=y
+CONFIG_USB_STORAGE=y
+CONFIG_USB_ONBOARD_DEV=y
+CONFIG_TYPEC_TUSB320=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_USB_GADGET_FASTBOOT=y
+CONFIG_USB_GADGET_MASS_STORAGE=y
+CONFIG_VIDEO=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
+CONFIG_DRIVER_VIDEO_SIMPLEFB=y
+CONFIG_DRIVER_VIDEO_RAMFB=y
+CONFIG_DRIVER_VIDEO_BACKLIGHT=y
+CONFIG_DRIVER_VIDEO_BACKLIGHT_PWM=y
+CONFIG_DRIVER_VIDEO_SIMPLE_PANEL=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_DW=y
+CONFIG_MCI_DW_PIO=y
+CONFIG_MCI_MMCI=y
+CONFIG_COMMON_CLK_SCMI=y
+CONFIG_MFD_ACT8846=y
+CONFIG_MFD_DA9063=y
+CONFIG_MFD_MC13XXX=y
+CONFIG_MFD_MC34704=y
+CONFIG_MFD_MC9SDZ60=y
+CONFIG_MFD_STMPE=y
+CONFIG_MFD_STPMIC1=y
+CONFIG_UBOOTVAR=y
+CONFIG_STORAGE_BY_ALIAS=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_PWM=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_EEPROM_AT25=y
+CONFIG_EEPROM_AT24=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_INPUT_SPECIALKEYS=y
+CONFIG_VIRTIO_INPUT=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_POLLER=y
+CONFIG_PWM=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
+CONFIG_GPIO_74164=y
+CONFIG_GPIO_GENERIC_PLATFORM=y
+CONFIG_GPIO_STMPE=y
+CONFIG_PINCTRL_SINGLE=y
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED=y
+CONFIG_REGULATOR_ARM_SCMI=y
+CONFIG_REMOTEPROC=y
+CONFIG_RESET_CONTROLLER=y
+CONFIG_PCI_ECAM_GENERIC=y
+CONFIG_ARM_SCMI_PROTOCOL=y
+CONFIG_GENERIC_PHY=y
+CONFIG_USB_NOP_XCEIV=y
+CONFIG_SYSCON_REBOOT_MODE=y
+CONFIG_POWER_RESET_SYSCON=y
+CONFIG_VIRTIO_MMIO=y
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_9P_FS=y
+CONFIG_9P_FS_WRITE=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_UBIFS=y
+CONFIG_FS_UBIFS_COMPRESSION_LZO=y
+CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
+CONFIG_FS_UBIFS_COMPRESSION_ZSTD=y
+CONFIG_FS_BPKFS=y
+CONFIG_FS_UIMAGEFS=y
+CONFIG_FS_SMHFS=y
+CONFIG_FS_PSTORE=y
+CONFIG_FS_PSTORE_CONSOLE=y
+CONFIG_FS_PSTORE_RAMOOPS=y
+CONFIG_FS_SQUASHFS=y
+CONFIG_FS_RATP=y
+CONFIG_FS_UBOOTVARFS=y
+# CONFIG_INSECURE is not set
+CONFIG_SECURITY_POLICY=y
+CONFIG_SECURITY_POLICY_INIT="lockdown"
+CONFIG_SECURITY_POLICY_DEFAULT_PANIC=y
+CONFIG_BUG_ON_DATA_CORRUPTION=y
+CONFIG_DIGEST_SHA1_ARM=y
+CONFIG_DIGEST_SHA256_ARM=y
+CONFIG_CRC8=y
+CONFIG_PNG=y
+CONFIG_FONT_8x8=y
+CONFIG_FONT_TER16x32=y
diff --git a/test/arm/virt32_secure_defconfig.yaml b/test/arm/virt32_secure_defconfig.yaml
new file mode 100644
index 000000000000..618cb6a0fb05
--- /dev/null
+++ b/test/arm/virt32_secure_defconfig.yaml
@@ -0,0 +1,20 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu-system-arm
+        machine: virt
+        cpu: cortex-a7
+        memory: 1024M
+        kernel: barebox-dt-2nd.img
+        display: qemu-default
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+images:
+  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+imports:
+  -  ../strategy.py
-- 
2.39.5



