Delivery-date: Fri, 21 Apr 2023 12:08:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppngy-00BPSc-HP
	for lore@lore.pengutronix.de; Fri, 21 Apr 2023 12:08:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppngy-0001T0-Ba
	for lore@pengutronix.de; Fri, 21 Apr 2023 12:08:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mhsZKBQHixNX3P3AGR13r1eDgxN95Tv2lMyXr0pC10g=; b=kd+yZMsjm5FiQ4nWIiJ5PEfI+n
	lAcfT0fTKIDBOqWb0TRNMOIeRuPqqhUd20CGZZPLo1McvzG3/2Mi9h7E24ZmzCshW+x3Djvxxfw0b
	GO1LnOJ3+lYj6JUQ3Mm/jOPPVrh9AVHKP6zAn4cKOvTtXj9eSuDZe3ULlbrCh28vyw+AZn9mq8su0
	FJUibkG6PO6IMdIbhh/zM+fjhcbtqFpdLw9DxACDmQ6LQE5HQVpfqo+bK54zSVrkH1qIYJ2/I1UGN
	c/lLxINM6HyaxvyrYg2tVff8Q4YPSWlS1QlW06VXkng2I4etL+hmLIIx5rjAA40sfejeUeWuln1BA
	uFDhXT7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnfn-00AQ5t-30;
	Fri, 21 Apr 2023 10:07:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnfj-00AQ4D-2m
	for barebox@lists.infradead.org;
	Fri, 21 Apr 2023 10:07:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfa-000111-Jw; Fri, 21 Apr 2023 12:07:10 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfZ-00ClhZ-VP; Fri, 21 Apr 2023 12:07:09 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfY-00C2OV-I9; Fri, 21 Apr 2023 12:07:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 21 Apr 2023 12:06:41 +0200
Message-Id: <20230421100642.2867651-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
References: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_030719_900064_ECFBF128 
X-CRM114-Status: GOOD (  10.49  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/5] clk: bulk: return -EPROBE_DEFER in silence
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

-EPROBE_DEFER is only an error if driver core doesn't expect it. Change
it, so error message is only printed for other kinds of errors.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-bulk.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-bulk.c b/drivers/clk/clk-bulk.c
index 37982db9aa55..db775dc40b39 100644
--- a/drivers/clk/clk-bulk.c
+++ b/drivers/clk/clk-bulk.c
@@ -88,8 +88,9 @@ static int __must_check of_clk_bulk_get(struct device_node *np, int num_clks,
 		clks[i].clk = of_clk_get(np, i);
 		if (IS_ERR(clks[i].clk)) {
 			ret = PTR_ERR(clks[i].clk);
-			pr_err("%s: Failed to get clk index: %d ret: %pe\n",
-				np->name, i, clks[i].clk);
+			if (ret != -EPROBE_DEFER)
+				pr_err("%s: Failed to get clk index: %d ret: %pe\n",
+				       np->name, i, clks[i].clk);
 			clks[i].clk = NULL;
 			goto err;
 		}
-- 
2.39.2



