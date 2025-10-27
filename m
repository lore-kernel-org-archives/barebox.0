Delivery-date: Mon, 27 Oct 2025 15:35:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDOJm-00CMe8-0Y
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 15:35:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDOJl-0001B6-Ka
	for lore@pengutronix.de; Mon, 27 Oct 2025 15:35:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fQbvS4kpcN4c5Ik5+ZSur2JwcEqAZGsjPeqhK8EGFCs=; b=hZa5t0i9Q0iSFbBJxJ8zvL0MQo
	MS9CeCgW5DbROdaay29oHB0QiOJnMa5hZoZcYPn9TmZg5Eg6AhVxOqitAspB47OWyA2CW/TSuf8Z5
	A7JPg+zW6oIRxlgFQCdMR8Pkh9PBT//WWqIlXejJgi5BjqtxxMJLQ5jsaWBIwAc9Gb3jwxpO6v4BC
	HEK0r0qXVLF7Nns53tvvL7eRDFaDD4uY5LAZs8b9gXhEt1J3zjckNCp9+6yJ0E7WHjTT1R0DQ1c7Q
	85NrU9w79TldsfjDaLFaqyRgwgImCSzZP5lqukvkPQAVFVvEr1cazBNTxWjkdVwF6tXIvsSmGc7pA
	4Z6bQVJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDOJJ-0000000E98Y-3uTv;
	Mon, 27 Oct 2025 14:35:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDOJG-0000000E97p-3IDh
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 14:34:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDOJF-00015N-8u; Mon, 27 Oct 2025 15:34:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDOJF-005izO-0H;
	Mon, 27 Oct 2025 15:34:57 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDOJF-00000005MgQ-1la0;
	Mon, 27 Oct 2025 15:34:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 27 Oct 2025 15:34:54 +0100
Message-ID: <20251027143454.1278153-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_073458_820442_BF451534 
X-CRM114-Status: UNSURE (   9.50  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: multi_v8_defconfig: enable more rockchip stuff
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enable the Rockchip PCI driver along with some PCI ethernet driver for
different Radxa boards. Also enable the Rockchip SPI driver needed to
access the PMIC on the Radxa-Rock5t.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/multi_v8_defconfig | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 48ea0a1534..92ba5eb063 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -168,14 +168,16 @@ CONFIG_VIRTIO_CONSOLE=y
 CONFIG_DRIVER_NET_TI_K3_AM65_CPSW_NUSS=y
 CONFIG_DRIVER_NET_DESIGNWARE_IMX8=y
 CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP=y
+CONFIG_DRIVER_NET_E1000=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DRIVER_NET_FSL_ENETC=y
 CONFIG_DRIVER_NET_FSL_FMAN=y
 CONFIG_DRIVER_NET_MACB=y
+CONFIG_DRIVER_NET_RTL8139=y
+CONFIG_DRIVER_NET_RTL8169=y
 CONFIG_DRIVER_NET_VIRTIO=y
 CONFIG_DP83867_PHY=y
 CONFIG_MICREL_PHY=y
-CONFIG_REALTEK_PHY=y
 CONFIG_SMSC_PHY=y
 CONFIG_NET_DSA_MV88E6XXX=y
 CONFIG_MDIO_BITBANG=y
@@ -189,6 +191,7 @@ CONFIG_NET_USB_RTL8152=y
 CONFIG_DRIVER_SPI_FSL_QUADSPI=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_SPI_NXP_FLEXSPI=y
+CONFIG_SPI_ROCKCHIP=y
 CONFIG_I2C_GPIO=y
 CONFIG_I2C_IMX=y
 CONFIG_I2C_OMAP=y
@@ -260,6 +263,7 @@ CONFIG_REGULATOR_FIXED=y
 CONFIG_REGULATOR_ARM_SCMI=y
 CONFIG_REGULATOR_RK808=y
 CONFIG_RESET_IMX7=y
+CONFIG_PCI_ROCKCHIP=y
 CONFIG_PCI_ECAM_GENERIC=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=y
@@ -269,6 +273,8 @@ CONFIG_GENERIC_PHY=y
 CONFIG_USB_NOP_XCEIV=y
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=y
+CONFIG_PHY_ROCKCHIP_SNPS_PCIE3=y
+CONFIG_PHY_ROCKCHIP_USBDP=y
 CONFIG_ROCKCHIP_IODOMAIN=y
 CONFIG_TI_SCI_PM_DOMAINS=y
 CONFIG_NVMEM_REBOOT_MODE=y
-- 
2.47.3



