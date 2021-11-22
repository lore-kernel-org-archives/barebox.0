Delivery-date: Mon, 22 Nov 2021 21:53:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mpGJF-00070z-9P
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 21:53:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mpGJD-0002HP-8O
	for lore@pengutronix.de; Mon, 22 Nov 2021 21:53:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xYE53dogrCiTTYPDlF2tDUAV77QzBrighTKB+UJ27Mg=; b=Imw3pxPPPjPMD0
	ql4vOOqJyfeUfqXUCK4Oxpav98j72Te1OktJzV/SsajI+O75WJxW3V3EA3VWdcAaLvXAhGfj6CnX7
	907ZQnhuNui6zARH7b7E0rF63jwToVCBBcV0hXJ9GLefkqd90BJY9MLpyGU5JZHG3f3LPGYXm0y40
	e72gSPwrhO0xLlgcndatwpxqDy5V3XBZodatUMLCWipitK28XZDa90peMWGmN4mzY6YGmPJDN2f9a
	Sw58X0oOibU94xR7rBHjMV4emLnVmwJXLHSV/QYfjsLYtVJF155SnuRLECd8d8lIhUOCnwBB08ZwP
	YlxHOcgB2HKB/x/UCdMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpGHU-00HZw1-2P; Mon, 22 Nov 2021 20:51:16 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpGHP-00HZuR-09
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 20:51:12 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 5D8861BF205;
 Mon, 22 Nov 2021 20:51:05 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Nov 2021 21:50:56 +0100
Message-Id: <20211122205056.267375-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_125111_352625_DC48DE8F 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] RISC-V: configs: virt: enable networking and PCI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Recently, we have gained support for PCI and virtio networking. Enable
both in the config as well as related useful options that depends on
them.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/Kconfig.socs             |  1 +
 arch/riscv/configs/virt32_defconfig | 20 ++++++++++++++++----
 arch/riscv/configs/virt64_defconfig | 22 +++++++++++++++++-----
 3 files changed, 34 insertions(+), 9 deletions(-)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index bd4a44a575ef..63907a1b4463 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -18,6 +18,7 @@ config SOC_VIRT
 	select RISCV_S_MODE
 	select BOARD_RISCV_GENERIC_DT
 	select HAS_CACHE
+	select HW_HAS_PCI
 	help
 	  Generates an image tht can be be booted by QEMU. The image is called
 	  barebox-dt-2nd.img
diff --git a/arch/riscv/configs/virt32_defconfig b/arch/riscv/configs/virt32_defconfig
index 218fee57b711..137f649d1548 100644
--- a/arch/riscv/configs/virt32_defconfig
+++ b/arch/riscv/configs/virt32_defconfig
@@ -10,14 +10,10 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_IMD_TARGET=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_BAREBOXENV_TARGET=y
-CONFIG_BAREBOXCRC32_TARGET=y
-CONFIG_POLLER=y
 CONFIG_STATE=y
 CONFIG_STATE_CRYPTO=y
 CONFIG_BOOTCHOOSER=y
@@ -47,6 +43,8 @@ CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SPLASH=y
 CONFIG_CMD_FBTEST=y
@@ -72,8 +70,13 @@ CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_DHRYSTONE=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_FASTBOOT=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_VIRTIO_CONSOLE=y
+CONFIG_DRIVER_NET_VIRTIO=y
 CONFIG_DRIVER_SPI_GPIO=y
 CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
@@ -88,18 +91,24 @@ CONFIG_DISK_WRITE=y
 CONFIG_VIRTIO_BLK=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
 CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=y
 CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
 CONFIG_EEPROM_AT24=y
+CONFIG_VIRTIO_INPUT=y
 CONFIG_HWRNG=y
 CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_GPIO_GENERIC_PLATFORM=y
 # CONFIG_PINCTRL is not set
+CONFIG_PCI_ECAM_GENERIC=y
+CONFIG_BLK_DEV_NVME=y
 CONFIG_SYSCON_REBOOT_MODE=y
 CONFIG_POWER_RESET_SYSCON=y
 CONFIG_POWER_RESET_SYSCON_POWEROFF=y
 CONFIG_VIRTIO_MMIO=y
 CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
@@ -114,3 +123,6 @@ CONFIG_XZ_DECOMPRESS=y
 CONFIG_BASE64=y
 CONFIG_LZO_DECOMPRESS=y
 CONFIG_DIGEST_CRC32_GENERIC=y
+CONFIG_IMD_TARGET=y
+CONFIG_BAREBOXENV_TARGET=y
+CONFIG_BAREBOXCRC32_TARGET=y
diff --git a/arch/riscv/configs/virt64_defconfig b/arch/riscv/configs/virt64_defconfig
index 04a4f1e2f4cb..7dbdaa126d17 100644
--- a/arch/riscv/configs/virt64_defconfig
+++ b/arch/riscv/configs/virt64_defconfig
@@ -1,5 +1,5 @@
-CONFIG_SOC_VIRT=y
 CONFIG_ARCH_RV64I=y
+CONFIG_SOC_VIRT=y
 CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_STACK_SIZE=0x20000
 CONFIG_MALLOC_SIZE=0x0
@@ -11,14 +11,10 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_IMD_TARGET=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_BAREBOXENV_TARGET=y
-CONFIG_BAREBOXCRC32_TARGET=y
-CONFIG_POLLER=y
 CONFIG_STATE=y
 CONFIG_STATE_CRYPTO=y
 CONFIG_BOOTCHOOSER=y
@@ -48,6 +44,8 @@ CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SPLASH=y
 CONFIG_CMD_FBTEST=y
@@ -73,8 +71,13 @@ CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_DHRYSTONE=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_FASTBOOT=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_VIRTIO_CONSOLE=y
+CONFIG_DRIVER_NET_VIRTIO=y
 CONFIG_DRIVER_SPI_GPIO=y
 CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
@@ -89,18 +92,24 @@ CONFIG_DISK_WRITE=y
 CONFIG_VIRTIO_BLK=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
 CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=y
 CONFIG_CLOCKSOURCE_DUMMY_RATE=60000
 CONFIG_EEPROM_AT24=y
+CONFIG_VIRTIO_INPUT=y
 CONFIG_HWRNG=y
 CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_GPIO_GENERIC_PLATFORM=y
 # CONFIG_PINCTRL is not set
+CONFIG_PCI_ECAM_GENERIC=y
+CONFIG_BLK_DEV_NVME=y
 CONFIG_SYSCON_REBOOT_MODE=y
 CONFIG_POWER_RESET_SYSCON=y
 CONFIG_POWER_RESET_SYSCON_POWEROFF=y
 CONFIG_VIRTIO_MMIO=y
 CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
@@ -115,3 +124,6 @@ CONFIG_XZ_DECOMPRESS=y
 CONFIG_BASE64=y
 CONFIG_LZO_DECOMPRESS=y
 CONFIG_DIGEST_CRC32_GENERIC=y
+CONFIG_IMD_TARGET=y
+CONFIG_BAREBOXENV_TARGET=y
+CONFIG_BAREBOXCRC32_TARGET=y
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

