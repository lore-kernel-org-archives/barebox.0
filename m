Delivery-date: Fri, 17 Feb 2023 18:34:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4d3-00AIAZ-Ju
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:34:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4d1-0005ab-U5
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:34:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mSTW0G0A6RvZCmeUW/tbClmt1TCyCroxF8qj2ruBUgE=; b=YHWr63okGvxjjwxfnwtO4WAiFL
	/6aDHBTFUniGLpNW7As0fjEzxLqDfxzuFQOLmlbv5CHrKQbhoqq2kjayMN9DSkXmy9cvAjPCezQ+i
	v3Li9oG8fglw5RhmLQsG5XlH9E0ZwjH+lZ4j878zGp8VpSoiSfjUmCpMTj89YlqLw5i9nizpkjSvK
	4yb8pbaWG9OYZA58syETe6wTrlvxfYVEHWmsJkjgmptFXK8XF9McbU+ywu+8rWEv103tJSHRxYPlH
	YoU18/7/xX798vi6I6rDnRCG5WlfpaWNVl8ikHG1KQBzUKchjwqebsqAj07PSnTOnYMZqB3UkQXVJ
	4HbyREYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4bx-00FGoV-VM; Fri, 17 Feb 2023 17:33:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zm-00FFMy-Ew
	for barebox@bombadil.infradead.org; Fri, 17 Feb 2023 17:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=mSTW0G0A6RvZCmeUW/tbClmt1TCyCroxF8qj2ruBUgE=; b=EbVKcGRk/ZOCGGSMvxgnvfeqDt
	CJn9bKDSohRerL2JbX80lKqTLxoktWO+J9LfZ3T4uLIz4Uih1N2p4oNdwzYWRGeWyGIWAbwXn0HPg
	r5jOF5t9OeyWMFH1/uCysZzhNmXV0N6ktX2cjE+cdTkL+JJymFv6Tr0JianhiYqMaYYB1OrUujn4c
	EtQLOgMn9IG60qbNpfHsqYD6D85mkiyGrO8w8xPqGkjvwd9nh+dIniPK9TtYlLRiJyemlRNB7zDkC
	W6Pvg976JZovlgFot+y4apDv3JRSlszq4B5pX1+ezMCnyOp7Cedk6SnV4i3IUB7WOlRNSbovw/NNZ
	rqUTGs3g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pT4Yz-00Ai1P-27
	for barebox@lists.infradead.org;
	Fri, 17 Feb 2023 17:31:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Zb-0004Fg-L8; Fri, 17 Feb 2023 18:31:03 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZZ-005dUW-Rz; Fri, 17 Feb 2023 18:31:03 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZV-007ixb-W2; Fri, 17 Feb 2023 18:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:42 +0100
Message-Id: <20230217173057.1839835-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_173108_057965_2D5DB6D2 
X-CRM114-Status: UNSURE (   9.19  )
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
Subject: [PATCH v1 05/20] MIPS: dts: ath79: ar9331: use path references when extending nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

LED heartbeat already broke, because upstream renamed the node name.
Fix that and let's use references, so we get errors if an upstream DT
update breaks our usage.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/dts/ar9331-dptechnics-dpt-module.dts | 16 ++++++----------
 arch/mips/dts/ar9331.dtsi                      | 12 +++++-------
 2 files changed, 11 insertions(+), 17 deletions(-)

diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
index 8a0ae9caf791..da19d7b88ee1 100644
--- a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
+++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
@@ -20,18 +20,14 @@
 			barebox,provide-mac-address = <&eth0>;
 		};
 	};
+};
 
-	leds {
-		system {
-			barebox,default-trigger = "heartbeat";
-		};
-	};
+&{/leds/led-0} {
+	barebox,default-trigger = "heartbeat";
+};
 
-	gpio-keys {
-		button@0 {
-			gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
-		};
-	};
+&{/gpio-keys/button@0} {
+	gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
 };
 
 &spiflash {
diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
index 72f029754eab..20e4d64c040f 100644
--- a/arch/mips/dts/ar9331.dtsi
+++ b/arch/mips/dts/ar9331.dtsi
@@ -1,10 +1,8 @@
-/ {
-	ahb {
-		wdt0: wdt@18060008 {
-			compatible = "qca,ar9331-wdt", "qca,ar9344-wdt";
-			reg = <0x18060008 0x8>;
-			clocks = <&pll ATH79_CLK_CPU>;
-		};
+&{/ahb} {
+	wdt0: wdt@18060008 {
+		compatible = "qca,ar9331-wdt", "qca,ar9344-wdt";
+		reg = <0x18060008 0x8>;
+		clocks = <&pll ATH79_CLK_CPU>;
 	};
 };
 
-- 
2.30.2



