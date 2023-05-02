Delivery-date: Tue, 02 May 2023 11:15:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6q-002AeZ-Mu
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:15:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6n-0002Ht-Lc
	for lore@pengutronix.de; Tue, 02 May 2023 11:15:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IjNjB/avIb2lNuoKfobrg3Zwh6cpKgffciU92RDS080=; b=3gF4P2bQ4kXeZRxrqlJ86Xski1
	GEVZGG2eM6o76QvRuvmEPJWl7KbcOjYeB9ljIFtMvQk+BDWiwJwJuA8EKdc5zxkDd7qSCYcauLJzp
	nw3hBzm2BxU1nvzo+Ewbx8kfVPSfFYlVcKX0mSAJuv8k2xXpY1AGs5Ps7PwmEiRZNn7bnly5eK9tk
	YUW7e+yAw7BrVYB0jGsyeFOITzbTDN6qMI6YkHEN2kDKzdQ20S4OKhemrnBM8G8tJhDaNL1tHKcXJ
	6Pzq3heJxX+ZhqPBwi1nwlUpb4nYaJS6lV3B90OPGFomK9ELXMPWrA06sht4Zj4aA9ctXdempxrh/
	u5r7Z0oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5d-000jMp-2r;
	Tue, 02 May 2023 09:14:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5X-000jGp-1m
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:14:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-00019w-AG; Tue, 02 May 2023 11:14:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5V-000YjS-PP; Tue, 02 May 2023 11:14:21 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-00Aqzt-8j; Tue, 02 May 2023 11:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 11:14:15 +0200
Message-Id: <20230502091419.2551228-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502091419.2551228-1-s.hauer@pengutronix.de>
References: <20230502091419.2551228-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021423_598640_2175BD25 
X-CRM114-Status: GOOD (  10.48  )
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
Subject: [PATCH 08/12] ARM: versatile: simplify ARM1176 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Just build arm926 and arm1176 support into a single image. With this
the additional defconfig becomes unnecessary and can be removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../arm/configs/versatilepb_arm1176_defconfig | 89 -------------------
 arch/arm/mach-versatile/Kconfig               | 11 ---
 2 files changed, 100 deletions(-)
 delete mode 100644 arch/arm/configs/versatilepb_arm1176_defconfig

diff --git a/arch/arm/configs/versatilepb_arm1176_defconfig b/arch/arm/configs/versatilepb_arm1176_defconfig
deleted file mode 100644
index 7a123a0bae..0000000000
--- a/arch/arm/configs/versatilepb_arm1176_defconfig
+++ /dev/null
@@ -1,89 +0,0 @@
-CONFIG_ARCH_VERSATILE=y
-CONFIG_MACH_VERSATILEPB_ARM1176=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
-CONFIG_PBL_RELOCATABLE=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
-CONFIG_MALLOC_SIZE=0xa00000
-CONFIG_RELOCATABLE=y
-CONFIG_PROMPT="versatilepb> "
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/versatile/env"
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UBIFORMAT=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
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
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_SERIAL_AMBA_PL011=y
-CONFIG_DRIVER_NET_SMC91111=y
-CONFIG_I2C=y
-CONFIG_I2C_VERSATILE=y
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_AMD is not set
-# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
-# CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
-CONFIG_MTD_UBI=y
-CONFIG_USB_HOST=y
-CONFIG_USB_EHCI=y
-CONFIG_USB_STORAGE=y
-CONFIG_VIDEO=y
-CONFIG_FRAMEBUFFER_CONSOLE=y
-CONFIG_GPIO_PL061=y
-CONFIG_RTC_CLASS=y
-CONFIG_RTC_DRV_DS1307=y
-CONFIG_FS_CRAMFS=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_PNG=y
-CONFIG_DIGEST_SHA1_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
diff --git a/arch/arm/mach-versatile/Kconfig b/arch/arm/mach-versatile/Kconfig
index e0e1996d33..755f2e1dcc 100644
--- a/arch/arm/mach-versatile/Kconfig
+++ b/arch/arm/mach-versatile/Kconfig
@@ -10,20 +10,9 @@ config MACH_VERSATILEPB
 	default y
 	select ARM_AMBA
 	select CLKDEV_LOOKUP
-
-choice
-	prompt "ARM Board type"
-
-config MACH_VERSATILEPB_926T
-	bool "ARM Versatile/PB (ARM926EJ-S)"
 	select CPU_ARM926T
-
-config MACH_VERSATILEPB_ARM1176
-	bool "ARM Versatile/PB (ARM1176)"
 	select CPU_ARM1176
 
-endchoice
-
 source "arch/arm/boards/versatile/Kconfig"
 
 endif
-- 
2.39.2



