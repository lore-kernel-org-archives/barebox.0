Delivery-date: Fri, 13 Dec 2024 22:01:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCmm-007jKl-34
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 22:01:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCmm-0000r1-Tp
	for lore@pengutronix.de; Fri, 13 Dec 2024 22:01:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M3cijVnIXDw8kXRjiRkot24/Cloa5ehAihZ+JgvObaw=; b=cJ356c3d4js7Wb+58YULcrQ4ln
	YwLa5yN0l3baY7tG6da2BF2xFGukQyF0xYosTdkKCaWlgWU69aE1zq5GLJi0xBp0PyVm8Q0WwEzm4
	+dLXSJYspXYTPyoOCSsfhJ+AyAuL1WIw2SGhRgCDtHovb5ueF6m6sRbC9+ZJInbEaCFVCuxoC31o8
	Qn5fZXEYV1ldeoR56alU0mvKt3MLZL6hBIe8kNiVHBPES6LTBjZihUVUdW2npn3NEHXEHJkV0yhvL
	s3ebRU3+IDXN6kvp+aV7tUhUFo3/0QWv+yS8/I30o5tbjfycjbVWoZ0E1LOTISYqhBSpvAD0SHr0V
	nTnELsmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmN-000000051ZU-2Uck;
	Fri, 13 Dec 2024 21:00:55 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmK-000000051Xy-1k1C
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 21:00:53 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id A2BD6E74092; Fri, 13 Dec 2024 22:00:21 +0100 (CET)
Received: from astat.fritz.box (a89-182-99-197.net-htp.de [89.182.99.197])
	by lynxeye.de (Postfix) with ESMTPA id 0B367E7406C
	for <barebox@lists.infradead.org>; Fri, 13 Dec 2024 22:00:19 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Dec 2024 22:00:08 +0100
Message-ID: <20241213210015.357249-2-dev@lynxeye.de>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241213210015.357249-1-dev@lynxeye.de>
References: <20241213210015.357249-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_130052_596994_04D39FA5 
X-CRM114-Status: UNSURE (   9.83  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] ARM: zynq: zed: define SDHCI bus-width
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The SDHCI controller on the Zedboard is routed to a SD card
slot. Define bus-width to allow the controller to use the
full bandwidth.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/zynq-zed.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/zynq-zed.dts b/arch/arm/dts/zynq-zed.dts
index 465758ebf62f..25b4d6df2937 100644
--- a/arch/arm/dts/zynq-zed.dts
+++ b/arch/arm/dts/zynq-zed.dts
@@ -7,6 +7,10 @@ chosen {
 	};
 };
 
+&sdhci0 {
+	bus-width = <4>;
+};
+
 &qspi {
 	status = "okay";
 	num-cs = <1>;
-- 
2.47.1



