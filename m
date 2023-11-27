Delivery-date: Mon, 27 Nov 2023 07:51:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSp-00Aesj-07
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:51:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSp-00019b-2A
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:51:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QYQyrLcugAixqlGFjVJ+uEBBC7rt8a46m0PBMET5EuU=; b=LhMmCti/93UdczQ9AGmH1M6sfi
	9XhahfWjHAaaScPIYKvBAQqMCfO/7EYdKuzQVhztnPjmCoyQ3zYrw9jbGvOKpIaaViI/DtKGix1rI
	H5vCCzEE/GO8Sx4dZWwM9m2zg4ZmlKjk6U0rDkKSRGxRJ6DhrS4KmqoESFwn7GeEYOn7wBtE/1I81
	FnFPYtKa19ubwWdLfa6RN610G2O0ZrWXIYIjKfVuXCE62BLEOPLPrQbgWT15t/nC2JWhzMaE4Y4Lx
	NO+F9BunfUS8QCZ97QkxgAtMAB0VvJQVWh7qP8uZqqSmwBkS4m8lzg+YcjzNVwv8TqRpPCvw5JDTY
	s4yHoOQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRU-001baM-1M;
	Mon, 27 Nov 2023 06:50:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRL-001bWK-1g
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:49:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-0000dW-DG; Mon, 27 Nov 2023 07:49:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-00Bsiz-0j; Mon, 27 Nov 2023 07:49:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-009GPh-32;
	Mon, 27 Nov 2023 07:49:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:49:40 +0100
Message-Id: <20231127064947.2207726-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
References: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224955_680472_96F3E226 
X-CRM114-Status: GOOD (  12.49  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/13] clk: implement clk clk_hw_get_parent_by_index
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is the inverse operation to clk_get_parent_index and is already
implemented inline in clk_get_parent. Factor that code out for use by
the incoming STM32MP13 clock driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk.c   | 25 +++++++++++++++++++++----
 include/linux/clk.h |  1 +
 2 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 25d32e9e12f9..acd90e6e5889 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -318,6 +318,26 @@ int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *newparent)
 	return clk_set_parent(&hw->clk, &newparent->clk);
 }
 
+static struct clk *clk_get_parent_by_index(struct clk *clk, u8 idx)
+{
+	if (IS_ERR_OR_NULL(clk->parents[idx]))
+		clk->parents[idx] = clk_lookup(clk->parent_names[idx]);
+
+	return clk->parents[idx];
+}
+
+struct clk_hw *
+clk_hw_get_parent_by_index(const struct clk_hw *hw, unsigned int idx)
+{
+	struct clk *clk = clk_hw_to_clk(hw);
+
+	if (!clk || idx >= clk->num_parents || !clk->parents)
+		return NULL;
+
+	return clk_to_clk_hw(clk_get_parent_by_index(clk, idx));
+}
+EXPORT_SYMBOL_GPL(clk_hw_get_parent_by_index);
+
 struct clk *clk_get_parent(struct clk *clk)
 {
 	struct clk_hw *hw;
@@ -343,10 +363,7 @@ struct clk *clk_get_parent(struct clk *clk)
 		idx = 0;
 	}
 
-	if (IS_ERR_OR_NULL(clk->parents[idx]))
-		clk->parents[idx] = clk_lookup(clk->parent_names[idx]);
-
-	return clk->parents[idx];
+	return clk_get_parent_by_index(clk, idx);
 }
 
 struct clk_hw *clk_hw_get_parent(struct clk_hw *hw)
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 269664b0ba63..6a33f28ee60a 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -129,6 +129,7 @@ int clk_hw_set_rate(struct clk_hw *hw, unsigned long rate);
  */
 int clk_set_parent(struct clk *clk, struct clk *parent);
 int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *hwp);
+struct clk_hw *clk_hw_get_parent_by_index(const struct clk_hw *hw, unsigned int idx);
 
 /**
  * clk_get_parent - get the parent clock source for this clock
-- 
2.39.2



