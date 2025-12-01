Delivery-date: Mon, 01 Dec 2025 09:48:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzZy-006kwl-2b
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 09:48:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzZy-0002v7-6o
	for lore@pengutronix.de; Mon, 01 Dec 2025 09:48:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uWpTMjwI0DjVPMwYs3agS5yGIhxn6Q5eyesJz68kSCI=; b=VCu67YrcgkLcxrFjjKgzgRcG/m
	Ltn4JKqbD3NOl7wqBVCv+ffV5lcMXnGHfIeZjqZMJJfr7LU5lUvkXNYMsp6gCMoKEJi3ZepddC6DN
	OhDrehNLPGfBchgjPjTPShz7Jb2Gbe3K8R5GtM4SDcbtoYyNX+ObCJzZh8t4YPg34qKpCwCEXirYZ
	ETiqf21McHizm1TCV/6P67TsHJwoPg5bU3npFmtyN/XqE83+CXV9jCjUMjZ/YzQMu+8IH3GxnrDmJ
	NY7l5jwVfab8YilcnXxLxTy5rE2ggkpsmqO0/8EpgXfaOoXD58+PsG0izihhE5g4SCaPQNd9bbRXI
	CNHOkJtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzZS-000000039DM-2zVR;
	Mon, 01 Dec 2025 08:47:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzZP-000000039Aw-2ExK
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 08:47:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vPzZM-0002eN-J3; Mon, 01 Dec 2025 09:47:40 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  1 Dec 2025 09:45:52 +0100
Message-ID: <20251201084737.1270303-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251201084737.1270303-1-a.fatoum@barebox.org>
References: <20251201084737.1270303-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_004743_565510_7F06E32A 
X-CRM114-Status: UNSURE (   8.21  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/6] ARM: rpi: make power domain optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have deep probe enabled for the Raspberry Pi boards, but don't have a
power domain driver and indeed never needed one till now.

Mark it optional using the barebox,allow-dummy property.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v2 -> v3:
  - new change to suppress warning introduced later in series
---
 arch/arm/dts/bcm2711-rpi.dtsi    | 4 ++++
 arch/arm/dts/bcm2835-rpi.dts     | 4 ++++
 arch/arm/dts/bcm2836-rpi-2.dts   | 4 ++++
 arch/arm/dts/bcm2837-rpi-3.dts   | 4 ++++
 arch/arm/dts/bcm2837-rpi-cm3.dts | 4 ++++
 5 files changed, 20 insertions(+)

diff --git a/arch/arm/dts/bcm2711-rpi.dtsi b/arch/arm/dts/bcm2711-rpi.dtsi
index dbcfc085ae1f..2722133a4afc 100644
--- a/arch/arm/dts/bcm2711-rpi.dtsi
+++ b/arch/arm/dts/bcm2711-rpi.dtsi
@@ -15,3 +15,7 @@ &uart1 {
 	 */
 	clock-frequency = <500000000>;
 };
+
+&power {
+	barebox,allow-dummy;
+};
diff --git a/arch/arm/dts/bcm2835-rpi.dts b/arch/arm/dts/bcm2835-rpi.dts
index 1564ebfcd713..07509dd77270 100644
--- a/arch/arm/dts/bcm2835-rpi.dts
+++ b/arch/arm/dts/bcm2835-rpi.dts
@@ -11,3 +11,7 @@ / {
 &{/memory@0} {
 	reg = <0x0 0x0>;
 };
+
+&power {
+	barebox,allow-dummy;
+};
diff --git a/arch/arm/dts/bcm2836-rpi-2.dts b/arch/arm/dts/bcm2836-rpi-2.dts
index 4b59afb17e93..4632b17880ae 100644
--- a/arch/arm/dts/bcm2836-rpi-2.dts
+++ b/arch/arm/dts/bcm2836-rpi-2.dts
@@ -7,3 +7,7 @@ / {
 &{/memory@0} {
 	reg = <0x0 0x0>;
 };
+
+&power {
+	barebox,allow-dummy;
+};
diff --git a/arch/arm/dts/bcm2837-rpi-3.dts b/arch/arm/dts/bcm2837-rpi-3.dts
index 38fc947b4038..48dfbbed2df5 100644
--- a/arch/arm/dts/bcm2837-rpi-3.dts
+++ b/arch/arm/dts/bcm2837-rpi-3.dts
@@ -7,3 +7,7 @@ / {
 &{/memory@0} {
 	reg = <0x0 0x0>;
 };
+
+&power {
+	barebox,allow-dummy;
+};
diff --git a/arch/arm/dts/bcm2837-rpi-cm3.dts b/arch/arm/dts/bcm2837-rpi-cm3.dts
index 78613f12c697..9c2e41c98475 100644
--- a/arch/arm/dts/bcm2837-rpi-cm3.dts
+++ b/arch/arm/dts/bcm2837-rpi-cm3.dts
@@ -11,3 +11,7 @@ chosen {
 &{/memory@0} {
 	reg = <0x0 0x0>;
 };
+
+&power {
+	barebox,allow-dummy;
+};
-- 
2.47.3



