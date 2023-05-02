Delivery-date: Tue, 02 May 2023 14:31:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptp9t-002HM8-3c
	for lore@lore.pengutronix.de; Tue, 02 May 2023 14:31:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptp9q-0004lw-Pi
	for lore@pengutronix.de; Tue, 02 May 2023 14:31:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uwP+AUg/fR6A5FtRNj5kTJtgJGsMHP6BPrgNorRbmag=; b=HRQyGhbu+1i9WsNbEUNuDBGiKQ
	WHPOPKVyAhUtTUmQZTaNBq+5bXNQyg7km6KVyWxYGOfekXj0f+JqC7N0yYDJTd2BOVHzLZ2t6tiyZ
	/qQJQVtzcoG3ln2pKyGjy6pWTUnh60B9PE4D485kLmsoLsqyXal1Z9z1450ni/k/XKBRMAvUIZgEE
	gmy08tlJTGCpqXZWROUcxLynPqKWY5dvA7JFNnD9tmiBlJrnqgMM/a3D6R6MEGF42nxwFDhuckzm9
	/6OXH1EyiYkJzxiE0CgJutfNrGlvTI8sdLEI+j98YPN+9ovz1hHO7X/cM2P6iR7yqnAzLDA26MHti
	P6KsUJsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptp8w-001QfT-2k;
	Tue, 02 May 2023 12:30:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptp8u-001Qdr-0S
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 12:30:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptp8s-0004Nh-Ss; Tue, 02 May 2023 14:30:02 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptp8s-000agP-9u; Tue, 02 May 2023 14:30:02 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptp8r-009Avf-Pc; Tue, 02 May 2023 14:30:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 14:30:00 +0200
Message-Id: <20230502123000.2186637-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_053004_180530_6F2EEE65 
X-CRM114-Status: UNSURE (   8.10  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: NXP i.MX8MN EVK: Drop unnecessary IMD_USED_OF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

IMD tags are now automatically referenced when the DT itself is
referenced. IMD_USED_OF is no longer needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
index 398dfb33ae..23504ee965 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
@@ -155,8 +155,5 @@ ENTRY_FUNCTION(start_nxp_imx8mn_evk, r0, r1, r2)
 	relocate_to_current_adr();
 	setup_c();
 
-	IMD_USED_OF(imx8mn_evk);
-	IMD_USED_OF(imx8mn_ddr4_evk);
-
 	nxp_imx8mn_evk_start();
 }
-- 
2.39.2



