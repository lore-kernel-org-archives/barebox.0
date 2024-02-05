Delivery-date: Mon, 05 Feb 2024 13:53:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWyTp-004GaX-1D
	for lore@lore.pengutronix.de;
	Mon, 05 Feb 2024 13:53:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWyTq-0006cV-2v
	for lore@pengutronix.de; Mon, 05 Feb 2024 13:53:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VPx9hLdvCa+09S7/cjntaOmBLk7692BMojG/Gd6H8oY=; b=YkCE0JuU7TFkgVyZ0iDMh4Wdly
	soBYyH3uOS0hOZxwl7Oyo3S/uP0sHHfOgza+erxPfs0BcTnwkusU9pDGps6eGUwnpVs3HtSYm9Khf
	XwCvDy4959Ku/xQ/IWF86F16yk4jG4HM34Ob0NwMJzdWlM/LZaUtCe+nXwqKjASNKToTyrYF70NjU
	zp+hiu4QKqJjQs7ON1F3P+l5lWqdF9m1O8dpNXu7lD1/0dX4AZaKyEvEFe96bj8cZLkFePucA0N45
	gIqA4wR+KPcNZiNgxYIARFu8GIhtNLSouCMavbD/A0ohuB5NoLuXDxGyWP3JByshQTF4awgrnNHUm
	n0si8+PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWyTH-00000003J6r-2To7;
	Mon, 05 Feb 2024 12:53:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWyTF-00000003J5p-2drH
	for barebox@lists.infradead.org;
	Mon, 05 Feb 2024 12:53:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWyTA-0006Wf-US; Mon, 05 Feb 2024 13:53:04 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWyT8-004dRu-OT; Mon, 05 Feb 2024 13:53:02 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWyT8-00ALKM-23;
	Mon, 05 Feb 2024 13:53:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  5 Feb 2024 13:53:01 +0100
Message-Id: <20240205125301.2465254-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_045309_684289_75A32C5F 
X-CRM114-Status: GOOD (  10.17  )
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
Subject: [PATCH] ARM: i.MX93: tqm93xx: add PMIC node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PMIC is needs to be configured on the tqm93xx to properly reset the
board, see the board specific initialisation code. We had a PMIC node
in our downstream dts file which we dropped in favour for using the
upstream dts. The upstream dts doesn't have a PMIC node yet, so add it
again. We do not need the regulator subnodes though, as barebox doesn't
support them anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx93-tqma93xx.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/dts/imx93-tqma93xx.dtsi b/arch/arm/dts/imx93-tqma93xx.dtsi
index d9d6d02a7b..af7f644ff3 100644
--- a/arch/arm/dts/imx93-tqma93xx.dtsi
+++ b/arch/arm/dts/imx93-tqma93xx.dtsi
@@ -67,6 +67,15 @@ last_chosen@10 {
 	};
 };
 
+&lpi2c1 {
+	pca9451a: pmic@25 {
+		compatible = "nxp,pca9451a";
+		reg = <0x25>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pca9451>;
+	};
+};
+
 &usbotg1 {
 	status = "okay";
 };
-- 
2.39.2



