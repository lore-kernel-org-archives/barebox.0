Delivery-date: Tue, 09 Jan 2024 17:17:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmp-00AULz-0Y
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmo-0000Uf-94
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZBS05a6dlr3nNkR+3c4sq7yovssQCngPtSBq6Yty4NA=; b=ATPgeq2zThfWtC8gLXsrCPZM0c
	Vud3wsHmDzfMoHBvUdp95NMoTNqBIsWXQQXp9HFv8HoXR6rs1cz/X6XZGQyrf7pc26qSztpBnICUb
	EdoziD+nkr9+7T44V3T7fltnQC+MFwCSypZ4vvm28do37DxJv36fvd+1uJ2XzoxRV0+ervxVQI1Ht
	gi/vfjTmKoFs2AwhpMAAC7k66TwrlGnhGFb8/rJc84xrU77+a6NsR8jrxffgA4uLtve/Gd/GG7pJ/
	y3kWqELXbGEJsEBbNmOomhLqBMwolc8sCrz0IAXgo+LOM+4Xwz4C0eyfizgf6aBdvY8nE1cdoX4Gq
	yVGM+oTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNEld-008nxN-1g;
	Tue, 09 Jan 2024 16:15:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElL-008niw-2L
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007lX-Hp; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WCq-Nw; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7RG-2A;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:21 +0100
Message-Id: <20240109161527.3237581-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081535_829625_798F0B29 
X-CRM114-Status: UNSURE (   8.77  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 15/21] ARM: enable Layerscape boards in multi_v8_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that Layerscape can do MULTIARCH enable the Layerscape boards
in multi_v8_defconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/multi_v8_defconfig | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 1851735eec..35fceabfd4 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_ARM64_VIRT=y
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_K3=y
+CONFIG_ARCH_LAYERSCAPE=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_ARCH_ZYNQMP=y
 CONFIG_MACH_INNOCOMM_WB15=y
@@ -19,6 +20,10 @@ CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
 CONFIG_MACH_ZII_IMX8MQ_DEV=y
 CONFIG_MACH_TQ_MBA9XXXCA=y
 CONFIG_IMX_IIM=y
+CONFIG_ARCH_LAYERSCAPE_PPA=y
+CONFIG_MACH_LS1028ARDB=y
+CONFIG_MACH_LS1046ARDB=y
+CONFIG_MACH_TQMLS1046A=y
 CONFIG_MACH_BEAGLEPLAY=y
 CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
@@ -149,6 +154,8 @@ CONFIG_VIRTIO_CONSOLE=y
 CONFIG_DRIVER_NET_DESIGNWARE_IMX8=y
 CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP=y
 CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DRIVER_NET_FSL_ENETC=y
+CONFIG_DRIVER_NET_FSL_FMAN=y
 CONFIG_DRIVER_NET_MACB=y
 CONFIG_DRIVER_NET_VIRTIO=y
 CONFIG_DP83867_PHY=y
@@ -164,6 +171,7 @@ CONFIG_NET_USB_ASIX=y
 CONFIG_USB_NET_AX88179_178A=y
 CONFIG_NET_USB_SMSC95XX=y
 CONFIG_NET_USB_RTL8152=y
+CONFIG_DRIVER_SPI_FSL_QUADSPI=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_SPI_NXP_FLEXSPI=y
 CONFIG_I2C=y
@@ -171,6 +179,8 @@ CONFIG_I2C_GPIO=y
 CONFIG_I2C_IMX=y
 CONFIG_I2C_IMX_LPI2C=y
 CONFIG_I2C_RK3X=y
+CONFIG_I2C_MUX=y
+CONFIG_I2C_MUX_PCA954x=y
 CONFIG_MTD=y
 CONFIG_MTD_CONCAT=y
 CONFIG_MTD_M25P80=y
@@ -208,6 +218,8 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_LED_PCA955X=y
+CONFIG_EEPROM_AT25=y
 CONFIG_EEPROM_AT24=y
 CONFIG_VIRTIO_INPUT=y
 CONFIG_WATCHDOG=y
@@ -228,6 +240,7 @@ CONFIG_REGULATOR_FIXED=y
 CONFIG_REGULATOR_ARM_SCMI=y
 CONFIG_REGULATOR_RK808=y
 CONFIG_RESET_IMX7=y
+CONFIG_PCI_LAYERSCAPE=y
 CONFIG_PCI_ECAM_GENERIC=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=y
-- 
2.39.2



