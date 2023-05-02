Delivery-date: Tue, 02 May 2023 14:00:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptogG-002Fpn-0P
	for lore@lore.pengutronix.de; Tue, 02 May 2023 14:00:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptogE-0000Hb-35
	for lore@pengutronix.de; Tue, 02 May 2023 14:00:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UXtCQXWvwMbRlMNQpidN2zFD2kxmIHFx5wYvJ9Qxq1s=; b=mfyQSSf/Yz9IGyzA/wi5y+qNIP
	SZVFNEgUh5G6eh6QMQRbHaJIsf1y9hwWyTcsh6JQVP+cEXIzggkXQOBT1cwEomvd9CT+oYQ6PgdAi
	iq+LNYJG8BIM5Od4blmX3ubULZoSHpVvTf4iF79dTOLkgpJ6VtRoCYl1fu/dHt0SZLtuIn+SaYodF
	SXJup4Wl7q6nJjNm4RFBFxzfnSrVa1rHFvgLIX+Xh7qnDs5JM4OD6JJZBiZ4ELlBiwRZMR9Leus81
	bxOgD0/Ju+oAbP0VFaJw3Q3BXiwockIpuLMmVUq3xZtnVGtaS7yBi2xY1dSG6s4atsFsQdqw1DchL
	4qeQIf2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptof8-001JOB-1M;
	Tue, 02 May 2023 11:59:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptof3-001JMd-2Z
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 11:59:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptof1-0008II-UB; Tue, 02 May 2023 13:59:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptof1-000aBL-8k; Tue, 02 May 2023 13:59:11 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptof0-0068mq-Cv; Tue, 02 May 2023 13:59:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 13:59:08 +0200
Message-Id: <20230502115908.1463306-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502115908.1463306-1-s.hauer@pengutronix.de>
References: <20230502115908.1463306-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_045913_837577_995001C5 
X-CRM114-Status: GOOD (  11.41  )
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
Subject: [PATCH 3/3] ARM: Remove qemu_virt64_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ARM64 QEMU Virt board is now enabled in multi_v8_defconfig. Remove
the now unnecessary defconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                             |   2 +-
 arch/arm/configs/qemu_virt64_defconfig        | 108 ------------------
 ...defconfig.yaml => multi_v8_defconfig.yaml} |   0
 3 files changed, 1 insertion(+), 109 deletions(-)
 delete mode 100644 arch/arm/configs/qemu_virt64_defconfig
 rename test/arm/{qemu_virt64_defconfig.yaml => multi_v8_defconfig.yaml} (100%)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a506f1e3a3..69da1f306d 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-KBUILD_DEFCONFIG := qemu_virt64_defconfig
+KBUILD_DEFCONFIG := multi_v8_defconfig
 
 KBUILD_CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
 # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
diff --git a/arch/arm/configs/qemu_virt64_defconfig b/arch/arm/configs/qemu_virt64_defconfig
deleted file mode 100644
index f9265cb3a3..0000000000
--- a/arch/arm/configs/qemu_virt64_defconfig
+++ /dev/null
@@ -1,108 +0,0 @@
-CONFIG_ARCH_ARM64_VIRT=y
-CONFIG_64BIT=y
-CONFIG_ARM_PSCI_CLIENT=y
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_KALLSYMS=y
-CONFIG_PROMPT=""
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BLSPEC=y
-CONFIG_CONSOLE_ACTIVATE_NONE=y
-CONFIG_CONSOLE_ALLOW_COLOR=y
-CONFIG_PARTITION_DISK_EFI=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_STATE=y
-CONFIG_BOOTCHOOSER=y
-CONFIG_RESET_SOURCE=y
-CONFIG_MACHINE_ID=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_IMD=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_POLLER=y
-CONFIG_CMD_SLICE=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_BOOTCHOOSER=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_SHA256SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_FBTEST=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_POWEROFF=y
-CONFIG_CMD_SMC=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_OF_DIFF=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_DISPLAY_TIMINGS=y
-CONFIG_CMD_OF_FIXUP_STATUS=y
-CONFIG_CMD_OF_OVERLAY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_STATE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_DHCP=y
-CONFIG_NET_SNTP=y
-CONFIG_NET_FASTBOOT=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_OF_BAREBOX_ENV_IN_FS=y
-CONFIG_OF_OVERLAY_LIVE=y
-CONFIG_SERIAL_AMBA_PL011=y
-CONFIG_VIRTIO_CONSOLE=y
-CONFIG_DRIVER_NET_VIRTIO=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_DISK=y
-CONFIG_DISK_WRITE=y
-CONFIG_VIRTIO_BLK=y
-CONFIG_VIDEO=y
-CONFIG_FRAMEBUFFER_CONSOLE=y
-CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
-CONFIG_SOUND=y
-CONFIG_STATE_DRV=y
-CONFIG_VIRTIO_INPUT=y
-CONFIG_HWRNG=y
-CONFIG_HW_RANDOM_VIRTIO=y
-# CONFIG_PINCTRL is not set
-CONFIG_NVMEM=y
-CONFIG_NVMEM_RMEM=y
-CONFIG_PCI_ECAM_GENERIC=y
-CONFIG_NVMEM_REBOOT_MODE=y
-CONFIG_VIRTIO_MMIO=y
-CONFIG_VIRTIO_PCI=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_NFS=y
-CONFIG_FS_FAT=y
-CONFIG_FS_PSTORE=y
-CONFIG_FS_PSTORE_CONSOLE=y
-CONFIG_DIGEST_SHA1_GENERIC=y
diff --git a/test/arm/qemu_virt64_defconfig.yaml b/test/arm/multi_v8_defconfig.yaml
similarity index 100%
rename from test/arm/qemu_virt64_defconfig.yaml
rename to test/arm/multi_v8_defconfig.yaml
-- 
2.39.2



