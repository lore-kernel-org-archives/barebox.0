Delivery-date: Wed, 05 Feb 2025 10:49:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1j-008kWe-1c
	for lore@lore.pengutronix.de;
	Wed, 05 Feb 2025 10:49:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfc1i-0004dY-Uu
	for lore@pengutronix.de; Wed, 05 Feb 2025 10:49:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dqNUWPcV3nCePJAJOPWxFpXjPyVYl4QD+ORHu0UEbNk=; b=AbEiL20zuf06O54ggs86DWYsG3
	HAI70JJDILuLYHPYzORDrnG4v2D5+V59qFKIV8ybn9zhZh0KSR4DlZp/1UzpeMa0CM4qkqesu7Hup
	RqPGqwor8HDxLTjms8hZ4fY/IJtdAB37XrlMlTDjFBzgtoEXuTVV6JyOWLcDIPYlQfoYDTGkVcazV
	eGCkniAbo9o9iKSjtNYQ4hEZ/AKJefoLBHxcvw1BxyLfpbw4FKzVEezoSTIHOJr7kl53D/w91lC+9
	bGEZRhgqqIycyPUmy30ipABUOAR2iFgLDdwfxFb8d3Y7bnvSIq1UiomgYrBoj2YMVPuoaEcsfRJXa
	bld/fCSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc17-00000002kH3-1pdt;
	Wed, 05 Feb 2025 09:48:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfc13-00000002kDZ-06MD
	for barebox@lists.infradead.org;
	Wed, 05 Feb 2025 09:48:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00048K-QW; Wed, 05 Feb 2025 10:48:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-003c2i-1I;
	Wed, 05 Feb 2025 10:48:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tfc0z-00F0Mw-0y;
	Wed, 05 Feb 2025 10:48:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 05 Feb 2025 10:48:15 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-k3-emmc-v1-7-06679246be41@pengutronix.de>
References: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
In-Reply-To: <20250205-k3-emmc-v1-0-06679246be41@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738748893; l=1155;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Xa/jpYpBBhfxcfPl9nB1kXWEr9Zr4uBGlssrkryjXDY=;
 b=vfOrzOuDz/NqMM5PDd87SvQGybhfi/+j7tSDtCCVB6G41i692ouDXpVjnrEKxGIm5pZx6QqJW
 FnzXC6Og50VAe8qSuuEwjcmOQB0KI6kE3/hw62I20/Q6ubetpnQB7pI
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_014817_074559_C1AC6B0F 
X-CRM114-Status: UNSURE (   9.14  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/9] ARM: k3: limit eMMC frequency to 25MHz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The eMMCs on am625 currently only work reliably with 25MHz. Until this
issue is sorted out limit them to 25MHz on the affected boards
(beagleplay and am625-sk).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am625-beagleplay.dts | 4 ++++
 arch/arm/dts/k3-am625-sk.dts         | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/dts/k3-am625-beagleplay.dts b/arch/arm/dts/k3-am625-beagleplay.dts
index 60340ab8ca..73ac950414 100644
--- a/arch/arm/dts/k3-am625-beagleplay.dts
+++ b/arch/arm/dts/k3-am625-beagleplay.dts
@@ -29,3 +29,7 @@ AM62X_IOPAD(0x0224, PIN_INPUT, 0) /* (D22) MMC1_DAT3 */
 		AM62X_IOPAD(0x0240, PIN_INPUT, 0) /* (D17) MMC1_SDCD */
 	>;
 };
+
+&sdhci0 {
+	max-frequency = <26000000>;
+};
diff --git a/arch/arm/dts/k3-am625-sk.dts b/arch/arm/dts/k3-am625-sk.dts
index 1982c34388..56d5681519 100644
--- a/arch/arm/dts/k3-am625-sk.dts
+++ b/arch/arm/dts/k3-am625-sk.dts
@@ -7,3 +7,7 @@
  * DRAM size differs between board variants. Real size is read from DDRSS
  */
 /delete-node/ &{/memory@80000000};
+
+&sdhci0 {
+	max-frequency = <26000000>;
+};

-- 
2.39.5



