Delivery-date: Thu, 22 Aug 2024 13:57:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6Rl-00CEnN-04
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 13:57:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh6Rk-0005BW-BQ
	for lore@pengutronix.de; Thu, 22 Aug 2024 13:57:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5nzbqt1jJI41goyOIJk7TLB1Ub9edzhbubl+dPGabaM=; b=nLhcMyA37hjq243CBuMWldMM3W
	QQKnYase/wbMNfAEhOzKhGCbaHPa0mxKKi47jKZzXAfEQwf9E7QGfmLaweZkWo7ij3TD3hmMYGRnF
	cRBZsbJwLz6apVf/19Brfg/xacb/RFgMIYiVF+k6AceTd8WUABY5X6q7S002eH9irKIr+YXe2yeka
	rz0l7CWX2YgxHJidrp1GbEfRp7wrwBclaHyuiuv8lPcldYXSQMSqTEIcuzk4s/4AJQNMLjBw7D1uI
	anzZfPdaeIhbEw+q1DVMXX9EM8jrWajrF0WyvK6kzQNsZMsb6damTNAbTGVDxwz0RVgMoFf2D0RyH
	XBH7V+MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6RJ-0000000Cf9r-2LQY;
	Thu, 22 Aug 2024 11:57:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh6R6-0000000Cf7B-0xNv
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 11:57:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6R4-0004vp-Pt; Thu, 22 Aug 2024 13:57:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6R4-002Exo-D3; Thu, 22 Aug 2024 13:57:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sh6R4-004y2g-11;
	Thu, 22 Aug 2024 13:57:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2024 13:56:59 +0200
Message-Id: <20240822115701.1184099-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_045704_295249_1722CD2F 
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] MIPS: dts: add /chosen/stdout-path where it is missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A number of MIPS boards don't have a stdout-path set and instead rely on
CONFIG_CONSOLE_ACTIVATE_ALL/FIRST to enable a console.

This can get problematic if more consoles are added in future, or
CONFIG_CONSOLE_ACTIVATE_NONE is to be used. So on systems that currently
have a single console, let's have /chosen/stdout-path point at it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/dts/black-swift.dts   | 4 ++++
 arch/mips/dts/dlink-dir-320.dts | 4 ++++
 arch/mips/dts/img-ci20.dts      | 4 ++++
 arch/mips/dts/loongson-ls1b.dts | 4 ++++
 arch/mips/dts/rzx50.dts         | 4 ++++
 5 files changed, 20 insertions(+)

diff --git a/arch/mips/dts/black-swift.dts b/arch/mips/dts/black-swift.dts
index af817dbfc7e1..6bb26d427f2d 100644
--- a/arch/mips/dts/black-swift.dts
+++ b/arch/mips/dts/black-swift.dts
@@ -13,6 +13,10 @@ aliases {
 		spiflash = &spiflash;
 	};
 
+	chosen {
+		stdout-path = &uart;
+	};
+
 	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x4000000>;
diff --git a/arch/mips/dts/dlink-dir-320.dts b/arch/mips/dts/dlink-dir-320.dts
index d19c3087d017..beec40f3dcc5 100644
--- a/arch/mips/dts/dlink-dir-320.dts
+++ b/arch/mips/dts/dlink-dir-320.dts
@@ -7,6 +7,10 @@ / {
 	#address-cells = <1>;
 	#size-cells = <1>;
 
+	chosen {
+		stdout-path = &serial0;
+	};
+
 	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x2000000>;
diff --git a/arch/mips/dts/img-ci20.dts b/arch/mips/dts/img-ci20.dts
index e1d3280c4e11..71038890d977 100644
--- a/arch/mips/dts/img-ci20.dts
+++ b/arch/mips/dts/img-ci20.dts
@@ -14,6 +14,10 @@ / {
 	model = "MIPS Creator CI20";
 	compatible = "img,ci20";
 
+	chosen {
+		stdout-path = &uart0;
+	};
+
 	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x10000000>;
diff --git a/arch/mips/dts/loongson-ls1b.dts b/arch/mips/dts/loongson-ls1b.dts
index 89cce5636bcf..30520a34f53b 100644
--- a/arch/mips/dts/loongson-ls1b.dts
+++ b/arch/mips/dts/loongson-ls1b.dts
@@ -6,6 +6,10 @@ / {
 	model = "Loongson Tech LS1B Demo Board";
 	compatible = "loongson,ls1b";
 
+	chosen {
+		stdout-path = &serial2;
+	};
+
 	oscillator: oscillator {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
diff --git a/arch/mips/dts/rzx50.dts b/arch/mips/dts/rzx50.dts
index bd3631f7c451..93211a97a59f 100644
--- a/arch/mips/dts/rzx50.dts
+++ b/arch/mips/dts/rzx50.dts
@@ -6,6 +6,10 @@ / {
 	model = "Ritmix RZX-50";
 	compatible = "ritmix,rzx50";
 
+	chosen {
+		stdout-path = &serial1;
+	};
+
 	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x4000000>;
-- 
2.39.2



