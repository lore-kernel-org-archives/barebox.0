Delivery-date: Mon, 13 Oct 2025 11:50:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8FCH-007KTB-0y
	for lore@lore.pengutronix.de;
	Mon, 13 Oct 2025 11:50:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8FCG-0005Yc-PL
	for lore@pengutronix.de; Mon, 13 Oct 2025 11:50:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jLVyZ8xfeR4AHhX5/1A/V1Z8wMI1iSMPf3xPXtgLHNA=; b=BJ7l21mFjDJXdsM5FHm1/B95TD
	+G8G3Gv2aS57lFF9ir4jNUSougDezN4xTgdI5F9odi/RRJvppbboi1rWQssewKo7gb7uMq/01oOxI
	dNJJuF8sQpW5x1cDXbOhzZGMLdfDJSckDxXNw+GFng0etAhZB3bzqcOBw5VWlp3GFFjqo+aZahiMd
	X8Q8yfn28vwEKUmpn8h1IIq2XjnfGlM8xfv+2l1DEQwYQ4cenKBqx5oMiAtqUA0vwx7HNtAZ8SI40
	GCvm/JE9b431gR1roxX8CWsuvo02S3WElVZRUIIMmf7mXPh6ZoYXIh7HXT9tcXbBz+NZcWCtOp5Xm
	vmPj93Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8FBm-0000000CnVi-1FdM;
	Mon, 13 Oct 2025 09:49:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8FBj-0000000CnUm-3O8R
	for barebox@lists.infradead.org;
	Mon, 13 Oct 2025 09:49:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1v8FBg-0005SB-W4
	for barebox@lists.infradead.org; Mon, 13 Oct 2025 11:49:53 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1v8FBg-003MXy-2c
	for barebox@lists.infradead.org;
	Mon, 13 Oct 2025 11:49:52 +0200
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1v8FBg-00000005SFH-31pE
	for barebox@lists.infradead.org;
	Mon, 13 Oct 2025 11:49:52 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 13 Oct 2025 11:49:43 +0200
Message-ID: <20251013094943.1299607-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <aOUAKx-E6jn9ZLWT@pengutronix.de>
References: <aOUAKx-E6jn9ZLWT@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_024955_841684_7888C3AF 
X-CRM114-Status: UNSURE (   9.85  )
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
X-Spam-Status: No, score=-0.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] clk: clk_set_parent: skip any operation if current and new parents are equal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When an clk is defined with only one parent it probably has no
set_parent function. Therefor changing the parent would return with
-EINVAL. We check for this case and skip this function in this case.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/clk/clk.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 89a007a12c5..ac5b83cf8b4 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -302,6 +302,9 @@ int clk_set_parent(struct clk *clk, struct clk *newparent)
 	if (IS_ERR(newparent))
 		return PTR_ERR(newparent);
 
+	if (newparent == curparent)
+		return 0;
+
 	if (!clk->num_parents)
 		return -EINVAL;
 	if (!clk->ops->set_parent)
-- 
2.47.3



