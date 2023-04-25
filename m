Delivery-date: Tue, 25 Apr 2023 15:37:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prIr8-00GvQo-Ry
	for lore@lore.pengutronix.de; Tue, 25 Apr 2023 15:37:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prIr8-00004z-3H
	for lore@pengutronix.de; Tue, 25 Apr 2023 15:37:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=whvs+rImgNA3mYFsob/ohWEXUSuPXqLCk4jwxrxPqNE=; b=iT+061i+VTRiAOciwt6sM2PhVD
	JsqVuv3DpZ4SfHkRYJZafVFD/xNW94xcLCQhfzZ0ur+HqYRzqmEt3Czza/9cE66fhe/qSi+qfQcK0
	7FsF5feR43VjZnpNPcVFfWBqxoN5GiH+Ad2DWvbgznVYy+stfzXfsGQr7yQ3PBtmjIcoSr08s9pHW
	xrIwmBktLAzpaMtR1RgwYiKT8Jw9MHvK4RauNEIpjk78nm5zhsLRb+I2eM4JrhZF8sacRizgSDbhW
	sp6NtFZGyoBhbmNHStl5OwJAVbKjgrCPAszlJzYP6Krr/7v5bxIAY74o4g3sEFmhTSdHaLCVyFtSC
	4y0f2dlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prIpk-001Gbk-0N;
	Tue, 25 Apr 2023 13:35:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prIpf-001GY5-38
	for barebox@lists.infradead.org;
	Tue, 25 Apr 2023 13:35:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1prIpY-0008Hb-G5; Tue, 25 Apr 2023 15:35:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1prIpX-00Di7L-3L; Tue, 25 Apr 2023 15:35:39 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1prIpW-0019GR-8Z; Tue, 25 Apr 2023 15:35:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 25 Apr 2023 15:35:35 +0200
Message-Id: <20230425133535.273920-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425133535.273920-1-s.hauer@pengutronix.de>
References: <20230425133535.273920-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_063548_007501_7AA66FAD 
X-CRM114-Status: GOOD (  13.72  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: remove vexpress_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

vexpress is now covered by multi_v7_defconfig. To reduce the number of
defconfigs remove vexpress_defconfig. While at it add a hint to the
documentation how to build the vexpress images.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/arm-qemu-vexpress.rst |  3 +
 arch/arm/configs/vexpress_defconfig        | 76 ----------------------
 2 files changed, 3 insertions(+), 76 deletions(-)
 delete mode 100644 arch/arm/configs/vexpress_defconfig

diff --git a/Documentation/boards/arm-qemu-vexpress.rst b/Documentation/boards/arm-qemu-vexpress.rst
index 010eae04a2..335af46990 100644
--- a/Documentation/boards/arm-qemu-vexpress.rst
+++ b/Documentation/boards/arm-qemu-vexpress.rst
@@ -7,6 +7,9 @@ ARM Qemu vexpress
 Running barebox on QEMU vexpress machine
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
+Images for the vexpress platform are built as part of the
+multi_v7_defconfig.
+
 Usage::
 
 	$ qemu-system-arm -m 1024M \
diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
deleted file mode 100644
index d58ca7ebd0..0000000000
--- a/arch/arm/configs/vexpress_defconfig
+++ /dev/null
@@ -1,76 +0,0 @@
-CONFIG_ARCH_VEXPRESS=y
-CONFIG_MACH_VEXPRESS=y
-CONFIG_MACH_VIRT=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_PROMPT="vexpress: "
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_CONSOLE_ALLOW_COLOR=y
-CONFIG_PARTITION_DISK_EFI=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_SERIAL_AMBA_PL011=y
-CONFIG_VIRTIO_CONSOLE=y
-CONFIG_DRIVER_NET_SMC91111=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_MTD_CONCAT=y
-CONFIG_DRIVER_CFI=y
-CONFIG_VIRTIO_BLK=y
-CONFIG_MCI=y
-CONFIG_MCI_MMCI=y
-CONFIG_HWRNG=y
-CONFIG_HW_RANDOM_VIRTIO=y
-# CONFIG_PINCTRL is not set
-CONFIG_VIRTIO_MMIO=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_DIGEST_SHA1_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
-- 
2.39.2



