Delivery-date: Mon, 11 Jul 2022 16:14:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAuBH-002eU6-4B
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 16:14:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAuBF-0006Cr-9d
	for lore@pengutronix.de; Mon, 11 Jul 2022 16:14:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uQF/ylRg+R7F0YsJaQ/SbU020uMu7TKNj0Q+Bcs8LG4=; b=e7RizOlig91hXjIYPq/q5edXBO
	Yhp//OV4F4qpSDbEqQ1F1iDp+KfEzeZcPvdnihuAulZ3u1S49tLKjq5+QaX5ObrJJXOiu922u3CX7
	z4Wb+ZP7bj05jopmNxjEOVOP5+0NE1sxg7wR9ZS00foFbWf2yHoIB+U7LXALGTMkqM5c67D5RtWwV
	YtZj+FRRQDzK4XZkrWedIicByqePOB/0JmT4+G1paMnHU6RkpRJwFifUyDCOc9b6o5Tk7AfBgUk3d
	aOCHNHiGo04OkXwxG3m9RoQfC/KaYkzLAhfGEwZ8wE+vfSGWte2Mrad3SQLk6Wv4qqXouvRG8t2nO
	mbug+aSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAu9r-002BiE-IX; Mon, 11 Jul 2022 14:13:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAu9m-002BfG-0z
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 14:13:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1oAu9g-0005yj-5S; Mon, 11 Jul 2022 16:12:56 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oAu9f-000KKu-Ej; Mon, 11 Jul 2022 16:12:55 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oAu9e-00E17O-JV; Mon, 11 Jul 2022 16:12:54 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Zink <j.zink@pengutronix.de>
Date: Mon, 11 Jul 2022 16:12:45 +0200
Message-Id: <20220711141246.3331160-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_071302_082432_A7FD49AC 
X-CRM114-Status: UNSURE (   8.48  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] ARM: i.MX: configs: add recent boards to imx_v7_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We've gained some new boards in the meantime, enable them and run make
savedefconfig to regenerate the defconfig.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 arch/arm/configs/imx_v7_defconfig | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 8e707b960..8ae515ae7 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -13,7 +13,6 @@ CONFIG_MACH_FREESCALE_MX53_VMX53=y
 CONFIG_MACH_TX53=y
 CONFIG_MACH_PHYTEC_SOM_IMX6=y
 CONFIG_MACH_PROTONIC_IMX6=y
-CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR=y
 CONFIG_MACH_KONTRON_SAMX6I=y
 CONFIG_MACH_DFI_FS700_M60=y
 CONFIG_MACH_GUF_SANTARO=y
@@ -38,7 +37,7 @@ CONFIG_MACH_GW_VENTANA=y
 CONFIG_MACH_CM_FX6=y
 CONFIG_MACH_ADVANTECH_ROM_742X=y
 CONFIG_MACH_WARP7=y
-CONFIG_MACH_WEBASTO_CCBV2=y
+CONFIG_MACH_AC_SXB=y
 CONFIG_MACH_VF610_TWR=y
 CONFIG_MACH_ZII_RDU1=y
 CONFIG_MACH_ZII_RDU2=y
@@ -46,9 +45,12 @@ CONFIG_MACH_ZII_VF610_DEV=y
 CONFIG_MACH_ZII_IMX7D_DEV=y
 CONFIG_MACH_PHYTEC_PHYCORE_IMX7=y
 CONFIG_MACH_FREESCALE_MX7_SABRESD=y
+CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR=y
 CONFIG_MACH_NXP_IMX6ULL_EVK=y
 CONFIG_MACH_GRINN_LITEBOARD=y
 CONFIG_MACH_DIGI_CCIMX6ULSBCPRO=y
+CONFIG_MACH_WEBASTO_CCBV2=y
+CONFIG_MACH_SKOV_IMX6=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -87,6 +89,7 @@ CONFIG_CMD_MMC_EXTCSD=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_BOOTCHOOSER=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_UBIFORMAT=y
 CONFIG_CMD_EXPORT=y
@@ -139,7 +142,6 @@ CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_STATE=y
-CONFIG_CMD_BOOTCHOOSER=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
@@ -198,9 +200,9 @@ CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_IMX=y
 CONFIG_PWM=y
 CONFIG_PWM_IMX=y
-CONFIG_IMX_OCOTP_WRITE=y
 CONFIG_MXS_APBH_DMA=y
 CONFIG_GPIO_STMPE=y
+CONFIG_IMX_OCOTP_WRITE=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
 CONFIG_GENERIC_PHY=y
-- 
2.30.2



