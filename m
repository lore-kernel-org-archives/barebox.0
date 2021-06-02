Delivery-date: Wed, 02 Jun 2021 12:04:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNjk-0000lN-4F
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:04:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNje-0002Ko-GF
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:04:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAFAldUP4DvaZK7ZtB01BaDn4X1u390MRH7KoRdchIg=; b=NaOOPp1mBsZzkG
	9ItBA95OTS+CYO/5P3LM/MReKvzTC686Jev6nvHHda0utWHfsHSxoBa10mRvKK81Fug57oaKemQjk
	LIGv0quCdAFOiiaEPx4u6V6J6dds99Q0zzHrQ3Ns5W+ct7vEWsfUucKJtiXNB9azPahsaeOut3iC5
	yDhsTRmDvDOK0phLAaDxt+UkZkIg+JV6UN56qZyklukPfNaCJ4bBJAiaOdoiVXSHE/fOPMrChhYug
	jpQD0IS17XZgMUVTD6QLv7OLc0OGUDuACAZF8TT51htJvQcZAbMpycY+P2ktFxJXaLubqOhTBG/52
	VvWoYModxqszeKtfKERA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNhr-0038rK-A2; Wed, 02 Jun 2021 10:02:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNas-0036KX-5t
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:25 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000M9-F4; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-00039R-Qa; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:49 +0200
Message-Id: <20210602095507.24609-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025522_332070_21018057 
X-CRM114-Status: GOOD (  13.07  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/24] clk: divider: Make clk_divider_ops const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

clk_divider_ops shouldn't be changed, so make it const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-divider.c | 2 +-
 include/linux/clk.h       | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index edbba941b7..446b35e1ed 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -296,7 +296,7 @@ static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 	return 0;
 }
 
-struct clk_ops clk_divider_ops = {
+const struct clk_ops clk_divider_ops = {
 	.set_rate = clk_divider_set_rate,
 	.recalc_rate = clk_divider_recalc_rate,
 	.round_rate = clk_divider_round_rate,
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 654845023a..b8674973fa 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -450,7 +450,7 @@ struct clk_divider {
 #define CLK_MUX_HIWORD_MASK		(1 << 2)
 #define CLK_MUX_READ_ONLY		(1 << 3) /* mux can't be changed */
 
-extern struct clk_ops clk_divider_ops;
+extern const struct clk_ops clk_divider_ops;
 
 unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
 		unsigned int val,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

