Delivery-date: Thu, 15 Jan 2026 13:00:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM1f-001a9R-1a
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:00:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM1d-0000zL-6Z
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:00:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FHVbuV3kLr62MH9Y3gAHttSWbtXkc9oVoH9PyUuwv50=; b=ldAMzEk7QKEV6MzQH0NTWqNgkU
	0VxGwCNDOM5avuOwf7HyMMdQDrydcW6+UXqKIrffvVDMbWXpcCj20EhxRZdylkVSd3ZaGBs/ppeYP
	rIaOko01YeGxgsyYlvI08qEakAzeuP7sr/AD5VWRQ0Icz0f0EQW6STx3Pehhsqg7mvmJAqe7KyDZC
	XT4RPXWcta3OiV7Wa+aAbGVAHPdsL+1gRZRsoo0dtWtMhWyTc4tj0TyninJZ0arZoBmHsgDMKOqqe
	KoQ/nMIWfAzJyD74rEa3kcVA67ugyArcYBx6Ks0u6S+AhV0/DsSGtsKueNDCXaLZlI6mA+RHbrp9D
	thQw7Fnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM0o-0000000CHLb-1rXf;
	Thu, 15 Jan 2026 11:59:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM0k-0000000CHGU-1zsF
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 11:59:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM0i-0000JD-PF; Thu, 15 Jan 2026 12:59:32 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Claude <noreply@claude.ai>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 15 Jan 2026 12:54:38 +0100
Message-ID: <20260115115924.3428886-13-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260115115924.3428886-1-a.fatoum@barebox.org>
References: <20260115115924.3428886-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_035934_692357_F491A76D 
X-CRM114-Status: GOOD (  17.86  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/12] test: arm: add simple driver/command module test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make sure that this experimental command support doesn't bitrot, add
two tests to exercise it:

  - The ECAM PCI driver module is loaded and we verify that PCI devices
    are only detected after it was loaded

  - The pm_domain command module is loaded and we verify that the
    command only exists after it was loaded

The pm_domain command was chosen, because the resulting module has no
references to _GLOBAL_OFFSET_TABLE_ as this seems to be not yet supported.

The hope is that modules32_defconfig will be removed in future in favor
of a fragment that just enables modules on top of
multi_v7_defconfig.yaml. This is not yet possible, however, because not
all drivers have been fixed yet to be able to build with CONFIG_MODULES
(repeated EXPORT_SYMBOL are a common issue for example).

Co-developed-by: Claude <noreply@claude.ai>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 .github/workflows/test-labgrid-pytest.yml |   4 +
 arch/arm/configs/modules32_defconfig      | 230 ++++++++++++++++++++++
 test/arm/modules32_defconfig.yaml         |  27 +++
 test/py/test_module.py                    |  54 +++++
 4 files changed, 315 insertions(+)
 create mode 100644 arch/arm/configs/modules32_defconfig
 create mode 100644 test/arm/modules32_defconfig.yaml
 create mode 100644 test/py/test_module.py

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index d387f9e3867a..c06bc5f11faa 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -23,6 +23,10 @@ jobs:
             lgenv: 'test/arm/*@multi_v7_defconfig.yaml'
             defconfig: multi_v7_defconfig
 
+          - ARCH: arm
+            lgenv: 'test/arm/modules32_defconfig.yaml'
+            defconfig: modules32_defconfig
+
           - ARCH: arm
             lgenv: test/arm/multi_v8_defconfig.yaml
             defconfig: multi_v8_defconfig
diff --git a/arch/arm/configs/modules32_defconfig b/arch/arm/configs/modules32_defconfig
new file mode 100644
index 000000000000..0e32a4dd9c3e
--- /dev/null
+++ b/arch/arm/configs/modules32_defconfig
@@ -0,0 +1,230 @@
+CONFIG_ARCH_LAYERSCAPE=y
+CONFIG_ARCH_SAMSUNG=y
+CONFIG_ARCH_VERSATILE=y
+CONFIG_ARCH_VEXPRESS=y
+CONFIG_MACH_VIRT=y
+CONFIG_AEABI=y
+CONFIG_ARM_BOARD_APPEND_ATAG=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_EXCEPTIONS_PBL=y
+CONFIG_ARM_UNWIND=y
+# CONFIG_ARM_MMU_PERMISSIONS is not set
+CONFIG_ARM_SEMIHOSTING=y
+CONFIG_BOOT_ATAGS=y
+CONFIG_ARM_BOOTM_FIP=y
+CONFIG_NAME="modules32_defconfig"
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_EXPERIMENTAL=y
+CONFIG_MODULES=y
+CONFIG_MODULES_ENVIRONMENT=y
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
+CONFIG_TLV=y
+CONFIG_STATE=y
+CONFIG_BOOTCHOOSER=y
+CONFIG_RESET_SOURCE=y
+CONFIG_MACHINE_ID=y
+CONFIG_FASTBOOT_CMD_OEM=y
+CONFIG_CMD_CLASS=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_CMD_REGULATOR=y
+CONFIG_CMD_PM_DOMAIN=m
+CONFIG_CMD_BFETCH=y
+CONFIG_CMD_MMC=y
+CONFIG_CMD_MMC_EXTCSD=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_BOOTCHOOSER=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_FINDMNT=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA224SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
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
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_NANDTEST=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_SPI=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_LSMOD=y
+CONFIG_CMD_OF_DIFF=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OF_FIXUP_STATUS=y
+CONFIG_CMD_OF_OVERLAY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_TLV=y
+CONFIG_NET=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_FASTBOOT=y
+CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
+CONFIG_DEEP_PROBE_DEFAULT=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_VIRTIO_CONSOLE=y
+CONFIG_DRIVER_NET_SMC91111=y
+CONFIG_AT803X_PHY=y
+CONFIG_MICREL_PHY=y
+CONFIG_REALTEK_PHY=y
+CONFIG_SMSC_PHY=y
+CONFIG_MDIO_BITBANG=y
+CONFIG_MDIO_GPIO=y
+CONFIG_MDIO_BUS_MUX_GPIO=y
+CONFIG_DSA=y
+CONFIG_DRIVER_NET_KSZ8873=y
+CONFIG_DRIVER_SPI_GPIO=y
+CONFIG_I2C=y
+CONFIG_I2C_VERSATILE=y
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
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_FB_SSD1307=y
+CONFIG_DRIVER_VIDEO_SIMPLEFB=y
+CONFIG_DRIVER_VIDEO_EDID=y
+CONFIG_DRIVER_VIDEO_BACKLIGHT=y
+CONFIG_DRIVER_VIDEO_BACKLIGHT_PWM=y
+CONFIG_DRIVER_VIDEO_SIMPLE_PANEL=y
+CONFIG_DRIVER_VIDEO_DW_HDMI=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_MMCI=y
+CONFIG_COMMON_CLK_SCMI=y
+CONFIG_MFD_DA9063=y
+CONFIG_MFD_STMPE=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_EEPROM_AT25=y
+CONFIG_EEPROM_AT24=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_INPUT_SPECIALKEYS=y
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
+CONFIG_RESET_CONTROLLER=y
+CONFIG_PCI_ECAM_GENERIC=m
+CONFIG_ARM_SCMI_PROTOCOL=y
+CONFIG_SYSCON_REBOOT_MODE=y
+CONFIG_POWER_RESET_SYSCON=y
+CONFIG_VIRTIO_MMIO=y
+CONFIG_TEE=y
+CONFIG_OPTEE=y
+CONFIG_OPTEE_AVB_PERSISTENT_VALUES=y
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
+CONFIG_FS_UIMAGEFS=y
+CONFIG_FS_SMHFS=y
+CONFIG_FS_PSTORE=y
+CONFIG_FS_PSTORE_CONSOLE=y
+CONFIG_FS_PSTORE_RAMOOPS=y
+CONFIG_FS_SQUASHFS=y
+CONFIG_FS_RATP=y
+CONFIG_FS_QEMU_FW_CFG=y
+CONFIG_DIGEST_SHA1_ARM=y
+CONFIG_DIGEST_SHA256_ARM=y
+CONFIG_CRC8=y
+CONFIG_PNG=y
+CONFIG_NLS=y
diff --git a/test/arm/modules32_defconfig.yaml b/test/arm/modules32_defconfig.yaml
new file mode 100644
index 000000000000..aa01881f0ecc
--- /dev/null
+++ b/test/arm/modules32_defconfig.yaml
@@ -0,0 +1,27 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu-system-arm
+        machine: virt
+        cpu: cortex-a7
+        memory: 64M  # To avoid indirection via (unsupported) PLTs
+        bios: barebox-qemu-virt.img
+        display: qemu-default
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+      - testfs
+      - modules
+    env:
+      data/modules.env: !template "@$LG_BUILDDIR/defaultenv/barebox_modules_env"
+      init/loadenv-modules: |
+        #!/bin/sh
+        loadenv /env/data/modules.env /modules
+images:
+  barebox-qemu-virt.img: !template "$LG_BUILDDIR/images/barebox-qemu-virt.img"
+imports:
+  - ../strategy.py
diff --git a/test/py/test_module.py b/test/py/test_module.py
new file mode 100644
index 000000000000..de9112852651
--- /dev/null
+++ b/test/py/test_module.py
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+import pytest
+from .helper import skip_disabled
+
+
+def test_insmod_driver(barebox, barebox_config, env):
+    """Test that insmod works for drivers."""
+    skip_disabled(barebox_config, "CONFIG_MODULES", "CONFIG_CMD_LSMOD")
+
+    if 'modules' not in env.get_target_features():
+        pytest.skip("modules feature not enabled for this board")
+
+    [stdout], _, ret = barebox.run("lspci")
+    assert ret != 0, "Test assumes all PCI drivers are modules"
+    assert stdout == "No PCI bus detected"
+
+    # First load the module
+    barebox.run_check("insmod /modules/drivers/pci/pci-ecam-generic.ko")
+
+    # Check lsmod output
+    stdout = barebox.run_check("lsmod")
+    output = "\n".join(stdout)
+    assert "pci_ecam_generic" in output, \
+        f"Module not found in lsmod output: {output}"
+
+    stdout, _, ret = barebox.run("lspci")
+    assert ret == 0, "Loading PCI driver should result in PCI bus detection"
+    assert len(stdout) > 1 or stdout[0] != "No PCI bus detected"
+
+
+def test_insmod_command(barebox, barebox_config, env):
+    """Test that insmod works for commands."""
+    skip_disabled(barebox_config, "CONFIG_MODULES", "CONFIG_CMD_LSMOD")
+
+    if 'modules' not in env.get_target_features():
+        pytest.skip("modules feature not enabled for this board")
+
+    [stdout], _, ret = barebox.run("pm_domain")
+    assert ret != 0, "pm_domain shouldn't yet exist"
+    assert stdout == "pm_domain: Command not found"
+
+    # First load the module
+    barebox.run_check("insmod /modules/commands/pm_domain.ko")
+
+    # Check lsmod output
+    stdout = barebox.run_check("lsmod")
+    output = "\n".join(stdout)
+    assert "pm_domain" in output, \
+        f"Module not found in lsmod output: {output}"
+
+    stdout, _, ret = barebox.run("pm_domain")
+    assert ret == 0, "pm_domain should exist now"
+    assert stdout[0] != "pm_domain: Command not found"
-- 
2.47.3



