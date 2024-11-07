Delivery-date: Thu, 07 Nov 2024 15:06:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t939J-005wk9-1U
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 15:06:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t939K-0006Wo-1B
	for lore@pengutronix.de; Thu, 07 Nov 2024 15:06:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YEaPz449VlffmbuJ8dK+iz+1N9BqqfisIkAjGOdEomA=; b=hwNbcBF6QVxXq29GpdDiH+rTUU
	l575dThCWqjKo7MHtH1YLWNfOqsWXqMZc2qoqp+y1ja0QhUTASecG4CfggSveYORyb+dNItuGC6FK
	HgdTXKbT0ivgj4S3qcDTLmqwKa5YTDt/0o0pSjzRDU31NFJ/OIObodj8Wp92TMwl8NKbpjcZwYv9/
	ztdXqURKW61/B1XO0K4zrLSgBMySAFxZn0a7/H841mYbI4na7JaHJrF0Nj/IGW02g7lrX1Pdrgw48
	hZfJEzyAlPnB33l5IdzOpsL4eCGyitoZSMEuD0R5dERKUVKyv2ZXEvSu91sx0j8ZtaJ99hrZ+j8Cr
	iv0rIWWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t938s-00000007E6z-28l9;
	Thu, 07 Nov 2024 14:05:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t935k-00000007DXf-0r08
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 14:02:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935g-0005tc-6Y; Thu, 07 Nov 2024 15:02:28 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935f-002T9K-2a;
	Thu, 07 Nov 2024 15:02:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t935f-00EWBz-2L;
	Thu, 07 Nov 2024 15:02:27 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 07 Nov 2024 15:02:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241107-fix-sha256-assembly-v2-6-5fdb418f7f54@pengutronix.de>
References: <20241107-fix-sha256-assembly-v2-0-5fdb418f7f54@pengutronix.de>
In-Reply-To: <20241107-fix-sha256-assembly-v2-0-5fdb418f7f54@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_060232_397808_3A82A68C 
X-CRM114-Status: UNSURE (   9.67  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/7] arm: configs: multi_v8_defconfig: enable arm
 optimized sha1/sha256 digest
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



