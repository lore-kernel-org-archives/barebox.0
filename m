Delivery-date: Mon, 31 Jan 2022 08:59:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERaq-001TPR-0t
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 08:59:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERan-0005hq-Vl
	for lore@pengutronix.de; Mon, 31 Jan 2022 08:59:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FiLHTiEaj1FpQ87WF27hOemM1FE776rLRrDPlFBHps=; b=o576N3Gijwg9PR
	W1SDmsO1Txx9rz6a7ImlCLrHnvNlxVXP+tlkKoY60WW54FdT4FbPuI9FPE00BTHL0yhrXRNWdVNyV
	lu+V7bPMRymzKVQ4f9hvDzPPWJdcwtCj83x2oS9V7Cfj4rDTQ+Qv/c10EYc3IMBoc1bw+pxr2sGU5
	QFENcAhGu88CmW79NwvFCGY9Tyw1SXy/8zNioVFRjuTB6cTQLH1RFjKZrUe9y7RNFT9jmaMTQ4RUB
	wAhGjw5G1v4Qm9H92qFoknYSqSu2xQcsttrjiztyb6Z3vn4WHl75yAMR08gS6V8EpLPw8WmHZPprP
	KL0A3NW1dKrtonEveV7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERZU-008M5a-Nv; Mon, 31 Jan 2022 07:57:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERZ8-008LyE-PB
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 07:57:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ7-0005Dr-F6; Mon, 31 Jan 2022 08:57:33 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ6-007rHH-Iu; Mon, 31 Jan 2022 08:57:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 Jan 2022 08:57:15 +0100
Message-Id: <20220131075725.1873026-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
References: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_235734_873157_9A602257 
X-CRM114-Status: UNSURE (   9.95  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/12] clk: composite: add clk_hw registration functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Save users the hassle of opencoding by providing wrappers with the same
Linux semantics: names are duplicated, same arguments and struct clk_hw
is returned.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-composite.c | 25 +++++++++++++++++++++++++
 include/linux/clk.h         |  8 ++++++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 479ac5e8ef53..63056b769647 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -171,3 +171,28 @@ err:
 	kfree(composite);
 	return 0;
 }
+
+struct clk_hw *clk_hw_register_composite(struct device_d *dev,
+		const char *name, const char * const *parent_names,
+		int num_parents,
+		struct clk_hw *mux_hw, const struct clk_ops *mux_ops,
+		struct clk_hw *rate_hw, const struct clk_ops *rate_ops,
+		struct clk_hw *gate_hw, const struct clk_ops *gate_ops,
+		unsigned long flags)
+{
+	struct clk *clk;
+	mux_hw->clk.ops = mux_ops;
+	rate_hw->clk.ops = rate_ops;
+	gate_hw->clk.ops = gate_ops;
+
+	parent_names = memdup_array(parent_names, num_parents);
+	if (!parent_names)
+		return ERR_PTR(-ENOMEM);
+
+	clk = clk_register_composite(xstrdup(name), parent_names, num_parents,
+				      mux_hw ? &mux_hw->clk : NULL,
+				      rate_hw ? &rate_hw->clk : NULL,
+				      gate_hw ? &gate_hw->clk : NULL,
+				      flags);
+	return clk_to_clk_hw(clk);
+}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index ffc1ac8489b0..f4aa5c7c57f0 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -676,6 +676,14 @@ struct clk *clk_register_composite(const char *name,
 			struct clk *gate_clk,
 			unsigned long flags);
 
+struct clk_hw *clk_hw_register_composite(struct device_d *dev,
+		const char *name, const char * const *parent_names,
+		int num_parents,
+		struct clk_hw *mux_hw, const struct clk_ops *mux_ops,
+		struct clk_hw *rate_hw, const struct clk_ops *rate_ops,
+		struct clk_hw *gate_hw, const struct clk_ops *gate_ops,
+		unsigned long flags);
+
 static inline const char *clk_hw_get_name(struct clk_hw *hw)
 {
 	return hw->clk.name;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

