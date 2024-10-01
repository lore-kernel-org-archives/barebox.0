Delivery-date: Tue, 01 Oct 2024 10:53:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svYdI-004tyB-1q
	for lore@lore.pengutronix.de;
	Tue, 01 Oct 2024 10:53:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svYdI-0005CL-Vi
	for lore@pengutronix.de; Tue, 01 Oct 2024 10:53:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CHqpsdbNouFN1cu4WHJlCYcPUGbAP/okQyGIQhg+ijY=; b=LGkHO5mkUOoui2ZA5HU+7ZslkS
	RRZVTgq63lhMu4BcgPsP9VNsx6gWOQ5XVxjciaU0Oy3jlWlip52JaB6HAtxEMQxY/vOrBE/LRrgoC
	lLbYmdwgob+qS4+3WeaoMscIb7h++/SuRbhG+XkPdn8Wcvj0f4qx2xmNJUCCF8PpxmommdNh3GUk9
	QLu2VmSZICsLtI4yFnr4zztw0j7k9lpvzOMrcPhRQPNyfH/hD2WPk5Xg4s1blM9ZAXNAy763httap
	meMdXL0YeULAdpDE4ovLgn97NchaE9qhjfHWtG3WRAuLYAVYrFBslGcztnjnT0sPNp7/1oVgB7kLm
	581a37RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svYcg-000000028Qw-0HpL;
	Tue, 01 Oct 2024 08:52:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svYcJ-000000028Py-3nlG
	for barebox@bombadil.infradead.org;
	Tue, 01 Oct 2024 08:52:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=CHqpsdbNouFN1cu4WHJlCYcPUGbAP/okQyGIQhg+ijY=; b=rPxS6Gid/izTuKlXxgkKCCeIJo
	8Vp3uOvWGqlC2ZXO7JYkJAVtFnlSYi6BeEiM4prLOm8cONEv+4iE5FIr47hrPcYlOStaoxrFO60I8
	KA+TnTWUtdxDol7wqab6DbgDqEKBNx69ua1KwKYQkwLte9Den1XQ3VsS6+AGSQq/CfrwFUz6igoBU
	bHudg+F4DKdFtPjESx1Ds1T3DgSmuJ+4PKbKp94F4ql3f0pvvLf++k9hmYQUnR0xzzQ+iAaKaiSeX
	n2nE9AndCO2ECJf712w8YlaA+tGn4bg0HPM0qx8diAOrI4N+8NtRHnjbZVBelPo5UIh1yf+8t8/HG
	SUkuKF4g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svYcG-00000002zzB-3R3I
	for barebox@lists.infradead.org;
	Tue, 01 Oct 2024 08:52:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svYcD-0004g7-AF; Tue, 01 Oct 2024 10:52:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svYcC-002prk-U1; Tue, 01 Oct 2024 10:52:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svYcC-002BpQ-2f;
	Tue, 01 Oct 2024 10:52:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Oct 2024 10:52:13 +0200
Message-Id: <20241001085213.522115-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_095220_964102_42F62FD9 
X-CRM114-Status: GOOD (  13.82  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX6 sabrelite: free USB VBUS GPIO after use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The sabrelite board code uses a GPIO to enable USB VBUS. The same GPIO
is registered in the device tree as a USB VBUS regulator. This regulator
currently can't probe because the GPIO is busy due to its usage in board
code. Free the GPIO after usage in board code to allow probing the VBUS
regulator.

The board specific code to enable VBUS might not be needed at all
anymore, but I currently do not have the board handy to try out, so
for now just avoid the error messages from failed driver probe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index fe47743540..5982d75e2b 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -117,10 +117,16 @@ static int sabrelite_ksz9021rn_setup(void)
 
 static void sabrelite_ehci_init(void)
 {
+	unsigned int vbus_gpio = IMX_GPIO_NR(7, 12);
+
+	gpio_request(vbus_gpio, "usb-vbus");
+
 	/* hub reset */
-	gpio_direction_output(IMX_GPIO_NR(7, 12), 0);
+	gpio_direction_output(vbus_gpio, 0);
 	udelay(2000);
-	gpio_set_value(IMX_GPIO_NR(7, 12), 1);
+	gpio_set_value(vbus_gpio, 1);
+
+	gpio_free(vbus_gpio);
 }
 
 static int sabrelite_probe(struct device *dev)
-- 
2.39.5



