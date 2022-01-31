Delivery-date: Mon, 31 Jan 2022 08:59:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERbT-001TSV-9j
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 08:59:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERbR-0005zI-FM
	for lore@pengutronix.de; Mon, 31 Jan 2022 08:59:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=07KQwLQfq4XS4DXb7JAKabDNPJjAtchzFaENM76pEPg=; b=pA0/JBvHdZcFrS
	FeyfNhgNEqrxnju76nLxQ4+mMCcnbX0TxFpuzdNwfrH7V3KYpl6cwND6nSl4Nh6hooCZbsEOpkjKt
	3HUHzjPu36s3ZBhJpdF0OZLa6zqZtoaJrkSbDo+y1BO46Q1H/iUk6T3FBg77uDm19zLPoVaVOKxkz
	U9LYobk+HFgp0DuDDGY3MirSkyYCr+qeBEjCHILt8IRkePQlHxphvcFDgyyipBG2oo6Ls1o2ij2oO
	gAMsmyF+SvfMZ0+eBGeNpdGWP+RiXxxxLALljQ0L/9giZzHbraO+JJXWKW8uYoNwhRhjm4gsHSy/0
	9DDBjgxsn7ABhJ8bvDpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERa6-008MJl-CT; Mon, 31 Jan 2022 07:58:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERZ8-008LyF-Sm
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 07:57:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ7-0005Dw-Hi; Mon, 31 Jan 2022 08:57:33 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ6-007rHW-Mr; Mon, 31 Jan 2022 08:57:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 Jan 2022 08:57:20 +0100
Message-Id: <20220131075725.1873026-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
References: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_235735_037308_E83FE598 
X-CRM114-Status: GOOD (  17.83  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/12] clk: mux: add clk_hw registration functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Save users the hassle of opencoding by providing wrappers with the same
Linux semantics: names are duplicated, same arguments and struct clk_hw
is returned.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-mux.c | 82 ++++++++++++++++++++++++++++++++++++++++++-
 include/linux/clk.h   | 27 ++++++++++++++
 2 files changed, 108 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index d8c09e4a7519..d608e0e2c565 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -10,12 +10,36 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
+int clk_mux_val_to_index(struct clk_hw *hw, u32 *table, unsigned int flags,
+			 unsigned int val)
+{
+	int num_parents = clk_hw_get_num_parents(hw);
+
+	if (table) {
+		int i;
+
+		for (i = 0; i < num_parents; i++)
+			if (table[i] == val)
+				return i;
+		return -EINVAL;
+	}
+
+	return val;
+}
+EXPORT_SYMBOL_GPL(clk_mux_val_to_index);
+
+unsigned int clk_mux_index_to_val(u32 *table, unsigned int flags, u8 index)
+{
+	return table ? table[index] : index;
+}
+EXPORT_SYMBOL_GPL(clk_mux_index_to_val);
+
 static int clk_mux_get_parent(struct clk_hw *hw)
 {
 	struct clk_mux *m = to_clk_mux(hw);
 	int idx = readl(m->reg) >> m->shift & ((1 << m->width) - 1);
 
-	return idx;
+	return clk_mux_val_to_index(hw, m->table, m->flags, idx);
 }
 
 static int clk_mux_set_parent(struct clk_hw *hw, u8 idx)
@@ -30,6 +54,8 @@ static int clk_mux_set_parent(struct clk_hw *hw, u8 idx)
 			return 0;
 	}
 
+	idx = clk_mux_index_to_val(m->table, m->flags, idx);
+
 	val = readl(m->reg);
 	val &= ~(((1 << m->width) - 1) << m->shift);
 	val |= idx << m->shift;
@@ -186,3 +212,57 @@ struct clk *clk_register_mux(struct device_d *dev, const char *name,
 	return clk_mux(name, flags, reg, shift, width, parent_names,
 		       num_parents, clk_mux_flags);
 }
+
+struct clk_hw *__clk_hw_register_mux(struct device_d *dev,
+		const char *name, u8 num_parents,
+		const char * const *parent_names,
+		unsigned long flags, void __iomem *reg, u8 shift, u32 mask,
+		u8 clk_mux_flags, u32 *table, spinlock_t *lock)
+{
+	struct clk_mux *mux;
+	struct clk_hw *hw;
+	struct clk_init_data init = {};
+	u8 width = 0;
+	int ret = -EINVAL;
+
+	width = fls(mask) - ffs(mask) + 1;
+
+	if (clk_mux_flags & CLK_MUX_HIWORD_MASK) {
+		if (width + shift > 16) {
+			pr_err("mux value exceeds LOWORD field\n");
+			return ERR_PTR(-EINVAL);
+		}
+	}
+
+	/* allocate the mux */
+	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
+	if (!mux)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	if (clk_mux_flags & CLK_MUX_READ_ONLY)
+		init.ops = &clk_mux_ro_ops;
+	else
+		init.ops = &clk_mux_ops;
+	init.flags = flags;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+
+	/* struct clk_mux assignments */
+	mux->reg = reg;
+	mux->shift = shift;
+	mux->width = width;
+	mux->flags = clk_mux_flags;
+	mux->lock = lock;
+	mux->table = table;
+	mux->hw.init = &init;
+
+	hw = &mux->hw;
+	ret = clk_hw_register(dev, hw);
+	if (ret) {
+		kfree(mux);
+		hw = ERR_PTR(ret);
+	}
+
+	return hw;
+}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 6e59418aba3c..81bd1ec2dad9 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -619,6 +619,7 @@ struct clk_mux {
 	int shift;
 	int width;
 	unsigned flags;
+	u32 *table;
 	spinlock_t *lock;
 };
 
@@ -641,6 +642,32 @@ struct clk *clk_register_mux(struct device_d *dev, const char *name,
 		void __iomem *reg, u8 shift, u8 width,
 		u8 clk_mux_flags, spinlock_t *lock);
 
+struct clk_hw *__clk_hw_register_mux(struct device_d *dev,
+		const char *name, u8 num_parents,
+		const char * const *parent_names,
+		unsigned long flags, void __iomem *reg, u8 shift, u32 mask,
+		u8 clk_mux_flags, u32 *table, spinlock_t *lock);
+
+#define clk_hw_register_mux(dev, name, parent_names,                  \
+		num_parents, flags, reg, shift, mask,                 \
+		clk_mux_flags, lock)                                  \
+	__clk_hw_register_mux((dev), (name), (num_parents),           \
+				     (parent_names),                  \
+				     (flags), (reg), (shift), (mask), \
+				     (clk_mux_flags), NULL, (lock))
+
+#define clk_hw_register_mux_table(dev, name, parent_names, num_parents,	  \
+				  flags, reg, shift, mask, clk_mux_flags, \
+				  table, lock)				  \
+	__clk_hw_register_mux((dev), (name), (num_parents),	          \
+			      (parent_names), (flags), (reg),             \
+			      (shift), (mask), (clk_mux_flags), (table),  \
+			      (lock))
+
+int clk_mux_val_to_index(struct clk_hw *hw, u32 *table, unsigned int flags,
+			 unsigned int val);
+unsigned int clk_mux_index_to_val(u32 *table, unsigned int flags, u8 index);
+
 struct clk_gate {
 	struct clk_hw hw;
 	void __iomem *reg;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

