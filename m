Delivery-date: Thu, 11 Aug 2022 21:28:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oMDr1-0026Ss-OG
	for lore@lore.pengutronix.de; Thu, 11 Aug 2022 21:28:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oMDr2-0003Cq-Kx
	for lore@pengutronix.de; Thu, 11 Aug 2022 21:28:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y4PnSCCCXnU4CS3kpRq9SzkOiJzQobUU+rtyhglXNGQ=; b=UGQatqRgD0xaHUF1VC68NHbtZl
	A+WpLlIrVnkn90Zg1rO/Li+flRnYt9zGf+uIW3OGZL/afLVnTJPhDyocSlQAOAWg6Xzztg0SSypRb
	1BOKfxrGBnt2QxnwKvr0QpgyYDllD+pqx2CUdu4eL7sxvWCMyGYV+ivybxGreSK7VHNHV0SUmj76m
	M5Hw28JxhFMjTPfzauHGUMY7cXt/Fl5UmLr8kMqA8Oows/P+RmLqFurqteXA+wJ+y0w881uq0jQjb
	bpgR3G1e4PBJJpRTDlwShCeEzT81hh45pFpQyzRyQ3hmkhNBwLgyZaSgClYpJF/cRae2/IyQXkh6V
	31hD1xSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMDp8-004eh3-Tq; Thu, 11 Aug 2022 19:26:30 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMDp3-004edV-AX
	for barebox@lists.infradead.org; Thu, 11 Aug 2022 19:26:26 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 0243040004;
	Thu, 11 Aug 2022 19:26:16 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 11 Aug 2022 21:26:12 +0200
Message-Id: <20220811192612.3021687-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220811_122625_522475_F171310B 
X-CRM114-Status: UNSURE (   7.87  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ARM: dts: imx6: marsboard: fix flash node after upstream rename
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Node name was renamed upstream, so have barebox follow suit.

Fixes: e54923b76e34 ("dts: update to v5.19-rc1")
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/dts/imx6q-marsboard.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6q-marsboard.dts b/arch/arm/dts/imx6q-marsboard.dts
index cc5edfff66f9..4dfb17489c72 100644
--- a/arch/arm/dts/imx6q-marsboard.dts
+++ b/arch/arm/dts/imx6q-marsboard.dts
@@ -18,7 +18,7 @@ barebox,environment
 };
 
 &ecspi1 {
-	m25p80@0 {
+	flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-- 
2.34.1



