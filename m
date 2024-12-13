Delivery-date: Fri, 13 Dec 2024 22:01:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCml-007jK3-29
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 22:01:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCml-0000pA-If
	for lore@pengutronix.de; Fri, 13 Dec 2024 22:01:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dJxgz9xTnZwBgBVrmqsD5QqqyvAsiOAMrU5x+kDYPrc=; b=yqQeujeDn7TrGLjsWDhwCeWdZy
	rpexcdlcZbClJ37IRDJ+/Bvce9cE8IpEzplkCZlWfvBk7ha8pYM8aqouTTgygito50+ue16Czxuno
	mGW0E9ROT627gmFbMzPnz4SfPQVXsLLt8b1/q73gs/pXXmyPmrgAsdqcPVrHvZS/TmT1iKRri5tY4
	1QxlYAoHKsVep3rzBf3laDs9fcVdEQr+xBE5fdSKzmVXovN+wP4iNCobywkHcWmQJNnKC0pJGJOh9
	3XeorC6oKVDXW9JKei7btUio4XGOAE6KvCBHYQRHL9S33NsKh4rQuyUYc4o9vLREsFzdl8K2wiWOY
	I1I7XoOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmL-000000051YW-2BM9;
	Fri, 13 Dec 2024 21:00:53 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmI-000000051XL-38pI
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 21:00:51 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 11402E74012; Fri, 13 Dec 2024 22:00:19 +0100 (CET)
Received: from astat.fritz.box (a89-182-99-197.net-htp.de [89.182.99.197])
	by lynxeye.de (Postfix) with ESMTPA id D1171E74012
	for <barebox@lists.infradead.org>; Fri, 13 Dec 2024 22:00:18 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Dec 2024 22:00:07 +0100
Message-ID: <20241213210015.357249-1-dev@lynxeye.de>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_130050_931680_BE19A847 
X-CRM114-Status: UNSURE (   8.02  )
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
Subject: [PATCH 1/9] ARM: zynq: add MMC aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upstream DT doesn't include those, yet. Make sure
MMC controllers end up with a deterministic numbering.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/zynq-7000.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/dts/zynq-7000.dtsi b/arch/arm/dts/zynq-7000.dtsi
index f7a0d70babef..90b0c098fc82 100644
--- a/arch/arm/dts/zynq-7000.dtsi
+++ b/arch/arm/dts/zynq-7000.dtsi
@@ -1,4 +1,11 @@
 
+/ {
+	aliases {
+		mmc0 = &sdhci0;
+		mmc1 = &sdhci1;
+	};
+};
+
 &amba {
 	qspi: spi@e000d000 {
 		compatible = "xlnx,zynq-qspi-1.0";
-- 
2.47.1



