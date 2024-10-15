Delivery-date: Tue, 15 Oct 2024 13:21:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcQ-004dmw-1S
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 13:21:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcO-0000O9-Kt
	for lore@pengutronix.de; Tue, 15 Oct 2024 13:21:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AY3P0ZmQ2GeC7a2V6r4/JMHKEREPIs2ElF2Kl3NHDQo=; b=EFd4OMJB0ierLRMSRvxKT9CeaD
	62Y2tU1gusN6XN9HVKKGaLyyo+BxN989leIs0MQQs9chebjcXLEfzJqXN9NOA0XqfFnNhbFRfzHV4
	QGWSDJlhISxvIRcTyz8FA6uHu9yMsfY55RyDxggrY4eBlVQD3VgG7L6HZAuf//QRiXcx3KldlxEaK
	/eRAN8YDlPLjEvUxpS+gVswSd+8IJe8pid/3oHcoEvRpyiARZCheaqmS6yyPNzYG6DBtxv1t6kfxD
	VfQTYIInGxK4QP6j5wMzxpcgClXZ2OzqAeVLpOepR2Cb2ovpB7YDEjNFeZ/2aRzXFO1i9OEkutfqk
	p0kJr/Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fbd-00000007zkv-2CF3;
	Tue, 15 Oct 2024 11:20:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fSS-00000007yJS-3in8
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 11:11:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-0007uf-KN; Tue, 15 Oct 2024 13:11:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-00219E-0w; Tue, 15 Oct 2024 13:11:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSA-000ubB-36;
	Tue, 15 Oct 2024 13:11:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2024 13:11:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241015-rockchip-spi-rk808-v1-4-e276b4b59603@pengutronix.de>
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
In-Reply-To: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728990662; l=22186;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=AeIs51vWj4OOzOx2jhjHdRZW4v97GsmxzqTMHnl0gzQ=;
 b=dzvkZkMjN3G0iYvwx0JjJuy80tDucZQE7oybDwbmRq6lsMc25NzyF45qh27B4PCX3nQ21BLsd
 FFLM54FYsrWBMsxLG0KKNHUocjYHLaxuLSa319jddlOMvYYu81z4mlR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_041121_282319_44B79821 
X-CRM114-Status: GOOD (  11.25  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] mfd: rk808: update header file from kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This updates rk808.h from Linux as of Linux-6.12-rc1. We currently do
not need all register defines from this file, but maintenance will be
easier when we just verbatim copy it from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/mfd/rk808.h | 646 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 646 insertions(+)

diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 7804ea80f6..8cd152625b 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -113,6 +113,148 @@ enum rk808_reg {
 #define RK808_INT_STS_MSK_REG2	0x4f
 #define RK808_IO_POL_REG	0x50
 
+/* RK816 */
+enum rk816_reg {
+	RK816_ID_DCDC1,
+	RK816_ID_DCDC2,
+	RK816_ID_DCDC3,
+	RK816_ID_DCDC4,
+	RK816_ID_LDO1,
+	RK816_ID_LDO2,
+	RK816_ID_LDO3,
+	RK816_ID_LDO4,
+	RK816_ID_LDO5,
+	RK816_ID_LDO6,
+	RK816_ID_BOOST,
+	RK816_ID_OTG_SW,
+};
+
+enum rk816_irqs {
+	/* INT_STS_REG1 */
+	RK816_IRQ_PWRON_FALL,
+	RK816_IRQ_PWRON_RISE,
+
+	/* INT_STS_REG2 */
+	RK816_IRQ_VB_LOW,
+	RK816_IRQ_PWRON,
+	RK816_IRQ_PWRON_LP,
+	RK816_IRQ_HOTDIE,
+	RK816_IRQ_RTC_ALARM,
+	RK816_IRQ_RTC_PERIOD,
+	RK816_IRQ_USB_OV,
+
+	/* INT_STS_REG3 */
+	RK816_IRQ_PLUG_IN,
+	RK816_IRQ_PLUG_OUT,
+	RK816_IRQ_CHG_OK,
+	RK816_IRQ_CHG_TE,
+	RK816_IRQ_CHG_TS,
+	RK816_IRQ_CHG_CVTLIM,
+	RK816_IRQ_DISCHG_ILIM,
+};
+
+/* power channel registers */
+#define RK816_DCDC_EN_REG1		0x23
+
+#define RK816_DCDC_EN_REG2		0x24
+#define	RK816_BOOST_EN			BIT(1)
+#define RK816_OTG_EN			BIT(2)
+#define	RK816_BOOST_EN_MSK		BIT(5)
+#define RK816_OTG_EN_MSK		BIT(6)
+#define RK816_BUCK_DVS_CONFIRM		BIT(7)
+
+#define RK816_LDO_EN_REG1		0x27
+
+#define RK816_LDO_EN_REG2		0x28
+
+/* interrupt registers and irq definitions */
+#define RK816_INT_STS_REG1		0x49
+#define RK816_INT_STS_MSK_REG1		0x4a
+#define RK816_INT_STS_PWRON_FALL	BIT(5)
+#define RK816_INT_STS_PWRON_RISE	BIT(6)
+
+#define RK816_INT_STS_REG2		0x4c
+#define RK816_INT_STS_MSK_REG2		0x4d
+#define RK816_INT_STS_VB_LOW		BIT(1)
+#define RK816_INT_STS_PWRON		BIT(2)
+#define RK816_INT_STS_PWRON_LP		BIT(3)
+#define RK816_INT_STS_HOTDIE		BIT(4)
+#define RK816_INT_STS_RTC_ALARM		BIT(5)
+#define RK816_INT_STS_RTC_PERIOD	BIT(6)
+#define RK816_INT_STS_USB_OV		BIT(7)
+
+#define RK816_INT_STS_REG3		0x4e
+#define RK816_INT_STS_MSK_REG3		0x4f
+#define RK816_INT_STS_PLUG_IN		BIT(0)
+#define RK816_INT_STS_PLUG_OUT		BIT(1)
+#define RK816_INT_STS_CHG_OK		BIT(2)
+#define RK816_INT_STS_CHG_TE		BIT(3)
+#define RK816_INT_STS_CHG_TS		BIT(4)
+#define RK816_INT_STS_CHG_CVTLIM	BIT(6)
+#define RK816_INT_STS_DISCHG_ILIM	BIT(7)
+
+#define RK816_IRQ_STS_OFFSET(x)		((x) - RK816_INT_STS_REG1)
+#define RK816_IRQ_MSK_OFFSET(x)		((x) - RK816_INT_STS_MSK_REG1)
+
+/* charger, boost and OTG registers */
+#define RK816_OTG_BUCK_LDO_CONFIG_REG	0x2a
+#define RK816_CHRG_CONFIG_REG		0x2b
+#define RK816_BOOST_ON_VESL_REG		0x54
+#define RK816_BOOST_SLP_VSEL_REG	0x55
+#define RK816_CHRG_BOOST_CONFIG_REG	0x9a
+#define RK816_SUP_STS_REG		0xa0
+#define RK816_USB_CTRL_REG		0xa1
+#define RK816_CHRG_CTRL(x)		(0xa3 + (x))
+#define RK816_BAT_CTRL_REG		0xa6
+#define RK816_BAT_HTS_TS_REG		0xa8
+#define RK816_BAT_LTS_TS_REG		0xa9
+
+/* adc and fuel gauge registers */
+#define RK816_TS_CTRL_REG		0xac
+#define RK816_ADC_CTRL_REG		0xad
+#define RK816_GGCON_REG			0xb0
+#define RK816_GGSTS_REG			0xb1
+#define RK816_ZERO_CUR_ADC_REGH		0xb2
+#define RK816_ZERO_CUR_ADC_REGL		0xb3
+#define RK816_GASCNT_CAL_REG(x)		(0xb7 - (x))
+#define RK816_GASCNT_REG(x)		(0xbb - (x))
+#define RK816_BAT_CUR_AVG_REGH		0xbc
+#define RK816_BAT_CUR_AVG_REGL		0xbd
+#define RK816_TS_ADC_REGH		0xbe
+#define RK816_TS_ADC_REGL		0xbf
+#define RK816_USB_ADC_REGH		0xc0
+#define RK816_USB_ADC_REGL		0xc1
+#define RK816_BAT_OCV_REGH		0xc2
+#define RK816_BAT_OCV_REGL		0xc3
+#define RK816_BAT_VOL_REGH		0xc4
+#define RK816_BAT_VOL_REGL		0xc5
+#define RK816_RELAX_ENTRY_THRES_REGH	0xc6
+#define RK816_RELAX_ENTRY_THRES_REGL	0xc7
+#define RK816_RELAX_EXIT_THRES_REGH	0xc8
+#define RK816_RELAX_EXIT_THRES_REGL	0xc9
+#define RK816_RELAX_VOL1_REGH		0xca
+#define RK816_RELAX_VOL1_REGL		0xcb
+#define RK816_RELAX_VOL2_REGH		0xcc
+#define RK816_RELAX_VOL2_REGL		0xcd
+#define RK816_RELAX_CUR1_REGH		0xce
+#define RK816_RELAX_CUR1_REGL		0xcf
+#define RK816_RELAX_CUR2_REGH		0xd0
+#define RK816_RELAX_CUR2_REGL		0xd1
+#define RK816_CAL_OFFSET_REGH		0xd2
+#define RK816_CAL_OFFSET_REGL		0xd3
+#define RK816_NON_ACT_TIMER_CNT_REG	0xd4
+#define RK816_VCALIB0_REGH		0xd5
+#define RK816_VCALIB0_REGL		0xd6
+#define RK816_VCALIB1_REGH		0xd7
+#define RK816_VCALIB1_REGL		0xd8
+#define RK816_FCC_GASCNT_REG(x)		(0xdc - (x))
+#define RK816_IOFFSET_REGH		0xdd
+#define RK816_IOFFSET_REGL		0xde
+#define RK816_SLEEP_CON_SAMP_CUR_REG	0xdf
+
+/* general purpose data registers 0xe0 ~ 0xf2 */
+#define RK816_DATA_REG(x)		(0xe0 + (x))
+
 /* RK818 */
 #define RK818_DCDC1			0
 #define RK818_LDO1			4
@@ -289,6 +431,414 @@ enum rk805_reg {
 #define RK805_INT_ALARM_EN		(1 << 3)
 #define RK805_INT_TIMER_EN		(1 << 2)
 
+/* RK806 */
+#define RK806_POWER_EN0			0x0
+#define RK806_POWER_EN1			0x1
+#define RK806_POWER_EN2			0x2
+#define RK806_POWER_EN3			0x3
+#define RK806_POWER_EN4			0x4
+#define RK806_POWER_EN5			0x5
+#define RK806_POWER_SLP_EN0		0x6
+#define RK806_POWER_SLP_EN1		0x7
+#define RK806_POWER_SLP_EN2		0x8
+#define RK806_POWER_DISCHRG_EN0		0x9
+#define RK806_POWER_DISCHRG_EN1		0xA
+#define RK806_POWER_DISCHRG_EN2		0xB
+#define RK806_BUCK_FB_CONFIG		0xC
+#define RK806_SLP_LP_CONFIG		0xD
+#define RK806_POWER_FPWM_EN0		0xE
+#define RK806_POWER_FPWM_EN1		0xF
+#define RK806_BUCK1_CONFIG		0x10
+#define RK806_BUCK2_CONFIG		0x11
+#define RK806_BUCK3_CONFIG		0x12
+#define RK806_BUCK4_CONFIG		0x13
+#define RK806_BUCK5_CONFIG		0x14
+#define RK806_BUCK6_CONFIG		0x15
+#define RK806_BUCK7_CONFIG		0x16
+#define RK806_BUCK8_CONFIG		0x17
+#define RK806_BUCK9_CONFIG		0x18
+#define RK806_BUCK10_CONFIG		0x19
+#define RK806_BUCK1_ON_VSEL		0x1A
+#define RK806_BUCK2_ON_VSEL		0x1B
+#define RK806_BUCK3_ON_VSEL		0x1C
+#define RK806_BUCK4_ON_VSEL		0x1D
+#define RK806_BUCK5_ON_VSEL		0x1E
+#define RK806_BUCK6_ON_VSEL		0x1F
+#define RK806_BUCK7_ON_VSEL		0x20
+#define RK806_BUCK8_ON_VSEL		0x21
+#define RK806_BUCK9_ON_VSEL		0x22
+#define RK806_BUCK10_ON_VSEL		0x23
+#define RK806_BUCK1_SLP_VSEL		0x24
+#define RK806_BUCK2_SLP_VSEL		0x25
+#define RK806_BUCK3_SLP_VSEL		0x26
+#define RK806_BUCK4_SLP_VSEL		0x27
+#define RK806_BUCK5_SLP_VSEL		0x28
+#define RK806_BUCK6_SLP_VSEL		0x29
+#define RK806_BUCK7_SLP_VSEL		0x2A
+#define RK806_BUCK8_SLP_VSEL		0x2B
+#define RK806_BUCK9_SLP_VSEL		0x2D
+#define RK806_BUCK10_SLP_VSEL		0x2E
+#define RK806_BUCK_DEBUG1		0x30
+#define RK806_BUCK_DEBUG2		0x31
+#define RK806_BUCK_DEBUG3		0x32
+#define RK806_BUCK_DEBUG4		0x33
+#define RK806_BUCK_DEBUG5		0x34
+#define RK806_BUCK_DEBUG6		0x35
+#define RK806_BUCK_DEBUG7		0x36
+#define RK806_BUCK_DEBUG8		0x37
+#define RK806_BUCK_DEBUG9		0x38
+#define RK806_BUCK_DEBUG10		0x39
+#define RK806_BUCK_DEBUG11		0x3A
+#define RK806_BUCK_DEBUG12		0x3B
+#define RK806_BUCK_DEBUG13		0x3C
+#define RK806_BUCK_DEBUG14		0x3D
+#define RK806_BUCK_DEBUG15		0x3E
+#define RK806_BUCK_DEBUG16		0x3F
+#define RK806_BUCK_DEBUG17		0x40
+#define RK806_BUCK_DEBUG18		0x41
+#define RK806_NLDO_IMAX			0x42
+#define RK806_NLDO1_ON_VSEL		0x43
+#define RK806_NLDO2_ON_VSEL		0x44
+#define RK806_NLDO3_ON_VSEL		0x45
+#define RK806_NLDO4_ON_VSEL		0x46
+#define RK806_NLDO5_ON_VSEL		0x47
+#define RK806_NLDO1_SLP_VSEL		0x48
+#define RK806_NLDO2_SLP_VSEL		0x49
+#define RK806_NLDO3_SLP_VSEL		0x4A
+#define RK806_NLDO4_SLP_VSEL		0x4B
+#define RK806_NLDO5_SLP_VSEL		0x4C
+#define RK806_PLDO_IMAX			0x4D
+#define RK806_PLDO1_ON_VSEL		0x4E
+#define RK806_PLDO2_ON_VSEL		0x4F
+#define RK806_PLDO3_ON_VSEL		0x50
+#define RK806_PLDO4_ON_VSEL		0x51
+#define RK806_PLDO5_ON_VSEL		0x52
+#define RK806_PLDO6_ON_VSEL		0x53
+#define RK806_PLDO1_SLP_VSEL		0x54
+#define RK806_PLDO2_SLP_VSEL		0x55
+#define RK806_PLDO3_SLP_VSEL		0x56
+#define RK806_PLDO4_SLP_VSEL		0x57
+#define RK806_PLDO5_SLP_VSEL		0x58
+#define RK806_PLDO6_SLP_VSEL		0x59
+#define RK806_CHIP_NAME			0x5A
+#define RK806_CHIP_VER			0x5B
+#define RK806_OTP_VER			0x5C
+#define RK806_SYS_STS			0x5D
+#define RK806_SYS_CFG0			0x5E
+#define RK806_SYS_CFG1			0x5F
+#define RK806_SYS_OPTION		0x61
+#define RK806_SLEEP_CONFIG0		0x62
+#define RK806_SLEEP_CONFIG1		0x63
+#define RK806_SLEEP_CTR_SEL0		0x64
+#define RK806_SLEEP_CTR_SEL1		0x65
+#define RK806_SLEEP_CTR_SEL2		0x66
+#define RK806_SLEEP_CTR_SEL3		0x67
+#define RK806_SLEEP_CTR_SEL4		0x68
+#define RK806_SLEEP_CTR_SEL5		0x69
+#define RK806_DVS_CTRL_SEL0		0x6A
+#define RK806_DVS_CTRL_SEL1		0x6B
+#define RK806_DVS_CTRL_SEL2		0x6C
+#define RK806_DVS_CTRL_SEL3		0x6D
+#define RK806_DVS_CTRL_SEL4		0x6E
+#define RK806_DVS_CTRL_SEL5		0x6F
+#define RK806_DVS_START_CTRL		0x70
+#define RK806_SLEEP_GPIO		0x71
+#define RK806_SYS_CFG3			0x72
+#define RK806_ON_SOURCE			0x74
+#define RK806_OFF_SOURCE		0x75
+#define RK806_PWRON_KEY			0x76
+#define RK806_INT_STS0			0x77
+#define RK806_INT_MSK0			0x78
+#define RK806_INT_STS1			0x79
+#define RK806_INT_MSK1			0x7A
+#define RK806_GPIO_INT_CONFIG		0x7B
+#define RK806_DATA_REG0			0x7C
+#define RK806_DATA_REG1			0x7D
+#define RK806_DATA_REG2			0x7E
+#define RK806_DATA_REG3			0x7F
+#define RK806_DATA_REG4			0x80
+#define RK806_DATA_REG5			0x81
+#define RK806_DATA_REG6			0x82
+#define RK806_DATA_REG7			0x83
+#define RK806_DATA_REG8			0x84
+#define RK806_DATA_REG9			0x85
+#define RK806_DATA_REG10		0x86
+#define RK806_DATA_REG11		0x87
+#define RK806_DATA_REG12		0x88
+#define RK806_DATA_REG13		0x89
+#define RK806_DATA_REG14		0x8A
+#define RK806_DATA_REG15		0x8B
+#define RK806_TM_REG			0x8C
+#define RK806_OTP_EN_REG		0x8D
+#define RK806_FUNC_OTP_EN_REG		0x8E
+#define RK806_TEST_REG1			0x8F
+#define RK806_TEST_REG2			0x90
+#define RK806_TEST_REG3			0x91
+#define RK806_TEST_REG4			0x92
+#define RK806_TEST_REG5			0x93
+#define RK806_BUCK_VSEL_OTP_REG0	0x94
+#define RK806_BUCK_VSEL_OTP_REG1	0x95
+#define RK806_BUCK_VSEL_OTP_REG2	0x96
+#define RK806_BUCK_VSEL_OTP_REG3	0x97
+#define RK806_BUCK_VSEL_OTP_REG4	0x98
+#define RK806_BUCK_VSEL_OTP_REG5	0x99
+#define RK806_BUCK_VSEL_OTP_REG6	0x9A
+#define RK806_BUCK_VSEL_OTP_REG7	0x9B
+#define RK806_BUCK_VSEL_OTP_REG8	0x9C
+#define RK806_BUCK_VSEL_OTP_REG9	0x9D
+#define RK806_NLDO1_VSEL_OTP_REG0	0x9E
+#define RK806_NLDO1_VSEL_OTP_REG1	0x9F
+#define RK806_NLDO1_VSEL_OTP_REG2	0xA0
+#define RK806_NLDO1_VSEL_OTP_REG3	0xA1
+#define RK806_NLDO1_VSEL_OTP_REG4	0xA2
+#define RK806_PLDO_VSEL_OTP_REG0	0xA3
+#define RK806_PLDO_VSEL_OTP_REG1	0xA4
+#define RK806_PLDO_VSEL_OTP_REG2	0xA5
+#define RK806_PLDO_VSEL_OTP_REG3	0xA6
+#define RK806_PLDO_VSEL_OTP_REG4	0xA7
+#define RK806_PLDO_VSEL_OTP_REG5	0xA8
+#define RK806_BUCK_EN_OTP_REG1		0xA9
+#define RK806_NLDO_EN_OTP_REG1		0xAA
+#define RK806_PLDO_EN_OTP_REG1		0xAB
+#define RK806_BUCK_FB_RES_OTP_REG1	0xAC
+#define RK806_OTP_RESEV_REG0		0xAD
+#define RK806_OTP_RESEV_REG1		0xAE
+#define RK806_OTP_RESEV_REG2		0xAF
+#define RK806_OTP_RESEV_REG3		0xB0
+#define RK806_OTP_RESEV_REG4		0xB1
+#define RK806_BUCK_SEQ_REG0		0xB2
+#define RK806_BUCK_SEQ_REG1		0xB3
+#define RK806_BUCK_SEQ_REG2		0xB4
+#define RK806_BUCK_SEQ_REG3		0xB5
+#define RK806_BUCK_SEQ_REG4		0xB6
+#define RK806_BUCK_SEQ_REG5		0xB7
+#define RK806_BUCK_SEQ_REG6		0xB8
+#define RK806_BUCK_SEQ_REG7		0xB9
+#define RK806_BUCK_SEQ_REG8		0xBA
+#define RK806_BUCK_SEQ_REG9		0xBB
+#define RK806_BUCK_SEQ_REG10		0xBC
+#define RK806_BUCK_SEQ_REG11		0xBD
+#define RK806_BUCK_SEQ_REG12		0xBE
+#define RK806_BUCK_SEQ_REG13		0xBF
+#define RK806_BUCK_SEQ_REG14		0xC0
+#define RK806_BUCK_SEQ_REG15		0xC1
+#define RK806_BUCK_SEQ_REG16		0xC2
+#define RK806_BUCK_SEQ_REG17		0xC3
+#define RK806_HK_TRIM_REG1		0xC4
+#define RK806_HK_TRIM_REG2		0xC5
+#define RK806_BUCK_REF_TRIM_REG1	0xC6
+#define RK806_BUCK_REF_TRIM_REG2	0xC7
+#define RK806_BUCK_REF_TRIM_REG3	0xC8
+#define RK806_BUCK_REF_TRIM_REG4	0xC9
+#define RK806_BUCK_REF_TRIM_REG5	0xCA
+#define RK806_BUCK_OSC_TRIM_REG1	0xCB
+#define RK806_BUCK_OSC_TRIM_REG2	0xCC
+#define RK806_BUCK_OSC_TRIM_REG3	0xCD
+#define RK806_BUCK_OSC_TRIM_REG4	0xCE
+#define RK806_BUCK_OSC_TRIM_REG5	0xCF
+#define RK806_BUCK_TRIM_ZCDIOS_REG1	0xD0
+#define RK806_BUCK_TRIM_ZCDIOS_REG2	0xD1
+#define RK806_NLDO_TRIM_REG1		0xD2
+#define RK806_NLDO_TRIM_REG2		0xD3
+#define RK806_NLDO_TRIM_REG3		0xD4
+#define RK806_PLDO_TRIM_REG1		0xD5
+#define RK806_PLDO_TRIM_REG2		0xD6
+#define RK806_PLDO_TRIM_REG3		0xD7
+#define RK806_TRIM_ICOMP_REG1		0xD8
+#define RK806_TRIM_ICOMP_REG2		0xD9
+#define RK806_EFUSE_CONTROL_REGH	0xDA
+#define RK806_FUSE_PROG_REG		0xDB
+#define RK806_MAIN_FSM_STS_REG		0xDD
+#define RK806_FSM_REG			0xDE
+#define RK806_TOP_RESEV_OFFR		0xEC
+#define RK806_TOP_RESEV_POR		0xED
+#define RK806_BUCK_VRSN_REG1		0xEE
+#define RK806_BUCK_VRSN_REG2		0xEF
+#define RK806_NLDO_RLOAD_SEL_REG1	0xF0
+#define RK806_PLDO_RLOAD_SEL_REG1	0xF1
+#define RK806_PLDO_RLOAD_SEL_REG2	0xF2
+#define RK806_BUCK_CMIN_MX_REG1		0xF3
+#define RK806_BUCK_CMIN_MX_REG2		0xF4
+#define RK806_BUCK_FREQ_SET_REG1	0xF5
+#define RK806_BUCK_FREQ_SET_REG2	0xF6
+#define RK806_BUCK_RS_MEABS_REG1	0xF7
+#define RK806_BUCK_RS_MEABS_REG2	0xF8
+#define RK806_BUCK_RS_ZDLEB_REG1	0xF9
+#define RK806_BUCK_RS_ZDLEB_REG2	0xFA
+#define RK806_BUCK_RSERVE_REG1		0xFB
+#define RK806_BUCK_RSERVE_REG2		0xFC
+#define RK806_BUCK_RSERVE_REG3		0xFD
+#define RK806_BUCK_RSERVE_REG4		0xFE
+#define RK806_BUCK_RSERVE_REG5		0xFF
+
+/* INT_STS Register field definitions */
+#define RK806_INT_STS_PWRON_FALL	BIT(0)
+#define RK806_INT_STS_PWRON_RISE	BIT(1)
+#define RK806_INT_STS_PWRON		BIT(2)
+#define RK806_INT_STS_PWRON_LP		BIT(3)
+#define RK806_INT_STS_HOTDIE		BIT(4)
+#define RK806_INT_STS_VDC_RISE		BIT(5)
+#define RK806_INT_STS_VDC_FALL		BIT(6)
+#define RK806_INT_STS_VB_LO		BIT(7)
+#define RK806_INT_STS_REV0		BIT(0)
+#define RK806_INT_STS_REV1		BIT(1)
+#define RK806_INT_STS_REV2		BIT(2)
+#define RK806_INT_STS_CRC_ERROR		BIT(3)
+#define RK806_INT_STS_SLP3_GPIO		BIT(4)
+#define RK806_INT_STS_SLP2_GPIO		BIT(5)
+#define RK806_INT_STS_SLP1_GPIO		BIT(6)
+#define RK806_INT_STS_WDT		BIT(7)
+
+/* SPI command */
+#define RK806_CMD_READ			0
+#define RK806_CMD_WRITE			BIT(7)
+#define RK806_CMD_CRC_EN		BIT(6)
+#define RK806_CMD_CRC_DIS		0
+#define RK806_CMD_LEN_MSK		0x0f
+#define RK806_REG_H			0x00
+
+#define VERSION_AB		0x01
+
+enum rk806_reg_id {
+	RK806_ID_DCDC1 = 0,
+	RK806_ID_DCDC2,
+	RK806_ID_DCDC3,
+	RK806_ID_DCDC4,
+	RK806_ID_DCDC5,
+	RK806_ID_DCDC6,
+	RK806_ID_DCDC7,
+	RK806_ID_DCDC8,
+	RK806_ID_DCDC9,
+	RK806_ID_DCDC10,
+
+	RK806_ID_NLDO1,
+	RK806_ID_NLDO2,
+	RK806_ID_NLDO3,
+	RK806_ID_NLDO4,
+	RK806_ID_NLDO5,
+
+	RK806_ID_PLDO1,
+	RK806_ID_PLDO2,
+	RK806_ID_PLDO3,
+	RK806_ID_PLDO4,
+	RK806_ID_PLDO5,
+	RK806_ID_PLDO6,
+	RK806_ID_END,
+};
+
+/* Define the RK806 IRQ numbers */
+enum rk806_irqs {
+	/* INT_STS0 registers */
+	RK806_IRQ_PWRON_FALL,
+	RK806_IRQ_PWRON_RISE,
+	RK806_IRQ_PWRON,
+	RK806_IRQ_PWRON_LP,
+	RK806_IRQ_HOTDIE,
+	RK806_IRQ_VDC_RISE,
+	RK806_IRQ_VDC_FALL,
+	RK806_IRQ_VB_LO,
+
+	/* INT_STS0 registers */
+	RK806_IRQ_REV0,
+	RK806_IRQ_REV1,
+	RK806_IRQ_REV2,
+	RK806_IRQ_CRC_ERROR,
+	RK806_IRQ_SLP3_GPIO,
+	RK806_IRQ_SLP2_GPIO,
+	RK806_IRQ_SLP1_GPIO,
+	RK806_IRQ_WDT,
+};
+
+/* VCC1 Low Voltage Threshold */
+enum rk806_lv_sel {
+	VB_LO_SEL_2800,
+	VB_LO_SEL_2900,
+	VB_LO_SEL_3000,
+	VB_LO_SEL_3100,
+	VB_LO_SEL_3200,
+	VB_LO_SEL_3300,
+	VB_LO_SEL_3400,
+	VB_LO_SEL_3500,
+};
+
+/* System Shutdown Voltage Select */
+enum rk806_uv_sel {
+	VB_UV_SEL_2700,
+	VB_UV_SEL_2800,
+	VB_UV_SEL_2900,
+	VB_UV_SEL_3000,
+	VB_UV_SEL_3100,
+	VB_UV_SEL_3200,
+	VB_UV_SEL_3300,
+	VB_UV_SEL_3400,
+};
+
+/* Pin Function */
+enum rk806_pwrctrl_fun {
+	PWRCTRL_NULL_FUN,
+	PWRCTRL_SLP_FUN,
+	PWRCTRL_POWOFF_FUN,
+	PWRCTRL_RST_FUN,
+	PWRCTRL_DVS_FUN,
+	PWRCTRL_GPIO_FUN,
+};
+
+/* Pin Polarity */
+enum rk806_pin_level {
+	POL_LOW,
+	POL_HIGH,
+};
+
+enum rk806_vsel_ctr_sel {
+	CTR_BY_NO_EFFECT,
+	CTR_BY_PWRCTRL1,
+	CTR_BY_PWRCTRL2,
+	CTR_BY_PWRCTRL3,
+};
+
+enum rk806_dvs_ctr_sel {
+	CTR_SEL_NO_EFFECT,
+	CTR_SEL_DVS_START1,
+	CTR_SEL_DVS_START2,
+	CTR_SEL_DVS_START3,
+};
+
+enum rk806_pin_dr_sel {
+	RK806_PIN_INPUT,
+	RK806_PIN_OUTPUT,
+};
+
+#define RK806_INT_POL_MSK		BIT(1)
+#define RK806_INT_POL_H			BIT(1)
+#define RK806_INT_POL_L			0
+
+#define RK806_SLAVE_RESTART_FUN_MSK	BIT(1)
+#define RK806_SLAVE_RESTART_FUN_EN	BIT(1)
+#define RK806_SLAVE_RESTART_FUN_OFF	0
+
+#define RK806_SYS_ENB2_2M_MSK		BIT(1)
+#define RK806_SYS_ENB2_2M_EN		BIT(1)
+#define RK806_SYS_ENB2_2M_OFF		0
+
+enum rk806_int_fun {
+	RK806_INT_ONLY,
+	RK806_INT_ADN_WKUP,
+};
+
+enum rk806_dvs_mode {
+	RK806_DVS_NOT_SUPPORT,
+	RK806_DVS_START1,
+	RK806_DVS_START2,
+	RK806_DVS_START3,
+	RK806_DVS_PWRCTRL1,
+	RK806_DVS_PWRCTRL2,
+	RK806_DVS_PWRCTRL3,
+	RK806_DVS_START_PWRCTR1,
+	RK806_DVS_START_PWRCTR2,
+	RK806_DVS_START_PWRCTR3,
+	RK806_DVS_END,
+};
+
 /* RK808 IRQ Definitions */
 #define RK808_IRQ_VOUT_LO	0
 #define RK808_IRQ_VB_LO		1
@@ -373,6 +923,7 @@ enum rk805_reg {
 #define SWITCH2_EN	BIT(6)
 #define SWITCH1_EN	BIT(5)
 #define DEV_OFF_RST	BIT(3)
+#define DEV_RST		BIT(2)
 #define DEV_OFF		BIT(0)
 #define RTC_STOP	BIT(0)
 
@@ -382,6 +933,7 @@ enum rk805_reg {
 #define VOUT_LO_INT	BIT(0)
 #define CLK32KOUT2_EN	BIT(0)
 
+#define TEMP105C			0x08
 #define TEMP115C			0x0c
 #define TEMP_HOTDIE_MSK			0x0c
 #define SLP_SD_MSK			(0x3 << 2)
@@ -531,6 +1083,77 @@ enum rk809_reg_id {
 #define MIC_DIFF_DIS			(0x0 << 7)
 #define MIC_DIFF_EN			(0x1 << 7)
 
+/* RK817 Battery Registers */
+#define RK817_GAS_GAUGE_ADC_CONFIG0	0x50
+#define RK817_GG_EN			(0x1 << 7)
+#define RK817_SYS_VOL_ADC_EN		(0x1 << 6)
+#define RK817_TS_ADC_EN			(0x1 << 5)
+#define RK817_USB_VOL_ADC_EN		(0x1 << 4)
+#define RK817_BAT_VOL_ADC_EN		(0x1 << 3)
+#define RK817_BAT_CUR_ADC_EN		(0x1 << 2)
+
+#define RK817_GAS_GAUGE_ADC_CONFIG1	0x55
+
+#define RK817_VOL_CUR_CALIB_UPD		BIT(7)
+
+#define RK817_GAS_GAUGE_GG_CON		0x56
+#define RK817_GAS_GAUGE_GG_STS		0x57
+
+#define RK817_BAT_CON			(0x1 << 4)
+#define RK817_RELAX_VOL_UPD		(0x3 << 2)
+#define RK817_RELAX_STS			(0x1 << 1)
+
+#define RK817_GAS_GAUGE_RELAX_THRE_H	0x58
+#define RK817_GAS_GAUGE_RELAX_THRE_L	0x59
+#define RK817_GAS_GAUGE_OCV_THRE_VOL	0x62
+#define RK817_GAS_GAUGE_OCV_VOL_H	0x63
+#define RK817_GAS_GAUGE_OCV_VOL_L	0x64
+#define RK817_GAS_GAUGE_PWRON_VOL_H	0x6b
+#define RK817_GAS_GAUGE_PWRON_VOL_L	0x6c
+#define RK817_GAS_GAUGE_PWRON_CUR_H	0x6d
+#define RK817_GAS_GAUGE_PWRON_CUR_L	0x6e
+#define RK817_GAS_GAUGE_OFF_CNT		0x6f
+#define RK817_GAS_GAUGE_Q_INIT_H3	0x70
+#define RK817_GAS_GAUGE_Q_INIT_H2	0x71
+#define RK817_GAS_GAUGE_Q_INIT_L1	0x72
+#define RK817_GAS_GAUGE_Q_INIT_L0	0x73
+#define RK817_GAS_GAUGE_Q_PRES_H3	0x74
+#define RK817_GAS_GAUGE_Q_PRES_H2	0x75
+#define RK817_GAS_GAUGE_Q_PRES_L1	0x76
+#define RK817_GAS_GAUGE_Q_PRES_L0	0x77
+#define RK817_GAS_GAUGE_BAT_VOL_H	0x78
+#define RK817_GAS_GAUGE_BAT_VOL_L	0x79
+#define RK817_GAS_GAUGE_BAT_CUR_H	0x7a
+#define RK817_GAS_GAUGE_BAT_CUR_L	0x7b
+#define RK817_GAS_GAUGE_USB_VOL_H	0x7e
+#define RK817_GAS_GAUGE_USB_VOL_L	0x7f
+#define RK817_GAS_GAUGE_SYS_VOL_H	0x80
+#define RK817_GAS_GAUGE_SYS_VOL_L	0x81
+#define RK817_GAS_GAUGE_Q_MAX_H3	0x82
+#define RK817_GAS_GAUGE_Q_MAX_H2	0x83
+#define RK817_GAS_GAUGE_Q_MAX_L1	0x84
+#define RK817_GAS_GAUGE_Q_MAX_L0	0x85
+#define RK817_GAS_GAUGE_SLEEP_CON_SAMP_CUR_H	0x8f
+#define RK817_GAS_GAUGE_SLEEP_CON_SAMP_CUR_L	0x90
+#define RK817_GAS_GAUGE_CAL_OFFSET_H	0x91
+#define RK817_GAS_GAUGE_CAL_OFFSET_L	0x92
+#define RK817_GAS_GAUGE_VCALIB0_H	0x93
+#define RK817_GAS_GAUGE_VCALIB0_L	0x94
+#define RK817_GAS_GAUGE_VCALIB1_H	0x95
+#define RK817_GAS_GAUGE_VCALIB1_L	0x96
+#define RK817_GAS_GAUGE_IOFFSET_H	0x97
+#define RK817_GAS_GAUGE_IOFFSET_L	0x98
+#define RK817_GAS_GAUGE_BAT_R1		0x9a
+#define RK817_GAS_GAUGE_BAT_R2		0x9b
+#define RK817_GAS_GAUGE_BAT_R3		0x9c
+#define RK817_GAS_GAUGE_DATA0		0x9d
+#define RK817_GAS_GAUGE_DATA1		0x9e
+#define RK817_GAS_GAUGE_DATA2		0x9f
+#define RK817_GAS_GAUGE_DATA3		0xa0
+#define RK817_GAS_GAUGE_DATA4		0xa1
+#define RK817_GAS_GAUGE_DATA5		0xa2
+#define RK817_GAS_GAUGE_CUR_ADC_K0	0xb0
+
 #define RK817_POWER_EN_REG(i)		(0xb1 + (i))
 #define RK817_POWER_SLP_EN_REG(i)	(0xb5 + (i))
 
@@ -556,10 +1179,30 @@ enum rk809_reg_id {
 #define RK817_LDO_ON_VSEL_REG(idx)	(0xcc + (idx) * 2)
 #define RK817_BOOST_OTG_CFG		(0xde)
 
+#define RK817_PMIC_CHRG_OUT		0xe4
+#define RK817_CHRG_VOL_SEL		(0x07 << 4)
+#define RK817_CHRG_CUR_SEL		(0x07 << 0)
+
+#define RK817_PMIC_CHRG_IN		0xe5
+#define RK817_USB_VLIM_EN		(0x01 << 7)
+#define RK817_USB_VLIM_SEL		(0x07 << 4)
+#define RK817_USB_ILIM_EN		(0x01 << 3)
+#define RK817_USB_ILIM_SEL		(0x07 << 0)
+#define RK817_PMIC_CHRG_TERM		0xe6
+#define RK817_CHRG_TERM_ANA_DIG		(0x01 << 2)
+#define RK817_CHRG_TERM_ANA_SEL		(0x03 << 0)
+#define RK817_CHRG_EN			(0x01 << 6)
+
+#define RK817_PMIC_CHRG_STS		0xeb
+#define RK817_BAT_EXS			BIT(7)
+#define RK817_CHG_STS			(0x07 << 4)
+
 #define RK817_ID_MSB			0xed
 #define RK817_ID_LSB			0xee
 
 #define RK817_SYS_STS			0xf0
+#define RK817_PLUG_IN_STS		(0x1 << 6)
+
 #define RK817_SYS_CFG(i)		(0xf1 + (i))
 
 #define RK817_ON_SOURCE_REG		0xf5
@@ -701,8 +1344,10 @@ enum {
 
 enum {
 	RK805_ID = 0x8050,
+	RK806_ID = 0x8060,
 	RK808_ID = 0x0000,
 	RK809_ID = 0x8090,
+	RK816_ID = 0x8160,
 	RK817_ID = 0x8170,
 	RK818_ID = 0x8180,
 };
@@ -717,4 +1362,5 @@ struct rk808 {
 	const struct regmap_config	*regmap_cfg;
 	struct poweroff_handler		poweroff;
 };
+
 #endif /* __LINUX_REGULATOR_RK808_H */

-- 
2.39.5



