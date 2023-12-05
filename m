Delivery-date: Tue, 05 Dec 2023 08:28:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAPrI-003u58-2g
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 08:28:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAPrI-0006X6-Sy
	for lore@pengutronix.de; Tue, 05 Dec 2023 08:28:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nEZ0OHsR6nQhSu5GkkhJHLNjzxtVj6RQ2Y19/8J4IKE=; b=lenucCcaB6YzMz/Jqjf5VksmnO
	Y6iFml2feuX0Y6BH7sUgrcYm9aFVDuQiCgeIOJncjFHcgAqms7mrR7d7dSnrzDB+Rr/NhwxyTr1gD
	CtRznXWykPhAoPvygrwbMvfOQEm8xR+Jx7f2cRLVX64lGTSRaNVBmag2O+7MpWioyHTB6JxFoYM3y
	uJpNqGeWHkk4m9GQHMPORlx0tJ1EGcZaUJzbD6U6/HDYJC7ZHWMflLZF7v6TC+3p8vH3grtCRZVvN
	/N2lfyurI7evYn3ox736ED+wrFHZ7iGz4W4CJeuq/nNnHtM5kNK3oa5/6lRaVhzYPMNwgCfRHw34g
	sRtuER5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAPpq-006VEe-1g;
	Tue, 05 Dec 2023 07:27:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAPpn-006VDJ-0O
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 07:27:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAPpk-0006HH-Lx; Tue, 05 Dec 2023 08:27:08 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAPpk-00Dgyf-9f; Tue, 05 Dec 2023 08:27:08 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rAPpk-002iTs-0m;
	Tue, 05 Dec 2023 08:27:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  5 Dec 2023 08:27:06 +0100
Message-Id: <20231205072706.647255-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205072706.647255-1-s.hauer@pengutronix.de>
References: <20231205072706.647255-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_232711_162109_E05CE57A 
X-CRM114-Status: GOOD (  10.62  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: rockchip: rock-5a: Disable non working devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some devices do not work in barebox because we lack phy drivers for
them. Also we need to overwrite the ranges property in pcie2x1l2.
The original upstream values do not work, likely because of some
deficiency in the PCI driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3588-rock-5b.dts | 39 +++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/dts/rk3588-rock-5b.dts b/arch/arm/dts/rk3588-rock-5b.dts
index 6c3159bdb7..ddff76028e 100644
--- a/arch/arm/dts/rk3588-rock-5b.dts
+++ b/arch/arm/dts/rk3588-rock-5b.dts
@@ -52,3 +52,42 @@ environment_sd: partition@408000 {
 		};
 	};
 };
+
+&pcie3x4 {
+	/* Does not work in barebox (missing phy driver) */
+	status = "disabled";
+};
+
+&pcie30phy {
+	status = "disabled";
+};
+
+&pcie2x1l2 {
+	/*
+	 * Originally in upstream dts this is:
+	 * ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
+	 *          <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x00e00000>,
+	 *          <0x03000000 0x0 0x40000000 0xa 0x00000000 0x0 0x40000000>;
+	 *
+	 * Overwriting this shouldn't be necessary, but without it PCI doesn't
+	 * work. We have some deficiency in the PCI driver that causes this.
+	 */
+	ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
+		 <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x00e00000>,
+		 <0x03000000 0xa 0x00000000 0xa 0x00000000 0x0 0x40000000>;
+};
+
+&pcie2x1l0 {
+	/* Does not work in barebox */
+	status = "disabled";
+};
+
+&usb_host0_ehci {
+	/* Does not work in barebox (missing phy driver) */
+	status = "disabled";
+};
+
+&usb_host1_ehci {
+	/* Does not work in barebox (missing phy driver) */
+	status = "disabled";
+};
-- 
2.39.2



