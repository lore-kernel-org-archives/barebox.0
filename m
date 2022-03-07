Delivery-date: Mon, 07 Mar 2022 18:03:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRGl9-003flC-0M
	for lore@lore.pengutronix.de; Mon, 07 Mar 2022 18:03:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRGl7-0004Uy-Ab
	for lore@pengutronix.de; Mon, 07 Mar 2022 18:02:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLILLgau9F3WEl8q3CmYNaAkluYnI2XHBsBtha1+tq4=; b=liJHE3juuc7LSy
	osyR3zGFu3xQmoMrhNAARdaD/RMFYaEoVyxQt+1ng4//Pms+V5IqDbt2nbXsgIe/uykTPLkNNgSZw
	m+saHVBf2whPDzUuUxO5sXNkbd1z+RXDur8l17OkNHu3hxWOCrEQKLWsoHmJa9jyF+O5E+kNcXOAu
	FHJQj5HrF9AM1uf+u4jSb7LA/HAb5+NjbzvERMTPWdyA/RwSlN0XEAL690iymKFGqyp2KKkfd6dUO
	OZWrvg0+rxE4GkLEn7NZNrywXtFPLjs6+96Yrv4/nuvqN9o7spRIjJ5uuD0hvMlvPVdbd+PVmQ8HO
	571NemWESAZ3j7nEkGKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRGjY-000x7c-I4; Mon, 07 Mar 2022 17:01:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRGjU-000x76-EI
 for barebox@lists.infradead.org; Mon, 07 Mar 2022 17:01:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nRGjL-0004GH-8T; Mon, 07 Mar 2022 18:01:07 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nRGjK-00GWGV-Pw; Mon, 07 Mar 2022 18:01:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  7 Mar 2022 18:01:06 +0100
Message-Id: <20220307170106.3937198-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220307170106.3937198-1-a.fatoum@pengutronix.de>
References: <20220307170106.3937198-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_090116_500421_E47380DC 
X-CRM114-Status: GOOD (  11.51  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/2] clk: composite: fix possible NULL pointer
 dereference
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A composite clock is at most composed of a mux, a divider and a gate,
but it may lack one or two of these components. In that case, a NULL
pointer is passed, so we need to deal with this case.

Fixes: 8b0ca7a885ea ("clk: composite: add clk_hw registration functions")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-composite.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 63056b769647..4ebdd399b44b 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -181,9 +181,13 @@ struct clk_hw *clk_hw_register_composite(struct device_d *dev,
 		unsigned long flags)
 {
 	struct clk *clk;
-	mux_hw->clk.ops = mux_ops;
-	rate_hw->clk.ops = rate_ops;
-	gate_hw->clk.ops = gate_ops;
+
+	if (mux_hw)
+		mux_hw->clk.ops = mux_ops;
+	if (rate_hw)
+		rate_hw->clk.ops = rate_ops;
+	if (gate_hw)
+		gate_hw->clk.ops = gate_ops;
 
 	parent_names = memdup_array(parent_names, num_parents);
 	if (!parent_names)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

