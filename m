Delivery-date: Wed, 02 Jun 2021 12:00:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNfx-0000ek-9R
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:00:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNfs-0001HQ-7B
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:00:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BiWn2/R3Ojs7a0r29K6JLIGGvVmiDiYPYTLBFQffl/g=; b=i6fogv+DNQe0EW
	8dcp498orWBvffWzb7n5nk8f5sO0ybCHJCw8FgETQHYa1CXw/rVTVcxrV64S1RbLQBcTJArp6+hUd
	B4IJsxee3R30Rm6ExKS6WBSv6yXAL7gU/eF0E5YliQrMJoKuHtIrsw02jX/+gZAiwUsTCvDYpCwsR
	co/SBP9LxoJwcnxWDYzTbdvkbIHjqRn0n79RpQs4KIMPCw+8GkoBNKToxwLbmSE1XsROJUXnlOIQH
	VI/RdFT9lzG5+hBuR7DJS0ENVZgQfiQtlZ6FbmkaGvOq8VVxlimMnVTPueFUoifzmnXe3f+ilqdRb
	Au6q+IbTqQDFJfcRjWcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNe9-0037Ir-Jp; Wed, 02 Jun 2021 09:58:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNal-0036FP-BN
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MC-8r; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-00039a-Rp; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:52 +0200
Message-Id: <20210602095507.24609-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025515_445362_089B9B9A 
X-CRM114-Status: GOOD (  12.26  )
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
Subject: [PATCH 09/24] clk: mux: Add ro ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Linux version of the clk muxr exports a clk_mux_ro_ops. Do
the same for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-mux.c | 4 ++++
 include/linux/clk.h   | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index bd5b50ad18..464593b619 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -48,6 +48,10 @@ const struct clk_ops clk_mux_ops = {
 	.set_parent = clk_mux_set_parent,
 };
 
+const struct clk_ops clk_mux_ro_ops = {
+	.get_parent = clk_mux_get_parent,
+};
+
 struct clk *clk_mux_alloc(const char *name, unsigned clk_flags, void __iomem *reg,
 		u8 shift, u8 width, const char * const *parents, u8 num_parents,
 		unsigned mux_flags)
diff --git a/include/linux/clk.h b/include/linux/clk.h
index ede2b676fe..edf64cd9aa 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -504,6 +504,7 @@ struct clk_mux {
 #define to_clk_mux(_hw) container_of(_hw, struct clk_mux, hw)
 
 extern const struct clk_ops clk_mux_ops;
+extern const struct clk_ops clk_mux_ro_ops;
 
 struct clk *clk_mux_alloc(const char *name, unsigned clk_flags,
 			  void __iomem *reg, u8 shift, u8 width,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

