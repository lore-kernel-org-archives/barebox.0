Delivery-date: Wed, 11 Jan 2023 18:42:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf7K-0091bV-6u
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 18:42:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf7H-0005mR-Dq
	for lore@pengutronix.de; Wed, 11 Jan 2023 18:42:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dSRKyfChi3tAEMCO3XqogznY6UIuQrEpTc2V1gvkmoI=; b=LZ+RKU0/ZRhfPM8R/dEHm4v9N0
	aWodM5zc3lJ/QLs5bOIDwghV2/F5U9kXVQjZv+jY1aOodC91W0xlYDjvU9n3yvyB9ilWHGNoo8q+y
	Cp1PYt0NVcMKNLN96MAma3k7TWs+jsHHq56GFOir/toXlFYm/+g+dhsIj/8ceReLSQzKAwhB5sLwD
	UaYtFj5ReP53EqFP0oDzgqHV8o2gJdy+Hp0hB3N36H/CQjdaDt8d2a3Q8cSoud0WPYg/uvMKEHSEX
	DEH3p4awNPtmkAHZQq8ScBXRGVaE5h5ylwpmMh7+dwCs892u9txj9QMJ92+Y9dE1ud9WCIVC9vZOC
	fUSqEeCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf60-00CTZF-19; Wed, 11 Jan 2023 17:41:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf5T-00CTI1-3C
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 17:40:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-00054E-QJ; Wed, 11 Jan 2023 18:40:29 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5R-005M6g-5Q; Wed, 11 Jan 2023 18:40:29 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5O-007DGi-JX; Wed, 11 Jan 2023 18:40:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 18:40:21 +0100
Message-Id: <20230111174023.1719129-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
References: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_094031_213781_0ABCFC17 
X-CRM114-Status: UNSURE (   9.15  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/15] ARM: AT91: sama5d3_xplained: switch to upstream binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that we have an updated NAND driver in place that (exclusively)
supports the new binding, drop our override, so the new driver is
used instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/at91-sama5d3_xplained.dts | 26 --------------------------
 arch/arm/dts/sama5d3.dtsi              | 16 ----------------
 2 files changed, 42 deletions(-)

diff --git a/arch/arm/dts/at91-sama5d3_xplained.dts b/arch/arm/dts/at91-sama5d3_xplained.dts
index cdb29ca6669e..b734457214eb 100644
--- a/arch/arm/dts/at91-sama5d3_xplained.dts
+++ b/arch/arm/dts/at91-sama5d3_xplained.dts
@@ -22,29 +22,3 @@
 
 /* Will be automatically read back from HW */
 /delete-node/ &{/memory@20000000};
-
-&nand_controller {
-	nand@3 {
-		compatible = "atmel,at91rm9200-nand";
-		#address-cells = <1>;
-		#size-cells = <1>;
-		reg = <	0x60000000 0x01000000	/* EBI CS3 */
-			0xffffc070 0x00000490	/* SMC PMECC regs */
-			0xffffc500 0x00000100	/* SMC PMECC Error Location regs */
-			0x00110000 0x00018000	/* ROM code */
-			>;
-		interrupts = <5 IRQ_TYPE_LEVEL_HIGH 6>;
-		atmel,nand-addr-offset = <21>;
-		atmel,nand-cmd-offset = <22>;
-		atmel,nand-has-dma;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_nand0_ale_cle>;
-		atmel,pmecc-lookup-table-offset = <0x10000 0x8000>;
-
-		atmel,has-pmecc;
-		atmel,pmecc-cap = <4>;
-		atmel,pmecc-sector-size = <512>;
-		status = "okay";
-	};
-};
-
diff --git a/arch/arm/dts/sama5d3.dtsi b/arch/arm/dts/sama5d3.dtsi
index 2301ad135b3b..84fc1d0ed431 100644
--- a/arch/arm/dts/sama5d3.dtsi
+++ b/arch/arm/dts/sama5d3.dtsi
@@ -5,19 +5,3 @@
 		mmc1 = &mmc1;
 	};
 };
-
-&ebi {
-	compatible = "simple-bus";
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ranges;
-
-};
-
-&nand_controller {
-	compatible = "simple-bus";
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ranges;
-
-};
-- 
2.30.2



