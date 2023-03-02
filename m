Delivery-date: Thu, 02 Mar 2023 11:41:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNc-006TSm-7F
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 11:41:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNb-0003IK-Gx
	for lore@pengutronix.de; Thu, 02 Mar 2023 11:41:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wt8lUguBRA1Zx0SaHcu9oCqbScrBmLeMppAjic7k/oM=; b=SJ3nub7iS97OGl7kxLemvnyBl9
	f60r1O5bA7MEU/JrI5m27aGerFNpYMzUIM+mnGN8TPRf+oiodORbUZ7sB2o5J/TZ2GQE2H+TijitA
	rma2/Nx+uOYHUdRYX20lRIAMg8ZbJSl2vg7y8sbw925TIJ7j7dujeY3eX+BRnDxoQUZ21wHKPiORd
	TVJUK+2/vT7ZdHy50zIabCHQOWsXkCVT4TgEqGNe4AyH/nKqFyxXp8zaJXoEnCxrq9PBZ+WEJfNMi
	4dJfNwDq0jtAmLyu59uIy6nTiyvUoDsYiI9bgUUanhkudUEQ4Dx30FI6CVoenXP27NfL9U0kC4ASw
	p9CJDJRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgMJ-001hNX-0A; Thu, 02 Mar 2023 10:40:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgM9-001hK1-Ie
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 10:40:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLk-0002W7-9J; Thu, 02 Mar 2023 11:39:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLi-001J5a-Hy; Thu, 02 Mar 2023 11:39:46 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLg-003wZ0-Gh; Thu, 02 Mar 2023 11:39:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 11:39:37 +0100
Message-Id: <20230302103943.939422-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302103943.939422-1-s.hauer@pengutronix.de>
References: <20230302103943.939422-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_024013_653049_DC58921E 
X-CRM114-Status: GOOD (  12.11  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] ARM: dts: digic4: Fix dtc warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixes:

arch/arm/dts/digic4.dtsi:34.13-39.4: Warning (unit_address_vs_reg):
/gpio: node has a reg or ranges property, but no unit name
arch/arm/dts/digic4.dtsi:41.13-44.4: Warning (unit_address_vs_reg):
/uart: node has a reg or ranges property, but no unit name
arch/arm/dts/canon-a1100.dts:9.9-12.4: Warning (unit_address_vs_reg):
/memory: node has a reg or ranges property, but no unit name

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/digic4.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/digic4.dtsi b/arch/arm/dts/digic4.dtsi
index 2db9393b33..051d8aad44 100644
--- a/arch/arm/dts/digic4.dtsi
+++ b/arch/arm/dts/digic4.dtsi
@@ -31,14 +31,14 @@
 	 * Assume that DIGIC4 has at least 96 pins.
 	 * So resource size is 96 * 4 = 0x180.
 	 */
-	gpio: gpio {
+	gpio: gpio@c0220000 {
 		compatible = "canon,digic-gpio";
 		reg = <0xc0220000 0x180>;
 		#gpio-cells = <2>;
 		gpio-controller;
 	};
 
-	uart: uart {
+	uart: uart@c0800000 {
 		compatible = "canon,digic-uart";
 		reg = <0xc0800000 0x1c>;
 	};
-- 
2.30.2



