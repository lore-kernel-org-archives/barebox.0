Delivery-date: Mon, 05 Jan 2026 16:19:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcmN8-001Z0A-0f
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 16:19:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcmN7-0002xx-Lo
	for lore@pengutronix.de; Mon, 05 Jan 2026 16:19:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=V2fWNmhHLu0WeTaht9q6saoO9z2W7l4BO44iSN69xX0=; b=LCE7P8HyPsk07ZjOFZwWFtUq52
	e3+MKCXtPLef4HeIav5gcXPazz5FhR3daAxLWRNTuHH4/9Mm74UXR9V/FoL0UVwZkryKsLa9WyFjx
	FZbN8h0XDPnjhWyMKJDwOOUpCZuRpYX0U8IDmeE0tT8W+VbOlTUJEKvRb2YWsG1edIor0bLR0bzJO
	lZa2vltsNqS7i0IoFwp+T+wwfs1bWIFV/gACiWpTct8T/xLs0UVSEMdAAHBuxKhWF4klSFg1nqiPS
	fJYqjZw9aIc5Prlz9La96BmcncyzcpnPbMgo8aWlOSq5LhRi5YYTDZsy3Utf7vaT175FHPIOfuMW0
	FusQP+kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcmMg-0000000BbPn-22S9;
	Mon, 05 Jan 2026 15:19:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcmMd-0000000BbPK-3fym
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 15:19:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcmMc-0002r0-0k; Mon, 05 Jan 2026 16:19:22 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcmMb-009C9i-2g;
	Mon, 05 Jan 2026 16:19:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vcmMc-00000000wQM-1jh0;
	Mon, 05 Jan 2026 16:19:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jan 2026 16:19:19 +0100
Message-ID: <20260105151921.224540-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_071923_913726_ED8ABE55 
X-CRM114-Status: UNSURE (   9.24  )
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
Subject: [PATCH] ARM64: dts: Layerscape: workaround v6.19-rc1 DT sync DWC3 breakage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Upstream Linux commit 7b204755ebc2 ("arm64: dts: layerscape: add
dma-coherent for usb node") has dropped the snps,dwc3 compatible in
favor of a driver matching against fsl,ls1028a-dwc3.

Reinstate the old compatible temporarily to avoid breakage in the
next release until the new driver is added regularly.

The new driver was deemed too invasive for master as it also does some
hardware configuration we will want to carry and involved some changes
to DWC3 core.

Fixes: a3bf6c16f77d ("dts: update to v6.19-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/fsl-ls1028a.dtsi |  9 +++++++++
 arch/arm/dts/fsl-ls1046a.dtsi | 13 +++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/arch/arm/dts/fsl-ls1028a.dtsi b/arch/arm/dts/fsl-ls1028a.dtsi
index a15a219cfa1c..f3032752a09c 100644
--- a/arch/arm/dts/fsl-ls1028a.dtsi
+++ b/arch/arm/dts/fsl-ls1028a.dtsi
@@ -5,3 +5,12 @@ psci {
 		method = "smc";
 	};
 };
+
+/* Temporary workaround pending fsl,ls1028a-dwc3 driver support */
+&usb0 {
+	compatible = "snps,dwc3";
+};
+
+&usb1 {
+	compatible = "snps,dwc3";
+};
diff --git a/arch/arm/dts/fsl-ls1046a.dtsi b/arch/arm/dts/fsl-ls1046a.dtsi
index 2dc24ba8c723..badc600cab55 100644
--- a/arch/arm/dts/fsl-ls1046a.dtsi
+++ b/arch/arm/dts/fsl-ls1046a.dtsi
@@ -10,3 +10,16 @@ psci {
 		method = "smc";
 	};
 };
+
+/* Temporary workaround pending fsl,ls1028a-dwc3 driver support */
+&usb0 {
+	compatible = "snps,dwc3";
+};
+
+&usb1 {
+	compatible = "snps,dwc3";
+};
+
+&usb2 {
+	compatible = "snps,dwc3";
+};
-- 
2.47.3



