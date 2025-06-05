Delivery-date: Thu, 05 Jun 2025 15:13:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPl-0041Z7-23
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:13:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPh-00019o-AE
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:13:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S4Q9m1ZbvKS4Y81kp6n/pA1+0aVOMlKeY7yL65VusOk=; b=pYrp6u4BBEODXjKr/R3HB5cKXf
	sr64o0dLrd5J3b/Im2t00BD1DOxtAz3C5Ge9SvqTDm7Ix6DUx+kMjhuaRpikqtfN9yxrMZTxaxhfa
	kskBJuO3XdkgQDSFr1a0EOkbfVRyweX9EqJnC4Nosovkg9GYvxQUo7lTrvcK67idoNWuFq07BIoSS
	L8Fm9kEqiryEMPBYhKQvLurxMUcvYYIqMKmQZMb/XJao8wXDB82QaPiQelFqRQZxeKHBGTV1FsyEW
	jHukOXExUL2bL5g+Z3Pc/fKO55pfED2P+jG9aebpT49QDk704WumW06n4+EaSuHPTgJYE9bjQ8tMg
	yI6YMJPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAP0-0000000FZKN-0937;
	Thu, 05 Jun 2025 13:13:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFE-0000000FXqx-4Bxb
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:03:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFD-00012c-T6; Thu, 05 Jun 2025 15:02:55 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFD-001xjg-2H;
	Thu, 05 Jun 2025 15:02:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1t;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-29-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=1002;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rH2qdcU7BdaPmmUpeD6DGUdDn3ufjMDWhXqnlGO12nQ=;
 b=SDH8uEI+mMC8jj/slUh6wS1sMsG8KQNHU0Sbt+p6jLZKx16MHENJO7mhz+s4/TdpC7NX1X6Ch
 CM18UDaEQpPCK2WJnZ11tfT6w6JCwboJe6g369VUHC9AAnYQMRQukyV
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_060257_052102_F0AE352D 
X-CRM114-Status: GOOD (  10.45  )
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
Subject: [PATCH v2 29/33] ARM: dts: k3-am62l: reserve memory for TF-A and
 OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On the AM62l the TF-A is placed at the start of the DRAM. Reserve space
for it. For now put it into the SoC dtsi file in the hope that the
values are suitable for all boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-barebox.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/dts/k3-am62l-barebox.dtsi b/arch/arm/dts/k3-am62l-barebox.dtsi
index 9fe44a67ee7374e6c6d9052dc8ea0f31d2e8f4a1..fa253dd08ee9c117bedff9f981aa76e024d3cca8 100644
--- a/arch/arm/dts/k3-am62l-barebox.dtsi
+++ b/arch/arm/dts/k3-am62l-barebox.dtsi
@@ -14,3 +14,22 @@ &gpio2 {
 &wkup_gpio0 {
 	status = "okay";
 };
+
+/ {
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		tfa@80000000 {
+			reg = <0x0 0x80000000 0x0 0x80000>;
+			alignment = <0x1000>;
+			no-map;
+		};
+
+		secure_ddr: optee@80200000 {
+			reg = <0x00 0x80200000 0x00 0x400000>;
+			no-map;
+		};
+	};
+};

-- 
2.39.5



