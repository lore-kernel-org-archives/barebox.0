Delivery-date: Tue, 18 May 2021 13:52:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyGo-0004Fb-Km
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:52:18 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyGn-0002f4-S7
	for lore@pengutronix.de; Tue, 18 May 2021 13:52:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qIFbZvmPOIl/BE9LD4vnWwQR8Z0aFY//fLDbmRgD7yU=; b=miX1UfQxG87d4A/POvqMZlsKl
	VpzBdMjSoOPw+mEPUvzo695xwVZrORLhhl5lBiMU+GNsJG1RpLlTM6XXLDUoAZg9MyQJ7YjN1nh4Q
	KSk7KcWqCHHb7CWIjwZaXT5itpuzvynpBE7JRRenvWvKJngH3oER86PT38NfihRDy0gheLJ5XD0WJ
	6gpvWS+C9ZpTmIPO65K1fyhA/g9WtupyOpb+uv43lcKCu567VToKcVz565naOgwYu8CT6EzWSX0jB
	BCdIhtEKXC495jOhwDf+4hHl4QZmezMEcHeL7Rlq7tAkBV9JfWuWuLL2WCTmR0+jSmvbbMCWFgpN5
	pngQjuIsg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyFk-000eNC-1P; Tue, 18 May 2021 11:51:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEK-000dfi-IV
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:49:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=HpJtGi4rZm9/acdhelbzNBB5+z7oWzqeQdPMrLp65Lw=; b=ks0aeGmBi4cOlHSycs+3TjTsuJ
 6Dn6m7TYSOgnAVstRSEhoO6OrMMsQc/JgmXBgTDyDCKlPpzMlw1F1SemUEXgjbS4MN/tpaFjo/wLs
 KDmAdAyoA7JnwhC1+Qwy4YinYouxRqFX/6Q1eF7c4U1pxvtg4OTvWYf7rWrsZoEQ2MstZRpg/BJ3l
 X2PbCStivnI+ZBkRmkl4883mNut+hR4iYeaX0pbS35A68G9SzfIty4F1bd4JJbwNH1zOKCULcqiIA
 qXXkMsVqLplrxOFYDO9gFpRncPYlmXxOB3Xd1rHDp1M97XHOHdW7E84EoofPa5vrD0l4HRax/127O
 9xFgQaHQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEG-00EcKd-Jd
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:49:43 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE7-0001Gv-Ba; Tue, 18 May 2021 13:49:31 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-00015M-Dp; Tue, 18 May 2021 13:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:49:26 +0200
Message-Id: <20210518114929.12964-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114929.12964-1-s.hauer@pengutronix.de>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044940_664382_C3FFA108 
X-CRM114-Status: GOOD (  10.94  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/14] clk: Add Linux functions to register a divider
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
index 080aaa58a2..1b61a9edfb 100644
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
index 85242b3bbc..04dd4b0116 100644
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

