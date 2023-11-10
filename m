Delivery-date: Fri, 10 Nov 2023 13:59:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6w-005rW0-1e
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6t-0003Ls-Oe
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/04UrSI9eD0mVHMq2MbuFJ0fB7UCMQXVh8vtmZY1SOo=; b=0HjqiDhNeOC+J/T1sfvY7xdJYD
	2QhODEqT4Dll2hk+qHMALMU9d1mJjTtdlUZZcI2v3z/cYbp0QPD6mhLzw8n5JUv3RaVjCnptqK0Ho
	FFqt7qyIp2eA/iLwtZSvYMoPOpHyGoLtnadg3D1h+xJYIyTc2rEiL3lUxQZ9rWVDA+WA/9mKrnycZ
	Eji0JYfdJLMp2+7VI3M0jVXIEzj7XKCxQuTjvHTr6UoHr8I+Mp/Lk9x04/XNvghe8mRLm/v6j6XH4
	fzaADyk/jGQIGjWETaVEETeP5aZglD4axGzlhFCXOctaitiaVVz4v5TMiYmoVbibqzX3op5wHuAFb
	eBeDVDLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5l-008kER-0t;
	Fri, 10 Nov 2023 12:58:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5a-008k0I-1K
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 12:58:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/04UrSI9eD0mVHMq2MbuFJ0fB7UCMQXVh8vtmZY1SOo=; b=MURNlzH1IKIfcM01s39MOTnjd8
	9NdTjInkM9c7U2t2o0PJvenA8wybJBGVEJgOStg4nfmCsUaSpHIAyFL0PfYun9omlRVt7xljY+9jm
	yniBoR+4bP/+XKNh/nEnBiqp3PEBpUYV24SlSOtg2rHEu1VBy8rqhK/xEaz4ABPBQWMvIOmwxArPq
	R8HMlq5eF9IiE8UscWfzeEeKh2IKy8rEHkkvKabL4eTDov5a3sOew2aS5Tm+mgRLsh5Fv/UlunqIb
	BgAQ7lU9Z6KDFW/TO3jtK3yEJduXdGaW+Hd4ZJpfnaPJ+teYBK4kR4RCwZ1GRaClAOLXh2WNKX2LS
	iwwcHRxg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5S-00Fbuo-1y
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5I-00027X-1v; Fri, 10 Nov 2023 13:58:04 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-0081Xv-7R; Fri, 10 Nov 2023 13:58:03 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-008s2z-0G;
	Fri, 10 Nov 2023 13:58:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:58:00 +0100
Message-Id: <20231110125800.1901232-26-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_125814_881609_47A67E46 
X-CRM114-Status: UNSURE (   7.55  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,UPPERCASE_50_75 autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 25/25] ARM: multi_v8_defconfig: enable i.MX9 boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/multi_v8_defconfig | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 9c538e698d..aea63b32d4 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -8,6 +8,7 @@ CONFIG_MACH_NXP_IMX8MM_EVK=y
 CONFIG_MACH_NXP_IMX8MN_EVK=y
 CONFIG_MACH_NXP_IMX8MP_EVK=y
 CONFIG_MACH_NXP_IMX8MQ_EVK=y
+CONFIG_MACH_PHYTEC_SOM_IMX8MM=y
 CONFIG_MACH_PHYTEC_SOM_IMX8MQ=y
 CONFIG_MACH_POLYHEX_DEBIX=y
 CONFIG_MACH_PROTONIC_IMX8M=y
@@ -15,6 +16,7 @@ CONFIG_MACH_SKOV_IMX8MP=y
 CONFIG_MACH_TQ_MBA8MPXL=y
 CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
 CONFIG_MACH_ZII_IMX8MQ_DEV=y
+CONFIG_MACH_TQ_MBA9XXXCA=y
 CONFIG_IMX_IIM=y
 CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
@@ -140,6 +142,7 @@ CONFIG_SERIAL_DEV_BUS=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_CADENCE=y
+CONFIG_DRIVER_SERIAL_LPUART32=y
 CONFIG_VIRTIO_CONSOLE=y
 CONFIG_DRIVER_NET_DESIGNWARE_IMX8=y
 CONFIG_DRIVER_NET_DESIGNWARE_ROCKCHIP=y
@@ -164,9 +167,11 @@ CONFIG_SPI_NXP_FLEXSPI=y
 CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
 CONFIG_I2C_IMX=y
+CONFIG_I2C_IMX_LPI2C=y
 CONFIG_I2C_RK3X=y
 CONFIG_MTD=y
 CONFIG_MTD_CONCAT=y
+CONFIG_MTD_M25P80=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_VIRTIO_BLK=y
@@ -195,6 +200,7 @@ CONFIG_MCI_ARASAN=y
 CONFIG_COMMON_CLK_SCMI=y
 CONFIG_MFD_ACT8846=y
 CONFIG_RAVE_SP_CORE=y
+CONFIG_MFD_PCA9450=y
 CONFIG_MFD_RK808=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
@@ -206,6 +212,7 @@ CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_POLLER=y
 CONFIG_WATCHDOG_DW=y
 CONFIG_WATCHDOG_IMX=y
+CONFIG_WATCHDOG_IMXULP=y
 CONFIG_RAVE_SP_WATCHDOG=y
 CONFIG_HWRNG=y
 CONFIG_HW_RANDOM_VIRTIO=y
-- 
2.39.2



