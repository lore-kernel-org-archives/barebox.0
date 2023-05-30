Delivery-date: Tue, 30 May 2023 13:19:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOR-002jxM-II
	for lore@lore.pengutronix.de; Tue, 30 May 2023 13:19:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOP-0001WK-28
	for lore@pengutronix.de; Tue, 30 May 2023 13:19:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U+6kzs2AT7B7TKDkRIO82Z8BE8bIRXyt/bVbVrRkmf0=; b=tu4yUAqrk51xvbc+O3y0eNguEL
	+TAsX3qMt2PcMSldgYEgUXUaDIuIRFFd7r/dIMNpr8IiW430lYlQdgJGSHETKst4Gxt3baXvAWe2x
	ihTZPOTxosoUMCMIOENNrAifzsFAaw2nduEblzPPB25XUfSjTRyeDD2S73jr4IlsX03+v9MxqwzPa
	7amTRLPckFS2VmUxAvw7sTu8atpf8X+wbVBz358xSn9rQeEgEAYhv2gfjsmQMZXbgtABZpTU30a+H
	v3mc0J9LCkbo85Nj7ufJBeZF23aDjtHeds/57JgtHjPInTH91/f1R4FQfvi4owG7cOUZdi5ysr2Aj
	5Thzn+dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNJ-00Dbor-2v;
	Tue, 30 May 2023 11:18:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNA-00Dbie-1f
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 11:18:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN5-000147-N5; Tue, 30 May 2023 13:18:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN4-003rOQ-VY; Tue, 30 May 2023 13:18:34 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN3-0082b0-Lr; Tue, 30 May 2023 13:18:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 May 2023 13:18:26 +0200
Message-Id: <20230530111832.1916542-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230530111832.1916542-1-s.hauer@pengutronix.de>
References: <20230530111832.1916542-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_041840_618949_87C53156 
X-CRM114-Status: GOOD (  11.57  )
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
Subject: [PATCH 04/10] clk: clk-divider: fix CLK_DIVIDER_HIWORD_MASK flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The CLK_DIVIDER_HIWORD_MASK flag is in divider->flags, not in the
generic clock flags.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-divider.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index e095b40bfa..1eaff1675b 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -288,7 +288,7 @@ static int clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 	val &= ~(clk_div_mask(divider->width) << divider->shift);
 	val |= value << divider->shift;
 
-	if (clk->flags & CLK_DIVIDER_HIWORD_MASK)
+	if (divider->flags & CLK_DIVIDER_HIWORD_MASK)
 		val |= clk_div_mask(divider->width) << (divider->shift + 16);
 
 	writel(val, divider->reg);
-- 
2.39.2



