Delivery-date: Tue, 18 May 2021 13:52:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyGc-0004EU-KA
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:52:06 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyGa-0002RN-RT
	for lore@pengutronix.de; Tue, 18 May 2021 13:52:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fv1KyZ6QWelAOQJd3F/cuqX6UwWH2AIUNQWs7y8lVLE=; b=gASj2ftdy0Gmhd82PmCROL3Hl
	FLByXLRu2dkRSrnmwzlytdomr0elLEXDyMuigQTULPUeF/ZmSjAuGpf0r+FF/gJCmOcpOm77B8nHf
	zeiSiZ6YXyy0zvKj8k41kMH1JvwN4QTNHbIHIykZWtkd9GgzLoPKavf1rv9O0H4q1QNwsFSIQ3Kry
	ivAmZ4GgxoGsc7bx0hHi2Hs2Y77ofNz/RBFIaW43zDveYsp+8/l7tHRbBDeyjFVOhtzwlKVOYr1sb
	plwkQyIvR+m46g/fA7c2xhy88WXaQpP1dT5r+WORxfpWPFPRaSYP7FhE+w9/tnCqnlbqKwZAkfvcy
	C94QG5W3A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyFX-000eGe-1Y; Tue, 18 May 2021 11:50:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEI-000dfF-S1
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=tZKalewRlDKi+XGYMkO8CaM1hRkyi6ONZqEFPMPQtow=; b=t1P7FYnOMHW4Mw2lyfNvky8gj5
 IaeQ5MCzrBQtdAAdJsT8otryl/tZWEmRYtWp/D47aAMj2a93REQ45Zd0c1Ej94PWfHfftFr0BAUHs
 xAAqU9zbV28CaZkJRAQL3l0ONdv9lSzZZLzTyICFQhF/WnVyb/i92uSDLB4iK6YDUL+w7csN7Wvbe
 yrC+cZhnHQ8xUTPWq83EHY0Ystly1K49SphUy0f+YJKKhs9j2GSiSIBMDM+XTEmgrdPgRgDy2jxLh
 nk7r/Y/wwuAuPzm3pdLsDnxTlm2btJ+k6DHa5g49jsTkWbniceWMs131/79IY+GpGUmxM6vThhTVl
 jVNeKOyw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEG-00EcKa-Cm
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:49:41 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE7-0001Gl-41; Tue, 18 May 2021 13:49:31 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-00014s-8O; Tue, 18 May 2021 13:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:49:16 +0200
Message-Id: <20210518114929.12964-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114929.12964-1-s.hauer@pengutronix.de>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044940_446650_B8947C20 
X-CRM114-Status: GOOD (  12.45  )
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
Subject: [PATCH 01/14] clk: introduce clk init op
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c   | 12 ++++++++++++
 include/linux/clk.h |  1 +
 2 files changed, 13 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index b04d44593b..fb5bf57e4b 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -261,6 +261,7 @@ struct clk *clk_get_parent(struct clk *clk)
 int clk_register(struct clk *clk)
 {
 	struct clk *c;
+	int ret;
 
 	list_for_each_entry(c, &clks, list) {
 		if (!strcmp(c->name, clk->name)) {
@@ -274,10 +275,21 @@ int clk_register(struct clk *clk)
 
 	list_add_tail(&clk->list, &clks);
 
+	if (clk->ops->init) {
+		ret = clk->ops->init(clk);
+		if (ret)
+			goto out;
+	}
+
 	if (clk->flags & CLK_IS_CRITICAL)
 		clk_enable(clk);
 
 	return 0;
+out:
+	list_del(&clk->list);
+	free(clk->parents);
+
+	return ret;
 }
 
 int clk_is_enabled(struct clk *clk)
diff --git a/include/linux/clk.h b/include/linux/clk.h
index c49fe9a54c..5d05ffd1b3 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -336,6 +336,7 @@ static inline void clk_put(struct clk *clk)
 #define CLK_GATE_HIWORD_MASK	(1 << 1)
 
 struct clk_ops {
+	int 		(*init)(struct clk *clk);
 	int		(*enable)(struct clk *clk);
 	void		(*disable)(struct clk *clk);
 	int		(*is_enabled)(struct clk *clk);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

