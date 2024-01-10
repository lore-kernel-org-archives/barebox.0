Delivery-date: Wed, 10 Jan 2024 17:02:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2U-00BoJ4-1H
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 17:02:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2T-0002mo-Nt
	for lore@pengutronix.de; Wed, 10 Jan 2024 17:02:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nPenw6b+iH3PkgwY/cZBz1plicmgw+mE+hC9qlnfJY0=; b=T+9yXihcsSKbudaoCzS1l6lXfr
	J1jjeAkMWRf33bpZwm0r5E5OL1S/SfTP89lbbXF4+qf9AODg5oLFycRqn2iXkGmlWxSChFOMomzWB
	YaxCNsAM/m9FafhFDewM/OqE/VVpKH4r4T2ES5eQseIF0uWwKhD0A2fTH+kaGxV0SQw43iixDxNu7
	/29jIdcWO1RwBSrJ1DgOpqyjad5OjUB0kqHq+Ujn5+DtKG80HWAUDBAOIWx7C50BfyqTlmzYXTZ4C
	XYFoCCLNPECYw40QTP3E1otzC9NiPzgxLM1y0GeKR0ckl2+pvbMTUQ0M29OMtdwj1YS6DYSL/qsPO
	9y0uUn4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1N-00Ckib-22;
	Wed, 10 Jan 2024 16:01:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1E-00Ckar-1G
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 16:01:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-0002Bo-99; Wed, 10 Jan 2024 17:01:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-001juv-Sy; Wed, 10 Jan 2024 17:01:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-00HLtL-2b;
	Wed, 10 Jan 2024 17:01:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jan 2024 17:01:07 +0100
Message-Id: <20240110160112.4134162-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
References: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_080128_473425_BAEA9499 
X-CRM114-Status: GOOD (  15.50  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 05/11] ARM: dts: layerscape: add header for barebox DT overrides
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't use the ls1046a-rdb kernel device tree as-is for barebox, but
instead include it and override some nodes. Some overrides can be
applicable to all SoCs so add a new file that's ls1046a-specific.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 arch/arm/dts/fsl-ls1046a-rdb.dts          | 2 +-
 arch/arm/dts/fsl-ls1046a.dtsi             | 7 +++++++
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts | 2 +-
 3 files changed, 9 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/fsl-ls1046a.dtsi

diff --git a/arch/arm/dts/fsl-ls1046a-rdb.dts b/arch/arm/dts/fsl-ls1046a-rdb.dts
index 5a75212bb5e6..37023fae9be0 100644
--- a/arch/arm/dts/fsl-ls1046a-rdb.dts
+++ b/arch/arm/dts/fsl-ls1046a-rdb.dts
@@ -3,11 +3,11 @@
 /dts-v1/;
 
 #include <arm64/freescale/fsl-ls1046a-rdb.dts>
+#include "fsl-ls1046a.dtsi"
 
 / {
 	aliases {
 		eeprom = &{i2c0/eeprom@52};
-		mmc0 = &esdhc;
 	};
 
 	chosen {
diff --git a/arch/arm/dts/fsl-ls1046a.dtsi b/arch/arm/dts/fsl-ls1046a.dtsi
new file mode 100644
index 000000000000..a661cb0c8970
--- /dev/null
+++ b/arch/arm/dts/fsl-ls1046a.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/ {
+	aliases {
+		mmc0 = &esdhc;
+	};
+};
diff --git a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
index 13ce24a8895a..650e89bffe8a 100644
--- a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
+++ b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
@@ -11,6 +11,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 #include "fsl-tqmls1046a.dtsi"
+#include "fsl-ls1046a.dtsi"
 
 / {
 	model = "TQ TQMLS1046A SoM on MBLS10xxA board";
@@ -19,7 +20,6 @@ / {
 	aliases {
 		serial0 = &duart0;
 		serial1 = &duart1;
-		mmc0 = &esdhc;
 		qspiflash0 = &qflash0;
 		qspiflash1 = &qflash1;
 		qsgmii_s1_p1 = &qsgmii1_phy1;
-- 
2.39.2



