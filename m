Delivery-date: Fri, 08 Nov 2024 14:15:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9Opw-006KnH-1C
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 14:15:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9Opv-0003n5-C9
	for lore@pengutronix.de; Fri, 08 Nov 2024 14:15:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nJaJk8ra4hOo27Afy980jj+rP3YbY0PFDN4WiaVgl3k=; b=H8vONIQfYRptWNLEv3UidiPpKO
	Bdh8kBE4c/j7XKdkVG1WW6V3S6sOTA/WW2EQ6KDdJtABeAMlv8Tty0K8iflLdES6AklWhyWb4ca4N
	R2B7j/HXK3IyP21FJ3JhNC8GX9afobQ3TKtb1pkLRffBqoA3wjFu5uhwnY8YsTzdvzaq87v3R02Ze
	kPET4wUPm/Xy2NcXG9To+oJELJ+bn0AlfQ9c3p1KLPPqAO/bq8Sj5t0HeBoQnBW7yd5AS1vubnDUK
	xZJHCEOXmVMT4rcmxa/Hz7lEQCmUJsYSwAm12QZYJUyqIIZHUkFUmZuOW8Mne0xX/SC/iZcereZfD
	uPXCmMWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9OpO-0000000Adgy-1FVj;
	Fri, 08 Nov 2024 13:15:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9OpK-0000000AdfJ-2GfM
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 13:15:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpJ-0003XB-AH; Fri, 08 Nov 2024 14:15:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-002cw5-2z;
	Fri, 08 Nov 2024 14:15:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-00AFXY-2e;
	Fri, 08 Nov 2024 14:15:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 08 Nov 2024 14:15:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241108-network-k3-v1-6-ee71bff15eb7@pengutronix.de>
References: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
In-Reply-To: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731071700; l=916;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=gcuhCz3dQLyB+e0Jwa7naSLdynngseNn0FLuOFnO+V4=;
 b=7ZVk1tamYpp131ODwW6XkxHqbxOWOzm/c4k3l2yg2nGwG/fBFcOdfol4UvU1yujmrLoM4Fc3A
 ww4QajTXUj0DKnFv9uKcHhsmo9U8LmHiTe7+nOmTeBk1KuVxMgiuR0m
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_051502_636927_EE1FE1B2 
X-CRM114-Status: GOOD (  12.02  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] ARM: k3: am625: add syscon compatible to phy_gmii_sel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We need phy_gmii_sel to be accessible as syscon. Add the syscon
compatible to make that possible.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am625-beagleplay.dts | 1 +
 arch/arm/dts/k3-am625.dtsi           | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/dts/k3-am625-beagleplay.dts b/arch/arm/dts/k3-am625-beagleplay.dts
index b4606ff129..60340ab8ca 100644
--- a/arch/arm/dts/k3-am625-beagleplay.dts
+++ b/arch/arm/dts/k3-am625-beagleplay.dts
@@ -1,6 +1,7 @@
 /dts-v1/;
 
 #include <arm64/ti/k3-am625-beagleplay.dts>
+#include "k3-am625.dtsi"
 
 / {
 	chosen {
diff --git a/arch/arm/dts/k3-am625.dtsi b/arch/arm/dts/k3-am625.dtsi
new file mode 100644
index 0000000000..2b2d3e1b4d
--- /dev/null
+++ b/arch/arm/dts/k3-am625.dtsi
@@ -0,0 +1,5 @@
+
+&phy_gmii_sel {
+	compatible = "ti,am654-phy-gmii-sel", "syscon";
+};
+

-- 
2.39.5



