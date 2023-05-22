Delivery-date: Mon, 22 May 2023 07:23:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y1J-009Irf-2F
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:23:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y1G-0001Sw-Fy
	for lore@pengutronix.de; Mon, 22 May 2023 07:23:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lodgjahv272y7lCpxeoJMXyW4/vCpHh0PZfcaa3I9Cg=; b=l50kA9JQdZm4JL75FE/xPHmA6Q
	5fzfp9XxgNpyx3/pxXJ06iplXV4HoqN7Bd//q5+hq2g7BiSdvyaQmzJHVTpcHofSNglN9rDcIEHuN
	TXrGV0bwlgkwyvIfVMrBFO3mrJNnfvo1+DPCza+z9CHm7rYY9DwbICaml3P/ySFlwV9M1uIAowsmY
	c09Xv1y2IPL5d7FECfSZvYczPHH26dOjhiQYHASJXDfgxCvWzeeJO8PtVxQSNyEjaYFxhBgOgFl/y
	3gFAz+MkgRLUJVKXUV3PGxLdn/4Kew20vg5Cp4HrQjKTdm1DDrtdzcfy+gyRaypMOpxkJtAY45/4p
	Zn7zo4iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y08-005NBb-0m;
	Mon, 22 May 2023 05:22:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y02-005N74-0d
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:22:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y01-000177-0o; Mon, 22 May 2023 07:22:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y00-001vuM-BW; Mon, 22 May 2023 07:22:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0xzz-004M1M-1q; Mon, 22 May 2023 07:22:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 May 2023 07:22:18 +0200
Message-Id: <20230522052222.1037931-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052222.1037931-1-a.fatoum@pengutronix.de>
References: <20230522052222.1037931-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222226_232113_9D1A9252 
X-CRM114-Status: GOOD (  13.79  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 3/7] ARM: configs: temporarily revive vexpress_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Vexpress and the Qemu ARM Virt platform have a memory-mapped flash
starting at physical address 0. This clashes with the zero page used to
trap NULL pointer accesses when MMU is enabled. For this reason,
vexpress_defconfig disabled the MMU. vexpress_defconfig was removed in
favor of multi_v7_defconfig, but the latter enables the MMU, breaking
the ability to test barebox environment and state out of the box.

Patches to resolve that are being upstreamed, so until they are, let's
reinstate vexpress_defconfig.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/virtio.rst       |  2 +-
 arch/arm/configs/vexpress_defconfig | 76 +++++++++++++++++++++++++++++
 2 files changed, 77 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/configs/vexpress_defconfig

diff --git a/Documentation/user/virtio.rst b/Documentation/user/virtio.rst
index a8624649f473..d944fa4821b1 100644
--- a/Documentation/user/virtio.rst
+++ b/Documentation/user/virtio.rst
@@ -44,7 +44,7 @@ Building barebox for QEMU targets is no different from others.
 For example, we can do the following with the CROSS_COMPILE environment
 variable being properly set to a working toolchain for ARM::
 
-  $ make multi_v7_defconfig
+  $ make vexpress_defconfig
   $ make
 
 Testing
diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
new file mode 100644
index 000000000000..d58ca7ebd0ec
--- /dev/null
+++ b/arch/arm/configs/vexpress_defconfig
@@ -0,0 +1,76 @@
+CONFIG_ARCH_VEXPRESS=y
+CONFIG_MACH_VEXPRESS=y
+CONFIG_MACH_VIRT=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="vexpress: "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_OFTREE=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_VIRTIO_CONSOLE=y
+CONFIG_DRIVER_NET_SMC91111=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_MTD_CONCAT=y
+CONFIG_DRIVER_CFI=y
+CONFIG_VIRTIO_BLK=y
+CONFIG_MCI=y
+CONFIG_MCI_MMCI=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
+# CONFIG_PINCTRL is not set
+CONFIG_VIRTIO_MMIO=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
+CONFIG_DIGEST_SHA1_GENERIC=y
+CONFIG_DIGEST_SHA256_GENERIC=y
-- 
2.39.2



