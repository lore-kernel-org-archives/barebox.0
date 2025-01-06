Delivery-date: Mon, 06 Jan 2025 15:05:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjl-00HVwY-35
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:05:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjj-0000jc-PP
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:05:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QziWXej1fwIrGZ+bX3g9AWUUS6yMSVTjxfWkUlro3oI=; b=X85n3YT1xG4gVi9QV6O1kp8p65
	pR5uHAbxcn5x4d/BB+MZA/e5Uaojijoai+T/tZ2zkzSljOYy4W7oobWmJ43cDj5OxYypFYnV4fV9u
	/eKY41TrU0r9YJLkEryYTTVBvLbXYOBu7OFwzrXRmhSU3CeMC+Zzuh3H2a1qfEu3gha2kmgZN3psB
	gvfi3+9bmbICwW3t+r5U5NulgmaoOB8uvO5msD4rtii0rBhgq6HHf3/+sTcR4nmE7peVrLElgRD7J
	VsH2J7HfCbS5wRvmES5Oy8rivJwagQwyjTdlY3dodHIWnmHDmSDIJob8LBuJJw1ySMd1fngXqkCnT
	ITIXVt9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnj9-00000001V2t-3GEt;
	Mon, 06 Jan 2025 14:05:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUngV-00000001UYF-3XHW
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 14:02:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngU-00089d-NF; Mon, 06 Jan 2025 15:02:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngT-007B6Q-2R;
	Mon, 06 Jan 2025 15:02:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-00CsVv-21;
	Mon, 06 Jan 2025 14:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 06 Jan 2025 14:47:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-k3-r5-v2-21-9de6270089ef@pengutronix.de>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
In-Reply-To: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736171221; l=900;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=RKFgcMOYPa8OKdMP26RuyNjv592/unzt1qVtwFs+WO4=;
 b=/npVsZKCsG6nKyAvUW7Q8MMxZVVAZ7/8Jg9Lut6ekpZfXreGL/9RNJEG+6PJW6u+pU/8GyK1a
 qYt0u1wyLESB94N/hLn3RH2rKFoqLfyV9ySFeagb9trfhUlPED5QZ8O
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_060223_886854_5375AD07 
X-CRM114-Status: GOOD (  10.57  )
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
Subject: [PATCH v2 21/22] ARM: am625: disable secondary watchdogs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The main_rti* watchdogs seem to be related to the secondary CPUs.
Letting the driver probe means the associated power domains are
turned on in barebox. With the power domains being enabled the
secondary CPUs do not come up under Linux. Just disable the watchdogs
for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am625.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/dts/k3-am625.dtsi b/arch/arm/dts/k3-am625.dtsi
index 7d49198aa2..7910cf3e6c 100644
--- a/arch/arm/dts/k3-am625.dtsi
+++ b/arch/arm/dts/k3-am625.dtsi
@@ -11,3 +11,18 @@ &phy_gmii_sel {
 	compatible = "ti,am654-phy-gmii-sel", "syscon";
 };
 
+&main_rti1 {
+	status = "disabled";
+};
+
+&main_rti2 {
+	status = "disabled";
+};
+
+&main_rti3 {
+	status = "disabled";
+};
+
+&main_rti15 {
+	status = "disabled";
+};

-- 
2.39.5



