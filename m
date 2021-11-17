Delivery-date: Wed, 17 Nov 2021 14:02:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnKZw-00060Y-EZ
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 14:02:20 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnKZv-0001kx-GY
	for lore@pengutronix.de; Wed, 17 Nov 2021 14:02:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3A9nzvwDkXJE8oe5kP7kDYj27RAn1zNiu9bqiVgP6NI=; b=v0h1uVAT/GNpHD
	pX+cz/tfOUhQSsUvyLyV3pO227JxP9XUCUAX2E7wpbQziYMkQ1x4b6DOLzezPwBDJBLvX/ns9uAmW
	42YSAa68vf86yB3mHSXe4JwPoQdZPByH/7bSE2sH4JorXuWJiIZceaWIT3Lr4R4gcNTYg/Q0ZrgBM
	UYfb8GQHGuAKOdOZaGvjK+KSnxGiJeDGG+OgoJwaoPmD4kePU5BVKmzxPOqmC/Am9w2asnLfZx1x/
	NmVqlHzzCVbeZB1thMF6nXSglyE+0Yng2E0Us06LG57Wv372dQJmLi+V0eoMG+WT3cumRwAR/8m3D
	JFvX0xjT9rpnF7gvhI6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnKYb-004lzg-5U; Wed, 17 Nov 2021 13:00:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnKYU-004lyp-C6
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 13:00:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mnKYR-0001T1-A0; Wed, 17 Nov 2021 14:00:47 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mnKYQ-00AEG1-RM; Wed, 17 Nov 2021 14:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Nov 2021 14:00:44 +0100
Message-Id: <20211117130044.2437471-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211117130044.2437471-1-a.fatoum@pengutronix.de>
References: <20211117130044.2437471-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_050050_436534_DBCBC9A8 
X-CRM114-Status: UNSURE (   9.29  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM64: qemu-virt64: extend config for PCI,
 Virt I/O and more
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Besides some generic features like initrd booting and bootloader spec,
there have been some drivers added since last time the config was
touched, e.g. Virt I/O networking, input and generic ECAM PCI. Extend
the config to support these. Example of something newly possible:

  test/emulate.pl qemu_virt64_defconfig -- -device VGA

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/qemu_virt64_defconfig | 35 ++++++++++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/qemu_virt64_defconfig b/arch/arm/configs/qemu_virt64_defconfig
index 17509ce9d644..57e715bf8d09 100644
--- a/arch/arm/configs/qemu_virt64_defconfig
+++ b/arch/arm/configs/qemu_virt64_defconfig
@@ -1,25 +1,31 @@
 CONFIG_ARCH_ARM64_VIRT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_MMU=y
 # CONFIG_MMU_EARLY is not set
+CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT=""
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_IMD=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_POLLER=y
 CONFIG_STATE=y
 CONFIG_BOOTCHOOSER=y
 CONFIG_RESET_SOURCE=y
 CONFIG_MACHINE_ID=y
 CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_POLLER=y
+CONFIG_CMD_SLICE=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
@@ -32,6 +38,7 @@ CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
 CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_SLEEP=y
@@ -41,6 +48,8 @@ CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_FBTEST=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
@@ -48,6 +57,7 @@ CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_SMC=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_DIFF=y
 CONFIG_CMD_OF_NODE=y
@@ -56,11 +66,20 @@ CONFIG_CMD_OF_DISPLAY_TIMINGS=y
 CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_CMD_STATE=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_SNTP=y
+CONFIG_NET_FASTBOOT=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
+CONFIG_OF_OVERLAY_LIVE=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_VIRTIO_CONSOLE=y
+CONFIG_DRIVER_NET_VIRTIO=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
@@ -68,11 +87,23 @@ CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_DISK=y
 CONFIG_DISK_WRITE=y
 CONFIG_VIRTIO_BLK=y
+CONFIG_VIDEO=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
+CONFIG_SOUND=y
+CONFIG_STATE_DRV=y
+CONFIG_VIRTIO_INPUT=y
 CONFIG_HWRNG=y
 CONFIG_HW_RANDOM_VIRTIO=y
 # CONFIG_PINCTRL is not set
+CONFIG_NVMEM=y
+CONFIG_NVMEM_RMEM=y
+CONFIG_PCI_ECAM_GENERIC=y
+CONFIG_NVMEM_REBOOT_MODE=y
 CONFIG_VIRTIO_MMIO=y
+CONFIG_VIRTIO_PCI=y
 CONFIG_FS_EXT4=y
+CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_PSTORE=y
 CONFIG_FS_PSTORE_CONSOLE=y
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

