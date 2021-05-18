Delivery-date: Tue, 18 May 2021 13:51:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyGF-0004Dk-Fm
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:51:43 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyGC-0002E1-SV
	for lore@pengutronix.de; Tue, 18 May 2021 13:51:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6h1dhOX/plpVjCZ+eThNHRTfKeO7KbyFFzlCFqhkfFc=; b=lUWXWMq7sls/yt+cLaZFUv5rS
	Md+bzsfk5YHkGHel3HdXmgLdUJ4T7CFcDFYpIPjj+qTlp3JUFUf4JNphlp+yruzbD7frVfnCN2NCT
	Q2/bonCxprs3Tyf3ARKQmrQN9l/45DdTV/+kungiVCRoRpUl/h7taQ7m9enxRsPLO/MjqKZb1S9Eh
	mV8WLLHJpG1lhidWYbrY1+xxM/NWcKnbd4mIq2ffYA9yUTmMx7omgJZUp5Zsryz3Q8cOYQmF0keB8
	K4q1Q0N/w4xxxXqTKfd2ZvzmFVZI7m0DHRNXSz9WE4IClwlX2w19IOynX2/ElB8x/DFXi1420Iudp
	eVtvGOVsA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyFB-000dzE-Mb; Tue, 18 May 2021 11:50:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyED-000dd0-EM
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:49:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=8X9rxsYZZTgJAt2cqpNstCOxpgN9mC5JF0jj6Qi2PoE=; b=hFu6PATZgLbn3r/R5ct5Md66NN
 /pDAsHTZZkpuiDYt+KvOOyZEA8aA8TN6Xr4GWM67iupGB9KBKonrLt7zK/Givl/WdB1rFsmRgIU4+
 3LbqRRwh6IaHy2zJ/YStTtEupPIJhHUXCzN1Za5Yx5fuOUQ/SBEcBKJBgZjdFlgJB9ntxhO30QPIr
 Ao07i5TJBvax3/QE/oftlXFWJ8PM801717KgHPkBZwIIxjAxRwYkZVu2GXwJGlO+FP7fvFY+E5uY1
 w9qCQ4xE/bdHjzDIQCJ/qDHPJ7TOtfqSUmETGO94u/udjCWx8kjwgrOvFoTT62uOdADR9Fe2FRiIu
 NZFZBgAA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyE8-00EcHj-NW
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:49:36 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE7-0001Gy-GS; Tue, 18 May 2021 13:49:31 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-00015W-FA; Tue, 18 May 2021 13:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:49:29 +0200
Message-Id: <20210518114929.12964-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114929.12964-1-s.hauer@pengutronix.de>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044932_799567_9FDD75C8 
X-CRM114-Status: GOOD (  10.73  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/14] clk: Add Linux functions to register a mux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux has clk_register_mux(). Add the same function with the same
prototype for barebox to ease code porting from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-mux.c | 10 ++++++++++
 include/linux/clk.h   |  5 +++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 43d2f70180..10b2a85c8a 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -99,3 +99,13 @@ struct clk *clk_mux(const char *name, unsigned clk_flags, void __iomem *reg,
 
 	return m;
 }
+
+struct clk *clk_register_mux(struct device_d *dev, const char *name,
+		const char * const *parent_names, u8 num_parents,
+		unsigned long flags,
+		void __iomem *reg, u8 shift, u8 width,
+		u8 clk_mux_flags, spinlock_t *lock)
+{
+	return clk_mux(name, flags, reg, shift, width, parent_names,
+		       num_parents, clk_mux_flags);
+}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 0dddfbff9e..3f205d6fb1 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -589,6 +589,11 @@ void clk_mux_free(struct clk *clk_mux);
 struct clk *clk_mux(const char *name, unsigned clk_flags, void __iomem *reg,
 		    u8 shift, u8 width, const char * const *parents,
 		    u8 num_parents, unsigned mux_flags);
+struct clk *clk_register_mux(struct device_d *dev, const char *name,
+		const char * const *parent_names, u8 num_parents,
+		unsigned long flags,
+		void __iomem *reg, u8 shift, u8 width,
+		u8 clk_mux_flags, spinlock_t *lock);
 
 struct clk_gate {
 	struct clk_hw hw;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

