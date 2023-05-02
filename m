Delivery-date: Tue, 02 May 2023 11:15:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6r-002Af7-AD
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:15:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6n-0002I0-Ud
	for lore@pengutronix.de; Tue, 02 May 2023 11:15:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k4pS7UVQZHb86wRS8NyPFXvkXp4VcigewBFj7ineAyY=; b=pmHp0I/avjiHFyfUnFjM2xl1kt
	KFb3PiEDrjNtbe6/428O1ry320gKlQsflYtaubrXtt/Rt18vjAmN7llPwpejO1oyfBsjZ1bJpN/Bk
	OYwS8GkHGvPf+ZEi2zfu3cmSHbIDtfmyc0YNLfjktLOf0VF6N4EZBOCNJIQqpre+Kw9cbaexXG6JD
	I00MF47VTIYGWBTWzZQWPrtY2wHsb0J83MO74a6XOFTgoLsCyaEYRUsmWgnGOARe6s3fSnDb4GEXj
	RtIHyp3LSlvBIqm5MC25d68GAGHZKE96emRUWWNTsaASAxIN3m5dvQ5AzYUdfQEE6b2GawXnbNHMm
	8zq0/fuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5j-000jRw-0T;
	Tue, 02 May 2023 09:14:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5Y-000jH1-0A
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:14:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-0001Ai-RA; Tue, 02 May 2023 11:14:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-000Yjp-CT; Tue, 02 May 2023 11:14:22 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-00Ar0V-Bg; Tue, 02 May 2023 11:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 11:14:19 +0200
Message-Id: <20230502091419.2551228-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502091419.2551228-1-s.hauer@pengutronix.de>
References: <20230502091419.2551228-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021424_084796_B2615FE4 
X-CRM114-Status: GOOD (  12.38  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/12] ARM: Merge imx_defconfig and versatilepb_defconfig into multi_v5_v6_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a imx_defconfig with only a few boards enabled and also
a versatilepb_defconfig. Merge both configs into a multi_v5_v6_defconfig
to reduce the number of defconfigs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/imx.rst                  |  2 +-
 Documentation/boards/imx/karo-tx25.rst        |  2 +-
 .../boards/imx/phytec-phycard-i.mx27.rst      |  2 +-
 .../boards/imx/phytec-phycore-i.mx27.rst      |  2 +-
 .../{imx_defconfig => multi_v5_v6_defconfig}  |  5 ++
 arch/arm/configs/versatilepb_defconfig        | 81 -------------------
 6 files changed, 9 insertions(+), 85 deletions(-)
 rename arch/arm/configs/{imx_defconfig => multi_v5_v6_defconfig} (94%)
 delete mode 100644 arch/arm/configs/versatilepb_defconfig

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 5cc4676a96..17465efdd9 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -380,7 +380,7 @@ i.MX boards
 
 Not all supported boards have a description here. Many newer boards also do
 not have individual defconfig files, they are covered by ``imx_v7_defconfig``
-or ``imx_defconfig`` instead.
+or ``multi_v5_v6_defconfig`` instead.
 
 .. toctree::
   :glob:
diff --git a/Documentation/boards/imx/karo-tx25.rst b/Documentation/boards/imx/karo-tx25.rst
index 756c99d816..d8dcd16890 100644
--- a/Documentation/boards/imx/karo-tx25.rst
+++ b/Documentation/boards/imx/karo-tx25.rst
@@ -1,7 +1,7 @@
 Ka-Ro TX25
 ==========
 
-Building the bootloader image for this target is covered by the ``imx_defconfig``
+Building the bootloader image for this target is covered by the ``multi_v5_v6_defconfig``
 multiimage configuration if the ``System Type`` menu entry ``Ka-Ro TX25``
 is enabled.
 
diff --git a/Documentation/boards/imx/phytec-phycard-i.mx27.rst b/Documentation/boards/imx/phytec-phycard-i.mx27.rst
index d5d3837132..af89b353a8 100644
--- a/Documentation/boards/imx/phytec-phycard-i.mx27.rst
+++ b/Documentation/boards/imx/phytec-phycard-i.mx27.rst
@@ -1,7 +1,7 @@
 Phytec phyCARD-i.MX27
 =====================
 
-Building the bootloader image for this target is covered by the ``imx_defconfig``
+Building the bootloader image for this target is covered by the ``multi_v5_v6_defconfig``
 multiimage configuration if the ``System Type`` menu entry ``phyCard-i.MX27``
 is enabled.
 
diff --git a/Documentation/boards/imx/phytec-phycore-i.mx27.rst b/Documentation/boards/imx/phytec-phycore-i.mx27.rst
index 4b40be781d..6132e7298a 100644
--- a/Documentation/boards/imx/phytec-phycore-i.mx27.rst
+++ b/Documentation/boards/imx/phytec-phycore-i.mx27.rst
@@ -1,7 +1,7 @@
 Phytec phyCORE-i.MX27
 =====================
 
-Building the bootloader image for this target is covered by the ``imx_defconfig``
+Building the bootloader image for this target is covered by the ``multi_v5_v6_defconfig``
 multiimage configuration if the ``System Type`` menu entry ``phyCORE-i.MX27``
 is enabled.
 
diff --git a/arch/arm/configs/imx_defconfig b/arch/arm/configs/multi_v5_v6_defconfig
similarity index 94%
rename from arch/arm/configs/imx_defconfig
rename to arch/arm/configs/multi_v5_v6_defconfig
index 4813b4d4ce..0ff8597fde 100644
--- a/arch/arm/configs/imx_defconfig
+++ b/arch/arm/configs/multi_v5_v6_defconfig
@@ -1,10 +1,12 @@
 CONFIG_ARCH_IMX=y
+CONFIG_ARCH_VERSATILE=y
 CONFIG_MACH_SCB9328=y
 CONFIG_MACH_TX25=y
 CONFIG_MACH_PCA100=y
 CONFIG_MACH_PCM038=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
+CONFIG_BOARD_ARM_GENERIC_DT=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
@@ -74,7 +76,9 @@ CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DRIVER_NET_SMC91111=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_I2C=y
@@ -93,6 +97,7 @@ CONFIG_USB_EHCI=y
 CONFIG_USB_ULPI=y
 CONFIG_MCI=y
 CONFIG_MCI_IMX=y
+CONFIG_CLOCKSOURCE_DW_APB_TIMER=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
diff --git a/arch/arm/configs/versatilepb_defconfig b/arch/arm/configs/versatilepb_defconfig
deleted file mode 100644
index b4970083cf..0000000000
--- a/arch/arm/configs/versatilepb_defconfig
+++ /dev/null
@@ -1,81 +0,0 @@
-CONFIG_ARCH_VERSATILE=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
-CONFIG_PBL_RELOCATABLE=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
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
-CONFIG_PARTITION=y
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
-CONFIG_GPIO_PL061=y
-CONFIG_RTC_CLASS=y
-CONFIG_RTC_DRV_DS1307=y
-CONFIG_FS_CRAMFS=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_DIGEST_SHA1_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
-- 
2.39.2



