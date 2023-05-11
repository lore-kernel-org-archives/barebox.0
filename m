Delivery-date: Thu, 11 May 2023 10:59:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px29D-00Dkbq-OT
	for lore@lore.pengutronix.de; Thu, 11 May 2023 10:59:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px29B-0002S5-Qv
	for lore@pengutronix.de; Thu, 11 May 2023 10:59:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XyAaQ3i7kk8t03sLY7W6jIn+6291dI6nbFy4SGSkUm4=; b=dbAu8SQGstUsLUI2oO1yeJrCDZ
	dB0rjDz/zkoPa5bM08jR5TkCRO1AnZe9EjSKJLZBTN+a1aMTdMfqtqpZwjZEVqhJgW/Va0IJFKEI7
	SOur8QU/IVVDBpUJRs5bNUpU8ruCjqh1v3r17RyhjlYJAyxhmvWIRKeT4DLsaqr72CWJTPNOsWZyE
	LWv/1FlHCteC/hzsR+Akx/yF4ZQP4p8vsn4l+GW0bwV9I1NIz3egfXm+V81mZETwKquxwV4g2zbaB
	DzBlSP+R62ydlq7cirMQsD1Ozg7e4M7zhJAtqgG6h0nN+jc8MPdF3ppqvFR9mQuim3wIfdrFpauEe
	jW9LriDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1px27s-008HQq-0e;
	Thu, 11 May 2023 08:58:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1px27o-008HOv-0u
	for barebox@lists.infradead.org;
	Thu, 11 May 2023 08:58:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1px27i-0002BO-KZ; Thu, 11 May 2023 10:58:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1px27h-002gX5-VP; Thu, 11 May 2023 10:58:05 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1px27g-001SDN-Uw; Thu, 11 May 2023 10:58:04 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Thu, 11 May 2023 10:58:02 +0200
Message-Id: <20230511085803.335993-3-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230511085803.335993-1-rhi@pengutronix.de>
References: <20230511085803.335993-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230511_015812_346536_E0D873F2 
X-CRM114-Status: GOOD (  11.29  )
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
Subject: [RFT][PATCH 2/3] ARM: i.MX: TQMa6x: migrate flash partitions to device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This way the partitions are easier to adapt, and the board code becomes
more generic.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 arch/arm/boards/tqma6x/board.c |  2 --
 arch/arm/dts/imx6dl-mba6x.dts  | 13 +++++++++++++
 arch/arm/dts/imx6q-mba6x.dts   | 13 +++++++++++++
 3 files changed, 26 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index 5f59a259e620..ae339887568a 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -84,8 +84,6 @@ static int tqma6x_env_init(void)
 	if (!of_machine_is_compatible("tq,mba6x"))
 		return 0;
 
-	devfs_add_partition("m25p0", 0, SZ_512K, DEVFS_PARTITION_FIXED, "m25p0.barebox");
-
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
 		BBU_HANDLER_FLAG_DEFAULT);
 	imx6_bbu_internal_mmcboot_register_handler("emmc", "mmc2", 0);
diff --git a/arch/arm/dts/imx6dl-mba6x.dts b/arch/arm/dts/imx6dl-mba6x.dts
index dddc3d384ccc..612acba3239b 100644
--- a/arch/arm/dts/imx6dl-mba6x.dts
+++ b/arch/arm/dts/imx6dl-mba6x.dts
@@ -27,6 +27,19 @@
 	};
 };
 
+&flash {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x80000>;
+		};
+	};
+};
+
 &iomuxc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hog>;
diff --git a/arch/arm/dts/imx6q-mba6x.dts b/arch/arm/dts/imx6q-mba6x.dts
index 64635b958213..5154580fae73 100644
--- a/arch/arm/dts/imx6q-mba6x.dts
+++ b/arch/arm/dts/imx6q-mba6x.dts
@@ -27,6 +27,19 @@
 	};
 };
 
+&flash {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x80000>;
+		};
+	};
+};
+
 &iomuxc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hog>;
-- 
2.39.2



