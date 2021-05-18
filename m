Delivery-date: Tue, 18 May 2021 13:51:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyFf-0004BT-6p
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:51:07 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyFe-0001pL-AA
	for lore@pengutronix.de; Tue, 18 May 2021 13:51:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x+xJhhITLlaRwvHIslvwImSQ3n1K0q+qiPwlEaZR2eY=; b=kLgr7tms4EwSFIItMzeicm/KQ
	koXPCG6ceLGHXPxJYkh1zXQ4mfkp4WGPUeGlW8kaNjRnYOY8WAXgRGdKEWHKhH/w4PBTh7swZE3ja
	DwKlVi4f8xpHeLncIW+qemFrS16zmSOObIIWtRJ9fsGcvCGtZ1x3TIblaT6bQJVAq7adC6D/uOVuu
	wBqBc6rJULwFwwOdAbhy9zzgGcfafES5F92oc+kjE0UlGzJxmurd7vketmAnTME6zgnn2L5mqsR6/
	0DxhGaNDgsjCIHlcNqTi9Fp7t3sLfKy7vGs9sSdX3FYj97VwVcr/ag8cNEqnvCXrJWuz0L1/hQ2Sa
	XT2wTqTUw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyEh-000dlb-Ui; Tue, 18 May 2021 11:50:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEB-000dc8-0R
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:49:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=wTT3UORfhY0Wq1UDwjwNkWuw5s2RLuTIUybnNxGgbQg=; b=XVZ2QnsP3w5BxmWJcPgsAGMhmk
 MjFHbNvjkPkMMMYJaMLioHmYXKU/xrvgocoJD+iIElAnYKB7DN4uStjJSqH1reArn2dESMnlIyANY
 FKImnWyTUKy22Qm4oj56QOYVB3p2KT6qGpXvEpUEqx2BlIdUwuFHAJG/BQcU/EiMCcSYbauwJpZ4X
 eZdi1AooliuKGWlDM1ANDzhZXYy89Lfn0PBz5G1/np0K6TSZRE2go8k1hN69Ep47W5BRtMLSf994f
 4Au4bgyt3quAhqKuyNf5PMktgKO9s1UDwKpJKzB2WptCGGUBXD1jgy6YGZxA4kfL7HeL5Uj2HJuLf
 L4u5lbmg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyE8-00EcHb-DY
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:49:33 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE7-0001Gp-3S; Tue, 18 May 2021 13:49:31 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-000154-B8; Tue, 18 May 2021 13:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:49:20 +0200
Message-Id: <20210518114929.12964-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114929.12964-1-s.hauer@pengutronix.de>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044932_483277_B3A8E9A3 
X-CRM114-Status: GOOD (  12.24  )
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
Subject: [PATCH 05/14] clk: divider: Add ro ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Linux version of the clk divider exports a clk_divider_ro_ops. Do
the same for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-divider.c | 4 ++++
 include/linux/clk.h       | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index edbba941b7..080aaa58a2 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -302,6 +302,10 @@ struct clk_ops clk_divider_ops = {
 	.round_rate = clk_divider_round_rate,
 };
 
+struct clk_ops clk_divider_ro_ops = {
+	.recalc_rate = clk_divider_recalc_rate,
+};
+
 struct clk *clk_divider_alloc(const char *name, const char *parent,
 			      unsigned clk_flags, void __iomem *reg, u8 shift,
 			      u8 width, unsigned div_flags)
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 654845023a..d0bcdd7ac3 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -451,6 +451,7 @@ struct clk_divider {
 #define CLK_MUX_READ_ONLY		(1 << 3) /* mux can't be changed */
 
 extern struct clk_ops clk_divider_ops;
+extern struct clk_ops clk_divider_ro_ops;
 
 unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
 		unsigned int val,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

