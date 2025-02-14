Delivery-date: Fri, 14 Feb 2025 20:16:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tj1Al-002Nos-0T
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 20:16:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tj1Ak-0006oZ-17
	for lore@pengutronix.de; Fri, 14 Feb 2025 20:16:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CXSDeJlaFye9xEnjYDn/JU99mUSYuXXJPX83c0t7X5Y=; b=cBOcWQV00dpTd3lGu3ARG29Ncg
	TsKutCnTDeyeJbZ2FthMfwzKn3lM9JDQFPFGXkym0+Od6D5NOqLdjTzDPzgo5dI9IgNl4DV/r+3dG
	POx3OswBsRLT3b13uRjt9SqI7HU4SNOabm+x0/xzFmonKlONfh286pqaFlWP8XFJ3e19HoT+NFUEA
	r6zeMz7JllDJjnSViJXUpBbYlLDHwfucj37Eyzd+1NbFXsL4gX9mfpq+qCDONnE2OeVRK6zw669ha
	TkcASfQ5Q/wUi9maaKNMWI1r0/FtrddkN4YNwUhp5nrBkk2etLgWLr9T4dVqXv/kUJcN1ZBGBSmWL
	ccKTXavg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tj1AB-0000000G0H0-0cuL;
	Fri, 14 Feb 2025 19:15:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tj1A7-0000000G0Fg-3CeP
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 19:15:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tj1A5-0006e9-J2; Fri, 14 Feb 2025 20:15:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tj1A5-000xzF-1I;
	Fri, 14 Feb 2025 20:15:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tj1A5-005s6j-11;
	Fri, 14 Feb 2025 20:15:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 20:15:39 +0100
Message-Id: <20250214191539.1399572-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_111543_802892_7607CCA3 
X-CRM114-Status: UNSURE (   8.04  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: zii-imx8mq-dev: fix warnings about missing #address-/#size-cells
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Upstream has recently dropped the #address-cells and #size-cells
properties, because there are no child nodes upstream.

Add them in barebox and fix the warnings.

Fixes: 57b3c5bd0a0c ("dts: update to v6.14-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mq-zii-ultra.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
index d45c24302799..9993ee969e4a 100644
--- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
+++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
@@ -70,6 +70,9 @@ &i210 {
 };
 
 &{uart2/mcu/eeprom@a4} {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
 	lru_part_number: lru-part-number@21 {
 		reg = <0x21 15>;
 		read-only;
-- 
2.39.5



