Delivery-date: Mon, 05 Jan 2026 20:15:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcq2e-001ctC-2w
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 20:15:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcq2e-0006BB-8T
	for lore@pengutronix.de; Mon, 05 Jan 2026 20:15:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NCQaj/YgLDvSpIz9jy94MgQXHKBXuzoiNISLdarkKtQ=; b=V6SI2tVkB+3btOHYi1NbI245g3
	1SbEXjP15G9lCUkJrSJjMFcL/jFqnXSvGAGZxMwYMi6ZH9JdNznnLpNy8XCvgIC99qIXwQ0ziebcN
	9b3gvTI8x7sdvmdmGUnNQ1Rwmp6F02+9gP+vaLf0BV0VLmwMQ9xixl0VdgymSbOiL0gP7qasNP9A+
	iNGOQBU5MJQ/a6kVnH3ckYvxpIOSurdZNbYNeVUXpPWr90GLnTzZSVV0pKD6gxmxMNAWfe45efm4r
	e3136My7tbMfFSM6NJbkesjri3r4dyh8v10iNw+Asqitw0e5JCjmnw4swx9t/sAMlx6qTbO89KBXW
	+EwqPdQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq1w-0000000BxWD-3OZ6;
	Mon, 05 Jan 2026 19:14:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq1t-0000000BxU0-1Fb9
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 19:14:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-0005tQ-LV; Mon, 05 Jan 2026 20:14:11 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1r-009E5t-1T;
	Mon, 05 Jan 2026 20:14:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcq1s-00000002a4z-0Bue;
	Mon, 05 Jan 2026 20:14:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jan 2026 20:12:56 +0100
Message-ID: <20260105191410.615318-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105191410.615318-1-a.fatoum@pengutronix.de>
References: <20260105191410.615318-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_111413_392069_CFE2B5AE 
X-CRM114-Status: UNSURE (   7.75  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] Revert "ARM64: dts: Layerscape: workaround v6.19-rc1 DT sync DWC3 breakage"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have a proper LS1028 DWC3 driver in place, drop our
compatible overrides to make use of it.

This reverts commit acc9a8c3dcdd5515a2901f9e4c74ae37cd32ad6c.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/fsl-ls1028a.dtsi |  9 ---------
 arch/arm/dts/fsl-ls1046a.dtsi | 13 -------------
 2 files changed, 22 deletions(-)

diff --git a/arch/arm/dts/fsl-ls1028a.dtsi b/arch/arm/dts/fsl-ls1028a.dtsi
index f3032752a09c..a15a219cfa1c 100644
--- a/arch/arm/dts/fsl-ls1028a.dtsi
+++ b/arch/arm/dts/fsl-ls1028a.dtsi
@@ -5,12 +5,3 @@ psci {
 		method = "smc";
 	};
 };
-
-/* Temporary workaround pending fsl,ls1028a-dwc3 driver support */
-&usb0 {
-	compatible = "snps,dwc3";
-};
-
-&usb1 {
-	compatible = "snps,dwc3";
-};
diff --git a/arch/arm/dts/fsl-ls1046a.dtsi b/arch/arm/dts/fsl-ls1046a.dtsi
index badc600cab55..2dc24ba8c723 100644
--- a/arch/arm/dts/fsl-ls1046a.dtsi
+++ b/arch/arm/dts/fsl-ls1046a.dtsi
@@ -10,16 +10,3 @@ psci {
 		method = "smc";
 	};
 };
-
-/* Temporary workaround pending fsl,ls1028a-dwc3 driver support */
-&usb0 {
-	compatible = "snps,dwc3";
-};
-
-&usb1 {
-	compatible = "snps,dwc3";
-};
-
-&usb2 {
-	compatible = "snps,dwc3";
-};
-- 
2.47.3



