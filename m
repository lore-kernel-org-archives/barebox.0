Delivery-date: Thu, 05 Jun 2025 15:13:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPb-0041MA-1O
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:13:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPW-0000x2-F8
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:13:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GepD/Zk+UD0h9OcDIDcw59tuauoFfX7kczGEtHrJo6s=; b=Pv3W0OXcgfDHR7qdwC/Sz3e+Je
	KdCnDzJE7KnC00WH2Dl3v5FEw7hC85f8lwcnOWgdN8WVcINZlaVX+AIUtWnh8aM6961Ns70NDF3/3
	urlAB6FBWHZF4u/eBMmf2sXwHNo+nEUiUPep6K2kLTYEP6oSadSQOvpjG1jJP867QtiiFCRXgaT1q
	OC8WnZYgCOj0VsJvbmlyRlbJ+51gnIIH+8WOUKp+bzKB4L36WF1qDK360520e/Rsq2e1GoeelDDD1
	BWTjaQjQqrVEgUX3aCmHENwHlyL7eg8YChduQbEmF3zUHljS18rk3/NQ+cPFIonctEIjpBYZuV2fI
	dRLOoONw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAOv-0000000FZEn-48ed;
	Thu, 05 Jun 2025 13:12:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFE-0000000FXqG-32eF
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:02:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFD-000120-Ja; Thu, 05 Jun 2025 15:02:55 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFD-001xjV-1M;
	Thu, 05 Jun 2025 15:02:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1l;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-21-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=1283;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=KsOmwczjGgJiFbDkdUrGgaOU8fQSHcva92DB3ZSwvv4=;
 b=miZ1yOiw68mvSSKER0mKhCpjTpd7nqtmaJkOBmueQR3p6jeY3s9rDWUG68fE+tn51QXkab0pa
 gYziM50qJGMCzfjVhjCg0c9kA++2fxvqac5fxoisEdPMj+Fj8sYS0bz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_060256_766382_642B0A1E 
X-CRM114-Status: GOOD (  13.07  )
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
Subject: [PATCH v2 21/33] ARM: k3: am62l: add barebox specific am62l.dtsi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some adjustments to the AM62l dtsi files: Enable gpio ports by default
and add a syscon compatible to the phy_gmii_sel node which is needed for
the ethernet driver to access it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-barebox.dtsi | 16 ++++++++++++++++
 arch/arm/dts/k3-am62l3-evm.dts     |  1 +
 2 files changed, 17 insertions(+)

diff --git a/arch/arm/dts/k3-am62l-barebox.dtsi b/arch/arm/dts/k3-am62l-barebox.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..9fe44a67ee7374e6c6d9052dc8ea0f31d2e8f4a1
--- /dev/null
+++ b/arch/arm/dts/k3-am62l-barebox.dtsi
@@ -0,0 +1,16 @@
+
+&phy_gmii_sel {
+	compatible = "ti,am654-phy-gmii-sel", "syscon";
+};
+
+&gpio0 {
+	status = "okay";
+};
+
+&gpio2 {
+	status = "okay";
+};
+
+&wkup_gpio0 {
+	status = "okay";
+};
diff --git a/arch/arm/dts/k3-am62l3-evm.dts b/arch/arm/dts/k3-am62l3-evm.dts
index 4484279e8fcc0361fe73bf42b63a0663b71725b7..7b528ae1e41e92bc9aa1428e86d5141d30fe7cd7 100644
--- a/arch/arm/dts/k3-am62l3-evm.dts
+++ b/arch/arm/dts/k3-am62l3-evm.dts
@@ -15,6 +15,7 @@
 #include <dt-bindings/net/ti-dp83867.h>
 
 #include "k3-am62l3.dtsi"
+#include "k3-am62l-barebox.dtsi"
 #include "k3-pinctrl.h"
 
 / {

-- 
2.39.5



