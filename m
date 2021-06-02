Delivery-date: Wed, 02 Jun 2021 12:09:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNoR-0000sv-Hv
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:09:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNoO-0003Vs-4j
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:09:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsY4ZVVQ2++LM+Sv8Q80at4rzx/bL/cb5ANu5IXEaT4=; b=jOrTd59dOI8iCC
	fo29apylhVk/gXql1Es/1iAKfluvTbGQ36Qo3zBys7Ib12nrmJ9d4/JadX/TlDcC1pyrHVvpcA9YO
	OLc0GhdBGe0PYL64J94wAqZ5z5n/TQPd7dmOmGMAgh+QMlbvWIxeRS7iUtrAeLFys76x7Ygc63ogJ
	8POUKAVz5bq6JsvwiwGSbLFriMBkXNGpKKfoCyOUsWonOhkDCTRX23pqY/nIh9c849e9aWgIt9oKJ
	tccoxhkqJdM+hBmlLVGg+4M2YBwqo/gaI+NG1Zk6WMtFsTBDj0gtYdWP+KzAtldJQSEsXJ6zj/jZf
	ciLKBYgtVHxp/F5Wq6jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNmR-003Azi-Ui; Wed, 02 Jun 2021 10:07:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNb0-0036OK-7w
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:33 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MH-Jn; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-00039p-Tm; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:57 +0200
Message-Id: <20210602095507.24609-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025530_407240_7ADCB73F 
X-CRM114-Status: GOOD (  11.19  )
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
Subject: [PATCH 14/24] clk: Add Linux functions to register a divider
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux has clk_register_divider() and clk_register_divider_table(). Add
the same functions with the same prototypes for barebox to ease code
porting from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-divider.c | 19 +++++++++++++++++++
 include/linux/clk.h       |  9 +++++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 447c43dc93..856b8a0648 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -409,3 +409,22 @@ struct clk *clk_divider_table(const char *name, const char *parent,
 
 	return &div->hw.clk;
 }
+
+struct clk *clk_register_divider_table(struct device_d *dev, const char *name,
+		const char *parent_name, unsigned long flags,
+		void __iomem *reg, u8 shift, u8 width,
+		u8 clk_divider_flags, const struct clk_div_table *table,
+		spinlock_t *lock)
+{
+	return clk_divider_table(name, parent_name, flags, reg, shift, width,
+				 table, clk_divider_flags);
+}
+
+struct clk *clk_register_divider(struct device_d *dev, const char *name,
+		const char *parent_name, unsigned long flags,
+		void __iomem *reg, u8 shift, u8 width,
+		u8 clk_divider_flags, spinlock_t *lock)
+{
+	return clk_divider(name, parent_name, flags, reg, shift, width,
+			   clk_divider_flags);
+}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 9d09738dda..ba98c5307e 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -475,6 +475,10 @@ void clk_divider_free(struct clk *clk_divider);
 struct clk *clk_divider(const char *name, const char *parent,
 			unsigned clk_flags, void __iomem *reg, u8 shift,
 			u8 width, unsigned div_flags);
+struct clk *clk_register_divider(struct device_d *dev, const char *name,
+		const char *parent_name, unsigned long flags,
+		void __iomem *reg, u8 shift, u8 width,
+		u8 clk_divider_flags, spinlock_t *lock);
 struct clk *clk_divider_one_based(const char *name, const char *parent,
 				  unsigned clk_flags, void __iomem *reg,
 				  u8 shift, u8 width, unsigned div_flags);
@@ -482,6 +486,11 @@ struct clk *clk_divider_table(const char *name, const char *parent,
 			      unsigned clk_flags, void __iomem *reg, u8 shift,
 			      u8 width, const struct clk_div_table *table,
 			      unsigned div_flags);
+struct clk *clk_register_divider_table(struct device_d *dev, const char *name,
+		const char *parent_name, unsigned long flags,
+		void __iomem *reg, u8 shift, u8 width,
+		u8 clk_divider_flags, const struct clk_div_table *table,
+		spinlock_t *lock);
 
 struct clk_fixed_factor {
 	struct clk_hw hw;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

