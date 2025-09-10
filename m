Delivery-date: Wed, 10 Sep 2025 14:00:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwJVP-001SGp-1Q
	for lore@lore.pengutronix.de;
	Wed, 10 Sep 2025 14:00:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwJVO-0006ga-U3
	for lore@pengutronix.de; Wed, 10 Sep 2025 14:00:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+h27wUEScN5M7rrxvqiyka+VDkDc27f8gOhnYbdZY+I=; b=4gTRQLqFiCnZEma3GG5h5yhQ8N
	nLrdABl/LRGStVsheNIJn+MTDt3rt+SyzWSvnTjLJj50F29iW64NIJLvTzx1OPSgiao6bbk1hxtrO
	XlBjaa6oJAA58nPhJMdAYjXIz9Xc72HdCZaasQV7PaUp+dykPvvgPOnMmKhT5nDbbjMtiojxz57iw
	kL1xBOtPD1wvQac9l2vrSWsxLijop02Pkj5UuWtLHfG2Sa6j3JfZ2xgAtsnFjrgrxKJlXko5CDLc9
	lG4ZrDIbtGK7hWBMk5Nm+H0yaAV16GwaEdM1a4ZxIx6n38UNhgopI8+QdAVCAHh/ZEp+QeKAxaX9I
	zMrJcc1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwJUe-0000000DySS-1Lcv;
	Wed, 10 Sep 2025 12:00:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwJUb-0000000DyQe-2Wl6
	for barebox@lists.infradead.org;
	Wed, 10 Sep 2025 12:00:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwJUY-0006Nk-D6; Wed, 10 Sep 2025 14:00:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwJUV-000aGy-2E;
	Wed, 10 Sep 2025 13:59:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uwJUV-0000000DPAr-2JtZ;
	Wed, 10 Sep 2025 13:59:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Sep 2025 13:59:56 +0200
Message-ID: <20250910115956.3195025-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_050005_646351_EC617441 
X-CRM114-Status: GOOD (  10.63  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3: am625: fix syscon-reboot-mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On AM625 the DEVSTAT register for specifying the reboot mode is at
0x43000030, not at 0x43010030.

Fixes: 45647c1c85 ("ARM: k3: add syscon-reboot-mode")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am625.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/k3-am625.dtsi b/arch/arm/dts/k3-am625.dtsi
index 2aa77ab2d5..a67b9f5d9a 100644
--- a/arch/arm/dts/k3-am625.dtsi
+++ b/arch/arm/dts/k3-am625.dtsi
@@ -10,9 +10,9 @@ chosen {
 };
 
 &wkup_conf {
-	reboot-mode-syscon@10030 {
+	reboot-mode-syscon@30 {
 		compatible = "syscon", "simple-mfd";
-		reg = <0x10030 0x4>;
+		reg = <0x30 0x4>;
 
 		reboot_mode: reboot-mode {
 			compatible = "syscon-reboot-mode";
-- 
2.47.3



