Delivery-date: Thu, 13 Mar 2025 08:52:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdMk-00DThi-0l
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:52:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdMi-000127-1l
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:52:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5ejNOhBkfIbSAMIzHffZWdB+GsHKKeVQkviD6DfLWME=; b=gwt8QM/Egr2CZqoD6T71Fs2zSM
	EeLZiI+ziarHKQxyidn18MznObqkV+3ASo89F3/ufH4MGFAO8m4DyKd+MdrI8Mv6U5OXQ2ES3VdaS
	ANgR0zBTSximUk/Hz8qhI97ZKJyCLu0+onBeueDX1GhZGTB+CI6NfSS9TRS1F53UQlLHBYSZmC+UU
	5MFtjJZhgwNx+ykoO6B2YVbgpQ4HASglk7eLYNGak9pGANQlhquTHHRwmB788EwtJahQuZZ0eHdJN
	egMI1VGP9bh3sAVhYTUTD4eg4EXHyUhGVF6KieJE79VRPY08qmk3tWRpepyvDwfSwHU0GLay8MbvL
	9kUX2SYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdMG-0000000ARcv-2zE5;
	Thu, 13 Mar 2025 07:52:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsd6h-0000000AOlw-01PO
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:35:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd6f-00060D-PS; Thu, 13 Mar 2025 08:35:53 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd6f-005UwN-1q;
	Thu, 13 Mar 2025 08:35:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-003pwb-2s;
	Thu, 13 Mar 2025 08:34:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:34:44 +0100
Message-Id: <20250313073445.764875-22-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313073445.764875-1-a.fatoum@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_003555_049033_CFD718F6 
X-CRM114-Status: UNSURE (   7.74  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 21/22] clk: analogbits: wrpll-cln28hpc: bail out before zero division
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

clang-analyzer reports that a zero division may be possible while
computing post_divr_freq. Bail out early instead by returning
-ERANGE.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/analogbits/wrpll-cln28hpc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/analogbits/wrpll-cln28hpc.c b/drivers/clk/analogbits/wrpll-cln28hpc.c
index 1aafaf2e6502..a9231fbf8188 100644
--- a/drivers/clk/analogbits/wrpll-cln28hpc.c
+++ b/drivers/clk/analogbits/wrpll-cln28hpc.c
@@ -301,6 +301,9 @@ int wrpll_configure_for_rate(struct wrpll_cfg *c, u32 target_rate,
 	c->divr = best_r - 1;
 	c->divf = best_f - 1;
 
+	if (!best_r)
+		return -ERANGE;
+
 	post_divr_freq = div_u64(parent_rate, best_r);
 
 	/* Pick the best PLL jitter filter */
-- 
2.39.5



