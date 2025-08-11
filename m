Delivery-date: Mon, 11 Aug 2025 08:44:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGl-009Fh0-0F
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 08:44:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGk-0002XH-HG
	for lore@pengutronix.de; Mon, 11 Aug 2025 08:44:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OL5xCdiItSsDRWcsW+H8n5KL2bdtlMTQwHA71yGaVas=; b=wFIBMkjnDALqTZ
	XxpJudqv6Clxa5yPWhh2YdQMBm1VDzZPewy2ZYxxXGgK5rNJglH2TiYewcep2ZyD63FwK9kzycBHZ
	kIabKqtlZQlKdw2bpNjQ6koSqTL3CQZW9CW80YSA0IgbhdLCckAXwGZuTxoXruX18sjHEKm/4QlM0
	Q/oO7bm5R3LM/IwlyEQtdO+NHPUIp0dIax9AG9lcCCiRC45j5f9DZBcD+48KXdGAx650+FCcv8ZTn
	M8kxq7/B6+YNFMULCkzcLc0iR7t8XDaYkonXwtKke+nTuz6T1x9TbPn/A9YwVwWtuf9T6YVkcXC1V
	546vvAEl/Px95GtBI9Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMG0-00000006cit-3CDn;
	Mon, 11 Aug 2025 06:43:44 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMD9-00000006cTH-3788
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 06:40:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=OL5xCdiItSsDRWcsW+H8n5KL2bdtlMTQwHA71yGaVas=;
	b=cY9Mrtjazdk3IJPhcPhCzSCrzpcA1kUfzX910pCDNs1ruZ7cotIrvicn8BX9lPYDK+b4B33NcOGmv
	 avPvXoiK704I5bd8tPfTqrU9EXNxov6syZFDPV0FlBgasdlW8lshG+E0F35vuuRZcksKvz5b7U1NrX
	 +63cbkjAvk5WznL6ZoUp82NpguvzSHekXrbtIWrFjHPE8BhHLWkw258j3SjzXlp4QOLAVIRI2aPIOc
	 W+6kJAVw//WEIaLPeuGXAIhwV0ZUON3Z3ZuA0lb5vDDhZCYRLJDRE+/CQxFOzwQPvTcEZiovDB55AI
	 FT2z5fIP1gY15VWko/Gbqo929O2CAAQ==
X-MSG-ID: 19c1511d-767e-11f0-9d4b-00505681446f
From: David Jander <david@protonic.nl>
To: barebox@lists.infradead.org
Date: Mon, 11 Aug 2025 08:40:25 +0200
Message-ID: <20250811064026.753776-8-david@protonic.nl>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250811064026.753776-1-david@protonic.nl>
References: <20250811064026.753776-1-david@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234047_919131_3B208829 
X-CRM114-Status: UNSURE (   8.20  )
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
Cc: David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] arm: dts: rk3576.dtsi: Add gpio aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These are needed for the GPIO driver to probe.

Signed-off-by: David Jander <david@protonic.nl>
---
 arch/arm/dts/rk3576.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/dts/rk3576.dtsi b/arch/arm/dts/rk3576.dtsi
index cf7c69b3b5..e4b63784d9 100644
--- a/arch/arm/dts/rk3576.dtsi
+++ b/arch/arm/dts/rk3576.dtsi
@@ -1,6 +1,14 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
 / {
+	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+		gpio4 = &gpio4;
+	};
+
 	dmc: memory-controller {
 		compatible = "rockchip,rk3576-dmc";
 		rockchip,pmu = <&pmu1_grf>;
-- 
2.47.2



