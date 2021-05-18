Delivery-date: Tue, 18 May 2021 13:45:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyA3-00049g-Ic
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:45:19 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyA2-0000hU-Mn
	for lore@pengutronix.de; Tue, 18 May 2021 13:45:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=o/QAL4oZI25RrGyBjymTNgB3txSkeFGfaO2GXptfuXE=; b=iDjj9ldj//5JlBYf5458ezckp
	kJTr8H/4LtdvgkyTE2xUhCROmfi4bCGOiVdHlsIIOfkw1EaD6esnIpFZ9e/aiR3Y0Ni3xVD5BlnPs
	zxgXtgrEiutdxAIOjYqKmFUT2mGOBnRcgbD+bReWK9q69ucm1+mAeQfmBo7KqkkiCFJXk2Tg/xtaF
	zXXHhTT8ImENXt58fgwmLR82CrNIgjJ3P17a6fLaAQY/YjmZCFpYo4tmEWbmu/G6QC8HaY3fPZF6G
	p1kl5OWKybvp2yAGjpP8fXIlFPQPqkQPubQp71cCgEJmYC8hkdD/EyMJmB3ISe+0bIqhi+dZWjquI
	Br97BZQ5g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liy9E-000cLL-Ax; Tue, 18 May 2021 11:44:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liy8w-000cIv-UP
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:44:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=XJlkch2JflVg0IHaPhAG2Ng1ysuCtFMSi1V8gyfUZ+I=; b=q7z3z6LPIhDdJUlFK9ipMMB/cA
 E/Lxy3EyNEdM6F0o/JFHQo9ikrtDJ7RoIdiaMsaO2AZ80ZVHwfJPLAksWgIoGetP7IwAHD8KuPlxH
 FrvL1/hfyBqXDQcVl2pTOp+v7nNBoBKmX8n/9S4sAFPhz5Cp4iYwhK7yt0h7wIS3bQHOz3FXQ53Gk
 7cuBBhb5MGAwS2lZo/IK+XRIFEHa1hh2xb19ProNDCKYZwyWQT9qcZjXlaDyvzNVP5pxW0/Ne2/Cm
 qYaD+kn0js33ozOEAnhQKwIa+XZbkMueBJRk4gXVi/v3d4ds1B1lwmC9uW/NZfrVtahj1b65rzMos
 9+nxR8ow==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liy8t-00Ec1f-5C
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:44:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liy8r-0000VB-VA; Tue, 18 May 2021 13:44:05 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liy8r-0001Nc-Mk; Tue, 18 May 2021 13:44:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:44:03 +0200
Message-Id: <20210518114404.5553-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114404.5553-1-s.hauer@pengutronix.de>
References: <20210518114404.5553-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044407_228111_C9FBC923 
X-CRM114-Status: GOOD (  10.07  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: Rockchip: Merge defconfig files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/rk3188_defconfig             | 98 -------------------
 .../{rk3288_defconfig => rockchip_defconfig}  |  5 +-
 2 files changed, 3 insertions(+), 100 deletions(-)
 delete mode 100644 arch/arm/configs/rk3188_defconfig
 rename arch/arm/configs/{rk3288_defconfig => rockchip_defconfig} (96%)

diff --git a/arch/arm/configs/rk3188_defconfig b/arch/arm/configs/rk3188_defconfig
deleted file mode 100644
index 318cd9de42..0000000000
--- a/arch/arm/configs/rk3188_defconfig
+++ /dev/null
@@ -1,98 +0,0 @@
-CONFIG_ARCH_ROCKCHIP=y
-CONFIG_CACHE_L2X0=y
-CONFIG_MACH_RADXA_ROCK=y
-CONFIG_THUMB2_BAREBOX=y
-CONFIG_ARM_BOARD_APPEND_ATAG=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_RELOCATABLE=y
-CONFIG_PROMPT="radxa-rock:"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_BOOTM_AIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_NONE=y
-CONFIG_DEFAULT_COMPRESSION_LZO=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/radxa-rock/env"
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_DEFAULTENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA224SUM=y
-CONFIG_CMD_SHA256SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LET=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_READF=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OF_DISPLAY_TIMINGS=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_OFDEVICE=y
-CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_NET_ARC_EMAC=y
-CONFIG_SMSC_PHY=y
-CONFIG_I2C_GPIO=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_MMC_BOOT_PARTITIONS=y
-CONFIG_MCI_DW=y
-CONFIG_MCI_DW_PIO=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_GPIO_OF=y
-CONFIG_GENERIC_PHY=y
-CONFIG_FS_CRAMFS=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_FS_FAT=y
-CONFIG_FS_BPKFS=y
-CONFIG_FS_UIMAGEFS=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/rk3288_defconfig b/arch/arm/configs/rockchip_defconfig
similarity index 96%
rename from arch/arm/configs/rk3288_defconfig
rename to arch/arm/configs/rockchip_defconfig
index 156e07fcb1..41a63d3749 100644
--- a/arch/arm/configs/rk3288_defconfig
+++ b/arch/arm/configs/rockchip_defconfig
@@ -1,6 +1,8 @@
 CONFIG_ARCH_ROCKCHIP=y
-CONFIG_ARCH_RK3288=y
+CONFIG_CACHE_L2X0=y
+CONFIG_MACH_RADXA_ROCK=y
 CONFIG_MACH_PHYTEC_SOM_RK3288=y
+CONFIG_BOARD_ARM_GENERIC_DT=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -24,7 +26,6 @@ CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_DEFAULT_COMPRESSION_LZO=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_LL=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

