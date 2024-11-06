Delivery-date: Wed, 06 Nov 2024 17:35:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8j0V-005ayV-0j
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 17:35:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8j0V-0000Ts-Q8
	for lore@pengutronix.de; Wed, 06 Nov 2024 17:35:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YEaPz449VlffmbuJ8dK+iz+1N9BqqfisIkAjGOdEomA=; b=BkyeE5+4zq+lFqp+66tUku0M7Y
	avKdhXhnwvJd8SIV6GR9O7E9sRjZNRj6UY6IfrCBDTkMUGyaQn6SnkeG0ub31NbXq915Y3wsI4tQO
	afS5k1sSLPkHND7qFzIZowhiJk8rNWJtTlUmMRgF14H74AIHqTPkc9cAnbfevJvVBWLnXdKbGKbFy
	gxEF18xvKAdNzkejKUHE01vYR4cnndCplvAbnRRaSbSDRAVD0biplO4/rS7bdkDso+u+wmeORA9PV
	XxAyeNjsczt2ERh2MY7ZZxq/aphx+Zo1okbdPZCnHehzT5ft9Sa8a7qQ5y6rzituzA24lVDXYPI8l
	pYXCHhAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8izz-000000042qO-0XsP;
	Wed, 06 Nov 2024 16:35:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8izv-000000042pK-1rLt
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 16:35:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t8izs-0000EL-LN; Wed, 06 Nov 2024 17:35:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t8izs-002KXA-1G;
	Wed, 06 Nov 2024 17:35:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t8izs-00HO2D-11;
	Wed, 06 Nov 2024 17:35:08 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 06 Nov 2024 17:35:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241106-fix-sha256-assembly-v1-6-ad1ac961f15f@pengutronix.de>
References: <20241106-fix-sha256-assembly-v1-0-ad1ac961f15f@pengutronix.de>
In-Reply-To: <20241106-fix-sha256-assembly-v1-0-ad1ac961f15f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_083511_519802_FF2CA8B3 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] arm: configs: multi_v8_defconfig: enable arm optimized
 sha1/sha256 digest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a common configuration used in production systems as it provides
a faster implementation of the digest.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/configs/multi_v8_defconfig | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 39d5dd3fc1678f6a7a719f6ebcabc16b3d02f7ee..280a7bdb0367dd9897769273c07497e19a2db5ff 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -176,10 +176,8 @@ CONFIG_NET_USB_RTL8152=y
 CONFIG_DRIVER_SPI_FSL_QUADSPI=y
 CONFIG_DRIVER_SPI_IMX=y
 CONFIG_SPI_NXP_FLEXSPI=y
-CONFIG_I2C=y
 CONFIG_I2C_GPIO=y
 CONFIG_I2C_IMX=y
-CONFIG_I2C_IMX_LPI2C=y
 CONFIG_I2C_RK3X=y
 CONFIG_I2C_MUX=y
 CONFIG_I2C_MUX_PCA954x=y
@@ -248,7 +246,6 @@ CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=y
 CONFIG_FIRMWARE_ZYNQMP_FPGA=y
 CONFIG_ARM_SCMI_PROTOCOL=y
-CONFIG_TI_SCI_PROTOCOL=y
 CONFIG_GENERIC_PHY=y
 CONFIG_USB_NOP_XCEIV=y
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
@@ -271,4 +268,6 @@ CONFIG_FS_PSTORE=y
 CONFIG_FS_PSTORE_CONSOLE=y
 CONFIG_FS_RATP=y
 CONFIG_LZO_DECOMPRESS=y
+CONFIG_DIGEST_SHA1_ARM64_CE=y
+CONFIG_DIGEST_SHA256_ARM64_CE=y
 # CONFIG_MISSING_FIRMWARE_ERROR is not set

-- 
2.39.5



