Delivery-date: Thu, 02 Mar 2023 11:41:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNT-006TQc-NB
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 11:41:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNT-0003FX-Jm
	for lore@pengutronix.de; Thu, 02 Mar 2023 11:41:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y+nM9k4slFb9TWoRexI0FpPHaCyXHEEv7ZVht9/MRI0=; b=4T+M+9HQWzKXi/mhV2CW2hZ87d
	wk0LmVWkAct2JtBexRGY+SjQeDC6kjquwNzzeEnfkwQrJCUBrawVWQIHh9U+Ub0DcsYoqY7nmxxOX
	2s4esTxurPMc5I3MHyoV+11nhTLuVDM8bwpY6MJX0NtJpFFfUXmUrCVhcYv3phcjpmzONV1JACcd1
	svxsNjcw6I3HdV+STJ5zJ8JESgKEmbEnSsu+l5R5TGsbIX9vVGC574tzhzjaSwLr3G9YQ+2EmGbJO
	iiQ9Dtb2PX9+cUUo9Y9UzTLVyLYXSvNPn9KCN52tz33o63h3fGtqaID6dNrblHAet9lFubt/swDVG
	G1DLNlOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgM1-001hH7-3F; Thu, 02 Mar 2023 10:40:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgLr-001hE8-Or
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 10:39:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLk-0002W9-9D; Thu, 02 Mar 2023 11:39:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLi-001J5g-WB; Thu, 02 Mar 2023 11:39:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLg-003wZC-Il; Thu, 02 Mar 2023 11:39:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 11:39:41 +0100
Message-Id: <20230302103943.939422-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302103943.939422-1-s.hauer@pengutronix.de>
References: <20230302103943.939422-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_023955_842510_4441E9E2 
X-CRM114-Status: GOOD (  11.23  )
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
Subject: [PATCH 6/8] ARM: dts: imx7d-peb-av-02: Fix dtc warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

"display" is both a property and a node name. Rename the node to avoid
dtc warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx7d-peb-av-02.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx7d-peb-av-02.dtsi b/arch/arm/dts/imx7d-peb-av-02.dtsi
index dcf117c71a..2e5af755bb 100644
--- a/arch/arm/dts/imx7d-peb-av-02.dtsi
+++ b/arch/arm/dts/imx7d-peb-av-02.dtsi
@@ -72,7 +72,7 @@
 	lcd-supply = <&lcd_3v3>;
 	status = "disabled";
 
-	display0: display {
+	display0: display0 {
 		bits-per-pixel = <32>;
 		bus-width = <24>;
 
-- 
2.30.2



