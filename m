Delivery-date: Tue, 22 Apr 2025 10:39:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799z-003yan-0j
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799q-0002Hg-Vc
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gkeUOUrnWamdn2gDU/tMN60wKNLzoJmOJ4x3i7HUbhc=; b=fBvIX1BAeAZoPEFzqu6aFJQdXS
	93s0ds+3ax52kzemm0vFEStISjupZpVvlXGqTii+9jE3JY1Bx3rXADPZjiBjSs51bpxvJ8x1Gvsda
	xn4akGsHPwioZcfQ3Ta6mw/1SD8rTJ/HQuyCwnFCfJT6d33OxuIS1qNRG1/xnenbJ/mpgsyLE+Y5p
	BKMgN1VbQuAXs3WEELgEZTIgB36TG3y17f/5Ripa336LJCjX9GbbY+S/syCkr/9uiPnjDurjZdK/u
	RMmQwY9Nk7KFJXQRqZTS90UptpFZmpbv0Tt8aNszR+i5EqUUaGjrl1FJp4ly2K4tvID/nb3esEYSx
	0JVmo+Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7993-00000006MbP-2oHG;
	Tue, 22 Apr 2025 08:38:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Uh-00000006CRJ-1coY
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:56:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-0000i3-9x
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:56:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-001VwB-0L
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-000vQy-01
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:56:34 +0200
Message-Id: <20250422075637.220688-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075637.220688-1-a.fatoum@pengutronix.de>
References: <20250422075637.220688-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005639_444353_64EF9CD1 
X-CRM114-Status: GOOD (  11.23  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] clk: gate: underscore-prefix barebox-specific parent member
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The parent member is barebox-specific and is set internally on
registration, so make this clearer by making it "private".

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/clk/clk-gate.c | 4 ++--
 include/linux/clk.h    | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index d31920fd0bfe..1de9791499d9 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -72,13 +72,13 @@ struct clk *clk_gate_alloc(const char *name, const char *parent,
 {
 	struct clk_gate *g = xzalloc(sizeof(*g));
 
-	g->parent = parent;
+	g->_parent = parent;
 	g->reg = reg;
 	g->shift = shift;
 	g->hw.clk.ops = &clk_gate_ops;
 	g->hw.clk.name = name;
 	g->hw.clk.flags = flags;
-	g->hw.clk.parent_names = &g->parent;
+	g->hw.clk.parent_names = &g->_parent;
 	g->hw.clk.num_parents = 1;
 	g->flags = clk_gate_flags;
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 74802fde4572..9f4e97d37a3a 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -689,9 +689,9 @@ struct clk_gate {
 	struct clk_hw hw;
 	void __iomem *reg;
 	int shift;
-	const char *parent;
 	unsigned flags;
 	spinlock_t *lock;
+	const char *_parent;
 };
 
 int clk_gate_is_enabled(struct clk_hw *hw);
-- 
2.39.5



