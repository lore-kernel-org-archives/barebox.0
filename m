Delivery-date: Thu, 15 Feb 2024 17:45:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raerK-007dlI-1Q
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 17:45:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raerJ-0006rb-So
	for lore@pengutronix.de; Thu, 15 Feb 2024 17:45:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ne5oEYOMgZ7Rvb4sIhJwb40x868zLMNmOI6s/UEsKQQ=; b=T/YeED63smMDHTLlGWdYS7XFxg
	kjvRE1NlmwZ+RLpkDtVqqsgGaEtOivrnWuWeo2tM2a1h3Cuw9SY1zS1KP9+T98/8053IC/9otY1Mn
	6mYu2eFeszWfX7Lw3R4PtNBtbzuunT1qRrkGbq8I8JX6GGuMbMt8cTtCxfr1nxwWS7k4nAbH7hQci
	srohnFH8/l1gnBi0Mg1Amc0VtFGr2Wj4wxbbX+3OufL0b1Qq0b/wvAm9rUVR2Wqkc6D6G4UUqWbFk
	097yP2nrICMcxi7l8vFDWhVZz9hPKa57nDmYVpqodrxFcA7Qen//omsNag9m/emrdFZISf8DlPlw0
	furuZEUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raeqv-0000000H1gr-1t6l;
	Thu, 15 Feb 2024 16:44:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raeqp-0000000H1cO-2hCF
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 16:44:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raeqo-0006dD-Ca; Thu, 15 Feb 2024 17:44:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raeqn-000v41-WC; Thu, 15 Feb 2024 17:44:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raecn-009YG0-1C;
	Thu, 15 Feb 2024 17:30:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 17:30:04 +0100
Message-Id: <20240215163009.2172795-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
References: <20240215163009.2172795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_084443_734631_D7B8C76A 
X-CRM114-Status: GOOD (  10.99  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 10/15] ARM: dts: AT91: skov-arm9cpu: remove barebox environment on NOR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The NOR-Flash for ARM9CPUs in the field has U-Boot, so it's not a good
idea to overwrite its environment with barebox'. We'll add a SD-Card
environment for barebox in recovery case in a later commit, but for now
remove the NOR flash environment footgun.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v3:
  - new patch
---
 arch/arm/dts/at91-skov-arm9cpu.dts | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/arm/dts/at91-skov-arm9cpu.dts b/arch/arm/dts/at91-skov-arm9cpu.dts
index 5e2541f2fa76..ac1d5c0c2e6e 100644
--- a/arch/arm/dts/at91-skov-arm9cpu.dts
+++ b/arch/arm/dts/at91-skov-arm9cpu.dts
@@ -16,11 +16,6 @@ / {
 
 	chosen {
 		stdout-path = "serial0:115200n8";
-
-		environment {
-			compatible = "barebox,environment";
-			device-path = &environment_nor;
-		};
 	};
 
 	flash: nor_flash@10000000 {
@@ -36,12 +31,12 @@ partitions {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			barebox@0 {
+			u-boot@0 {
 				label = "bootloader";
 				reg = <0x00000 0x80000>;
 			};
 
-			environment_nor: env@80000 {
+			env@80000 {
 				label = "environment";
 				reg = <0x80000 0x20000>;
 			};
-- 
2.39.2



