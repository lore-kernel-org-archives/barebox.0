Delivery-date: Fri, 14 Jan 2022 08:01:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8GaY-001o1G-6u
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 08:01:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8GaX-00070H-2Y
	for lore@pengutronix.de; Fri, 14 Jan 2022 08:01:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e0IwxlcI4zou94t4Ifi2f8YcVk7RBODg9dsjSxKPwr0=; b=bIQS88Wh5NIC7K
	e5smdcaoslNykILgiimbel4RWe4Nqmn1ubN8YFVG7HH8lGuBFoZ8v4Tkt7yrj4cz7py26MkvksILv
	o64uTjI+/ep8j+4Vgzpio3yWX2GtFHOKIWjfW6n7LEt4Cxj2AoGLIdNN/PMaxwquo+e6BSqWR2tHN
	UW8L/FPGHoBAfpyawk7HWl9++7rCJPw/nc2aB1fR0GfCL4JAtAZWHUyuZ/Pp8mlMjJ7uBcSuT63TO
	kZ8yYmK2hADYUmSG0n0yLjxlW+ye73VXmP0Dv91v/pMk9UHUPtL4ptoqjibYvCZ5xHC1xo8IM8f2V
	6mXYz/WJt0TyHxHTtIVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8GZB-0080YQ-Vj; Fri, 14 Jan 2022 07:00:06 +0000
Received: from relay7-d.mail.gandi.net ([2001:4b98:dc4:8::227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8GZ6-0080XI-Qn
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 07:00:02 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B383C20003;
 Fri, 14 Jan 2022 06:59:57 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 14 Jan 2022 07:59:52 +0100
Message-Id: <20220114065953.698483-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220113_230001_043729_8B39EF8D 
X-CRM114-Status: UNSURE (   9.24  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] clk: change clk_get_num_parents into
 clk_hw_get_num_parents
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is no clk_get_num_parents in Linux, but clk_hw_get_num_parents.
Our only users uses it with a clk_hw, so adjust the function
accordingly.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/clk/at91/clk-generated.c | 2 +-
 include/linux/clk.h              | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
index 628ff407d91e..e639fb3a1a65 100644
--- a/drivers/clk/at91/clk-generated.c
+++ b/drivers/clk/at91/clk-generated.c
@@ -92,7 +92,7 @@ static int clk_generated_set_parent(struct clk_hw *hw, u8 index)
 {
 	struct clk_generated *gck = to_clk_generated(hw);
 
-	if (index >= clk_get_num_parents(clk_hw_to_clk(hw)))
+	if (index >= clk_hw_get_num_parents(hw))
 		return -EINVAL;
 
 	gck->parent_id = index;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 6565429a9b9f..481c28871258 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -721,9 +721,9 @@ int of_clk_add_provider(struct device_node *np,
 						   void *data),
 			void *data);
 
-static inline unsigned int clk_get_num_parents(const struct clk *hw)
+static inline unsigned int clk_hw_get_num_parents(const struct clk_hw *hw)
 {
-	return hw->num_parents;
+	return hw->clk.num_parents;
 }
 
 #else
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

