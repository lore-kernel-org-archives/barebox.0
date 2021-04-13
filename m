Delivery-date: Tue, 13 Apr 2021 11:04:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWEyJ-0007BO-7e
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 11:04:35 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWEyI-0003pB-Dv
	for lore@pengutronix.de; Tue, 13 Apr 2021 11:04:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A9dIMRDnJ1h5veb+k7NP/+Gg2QnYrCtcK75YsN9JluY=; b=IOY3bPy5w+0Vvo
	QzUHiefdV3TGatKTTC5EUauosumu+QCpkbi0u6DozWcjZHyrVx6mdhmDbypZ88Zb9xJVoP4e75RTh
	1oBqFp3hgvXReYkwv6EPDClyZbdl/u8LEGekQVOwrw7BChf6QvhbkjZGY6M/Q+4s9A4x2lcYbAXQI
	m12xZqHHU0cbMkbdXkx1GdQx6k9otH/q+f4qTkmUoylSlK3p6wXII7j7pPFAQDtaJAjGcAqxigdz+
	LM55kF6uBDoLgIHPVUw2JDvgAGl26BblnQXQLdZryBJInna6DINULj0A1COoSSup7p0OV1A2cWLbG
	nYvgiSV51r3Aul/UEEIA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWEwx-008ddT-JE; Tue, 13 Apr 2021 09:03:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWEuy-008czK-Sr
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 09:01:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Om0e1YZimIEgGohr/Q9vVcSSOaUnSDECsDAa5zqD+/0=; b=bQ5B7N9ZvCjcpQqDadRNc26Ife
 SG9EGGSjf1sDTa2B9O1DepceViYj0dbLgaLutBBy483363XSdf4gGlM/7WmNgA1cofWERChoq2N7z
 +5JQB6Qqv86y2nMtiqQxXn78dTNXxptQn5XByL29sgqIJ7Z/559nCRjNma5P29As6t4lkANsYp3Uz
 e5plE3MNgllQSLwYelgfX3Z79BdSVbSymPth7dAh03GH272bq61mm7qwlqU6K3FJEhrVm4csKguXG
 RzSL+65F7dHSmXnV9CfIThfQBgOnEU1y1tostbgLVqDDDgHVjd1fkV1uz7eV2skVTI63sjB5cQckP
 c99ODJPQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWEuu-006r0y-1W
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 09:01:07 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWEus-0003FP-GV; Tue, 13 Apr 2021 11:01:02 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWEus-0001RO-7c; Tue, 13 Apr 2021 11:01:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Apr 2021 11:01:01 +0200
Message-Id: <20210413090101.2515-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_020104_099193_FFA6BC04 
X-CRM114-Status: GOOD (  11.34  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clk: divider: fix divider setting with CLK_SET_RATE_PARENT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When CLK_SET_RATE_PARENT is set for a divider then clk_divider_bestdiv()
is called which returns the best parent rate. This best parent rate must
be fed into divider_get_val(), not the unchanged original parent rate.

Fixes: 47b432c697 ("clk: divider: export clk_div_mask() helper")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-divider.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 9c2e50e4a5..7119dd4e59 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -265,19 +265,17 @@ static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
 		unsigned long parent_rate)
 {
 	struct clk_divider *divider = container_of(clk, struct clk_divider, clk);
-	unsigned int div, value;
+	unsigned int value;
 	u32 val;
 
 	if (divider->flags & CLK_DIVIDER_READ_ONLY)
 		return 0;
 
 	if (clk->flags & CLK_SET_RATE_PARENT) {
-		unsigned long best_parent_rate = parent_rate;
-		div = clk_divider_bestdiv(clk, rate, &best_parent_rate,
-				divider->table, divider->width, divider->flags);
-		clk_set_rate(clk_get_parent(clk), best_parent_rate);
-	} else {
-		div = DIV_ROUND_UP(parent_rate, rate);
+		clk_divider_bestdiv(clk, rate, &parent_rate,
+				    divider->table, divider->width,
+				    divider->flags);
+		clk_set_rate(clk_get_parent(clk), parent_rate);
 	}
 
 	value = divider_get_val(rate, parent_rate, divider->table,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

