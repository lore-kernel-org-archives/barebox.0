Delivery-date: Wed, 10 Jan 2024 17:02:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2U-00BoJQ-2B
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 17:02:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2U-0002n8-2n
	for lore@pengutronix.de; Wed, 10 Jan 2024 17:02:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N3dTwoPNirecGRds5zqr5+fugxjHsL/4pBV9ZQ4vtDE=; b=iS/ItV904pHmav9rxdWlpjgXpl
	UUXRgVbKxvQ0BqmMtgR8KOBFdMUqYW+Q8zBkhZbuyMecJ9aTdcPncwuLbaWnlr+8Nn35qTHGvjL0A
	+xI33tnpCJFP7LjKWzcANdqUG+U1AiU67Q30084MCXZnzGpVi9/GnD4rWXnhKbHaq95T2xYSbVVsF
	9638KRLTutcTppqOZXSGcsQD1EhiNSjryzkkNHDPWM8bzBKuYLCKzHCaEJjpTVFd/caM+1oXHBnbS
	iGsxeHG9RpMB4cFLy3Mdv1Vnca7+CG7ycOQalnQGorc7cihQU/LGvgFQ8eEioQF5fI5GbE+cxIZab
	ZRdj0xzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1P-00Ckkg-1K;
	Wed, 10 Jan 2024 16:01:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1E-00Ckau-1r
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 16:01:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-0002Bz-BH; Wed, 10 Jan 2024 17:01:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-001juy-UU; Wed, 10 Jan 2024 17:01:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-00HLtL-2l;
	Wed, 10 Jan 2024 17:01:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jan 2024 17:01:08 +0100
Message-Id: <20240110160112.4134162-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
References: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_080128_641416_560BA9D3 
X-CRM114-Status: GOOD (  10.99  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 06/11] ARM: dts: layerscape: mark ls1046a SoC DMA incoherent in DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This effectively reverts in the barebox DT, Linux commit 136975c33894
("arm64: dts: ls1046a: make dma-coherent global to the SoC").

The reason for that is while the CCI-400 can be configured to make all
bus masters DMA-coherent, barebox (and older versions of U-Boot) didn't yet
do so. We will rectify this in a later commit, but for now restore
working order in case Linux is booted with the barebox DT.

Fixes: 32e2176ba050 ("dts: update to v6.1-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 arch/arm/dts/fsl-ls1046a.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/dts/fsl-ls1046a.dtsi b/arch/arm/dts/fsl-ls1046a.dtsi
index a661cb0c8970..6af38f737056 100644
--- a/arch/arm/dts/fsl-ls1046a.dtsi
+++ b/arch/arm/dts/fsl-ls1046a.dtsi
@@ -5,3 +5,24 @@ aliases {
 		mmc0 = &esdhc;
 	};
 };
+
+&soc {
+	/delete-property/ dma-coherent;
+	dma-noncoherent;
+};
+
+&crypto {
+	dma-coherent;
+};
+
+&msi1 {
+	dma-coherent;
+};
+
+&pcie2 {
+	dma-coherent;
+};
+
+&pcie3 {
+	dma-coherent;
+};
-- 
2.39.2



