Delivery-date: Sun, 20 Feb 2022 13:49:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlel-004wtE-B2
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:49:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlei-0001MD-6F
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:49:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knN06YrmCthjRKthA+0dlm4+UNxH1F7UMWQZRmZvWb4=; b=QOanaRCg7MeRiS
	h1by/iOMM3XnAaNKcW0WyldGNex0EepfypjPiThm9Frd7ztFUNegAFCbPOyZ+2C+r3jIsEUxg2vPK
	tp4+w8uy0OiI8ucFoZSf6YutQqs03ZpYGsLRBj1BqFCu3KgqzgwD58oBck1XxNOqdtMJrif2Wfe+o
	W4+0jLsrcHXzYJTBjvtNS0UXpthraM2UF/b9+tJRU+AUK0lptmAq3Sl9U7bXJQVMPjK0YqIDGPIrn
	pfkswNk/BhrIqJos6f4qmp2FvulADzll5rviqLVwPXtpIiNpGZCBfphWRdp6Xxt+rCytZVU/+e1df
	JW5q404BXh7F3v+HW/pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLld7-001I6W-EM; Sun, 20 Feb 2022 12:47:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLlcw-001I19-JL
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000aB-MQ; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcr-00CoQ9-Ez; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:30 +0100
Message-Id: <20220220124736.3052502-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044746_668458_7C4FAC86 
X-CRM114-Status: GOOD (  10.39  )
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
Subject: [PATCH 18/24] clk: implement of_clk_hw_{onecell,simple}_get
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These functions are easily implemented and make porting code easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk.c   | 22 ++++++++++++++++++++++
 include/linux/clk.h | 17 +++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 227ab75ed65d..8e317b4b05d0 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -578,6 +578,12 @@ struct clk *of_clk_src_simple_get(struct of_phandle_args *clkspec,
 }
 EXPORT_SYMBOL_GPL(of_clk_src_simple_get);
 
+struct clk_hw *of_clk_hw_simple_get(struct of_phandle_args *clkspec, void *data)
+{
+	return data;
+}
+EXPORT_SYMBOL_GPL(of_clk_hw_simple_get);
+
 struct clk *of_clk_src_onecell_get(struct of_phandle_args *clkspec, void *data)
 {
 	struct clk_onecell_data *clk_data = data;
@@ -592,6 +598,22 @@ struct clk *of_clk_src_onecell_get(struct of_phandle_args *clkspec, void *data)
 }
 EXPORT_SYMBOL_GPL(of_clk_src_onecell_get);
 
+struct clk_hw *
+of_clk_hw_onecell_get(struct of_phandle_args *clkspec, void *data)
+{
+	struct clk_hw_onecell_data *hw_data = data;
+	unsigned int idx = clkspec->args[0];
+
+	if (idx >= hw_data->num) {
+		pr_err("%s: invalid index %u\n", __func__, idx);
+		return ERR_PTR(-EINVAL);
+	}
+
+	return hw_data->hws[idx];
+}
+EXPORT_SYMBOL_GPL(of_clk_hw_onecell_get);
+
+
 static int __of_clk_add_provider(struct device_node *np,
 			struct clk *(*clk_src_get)(struct of_phandle_args *clkspec,
 						   void *data),
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 9396e01003e1..c0e998e54ae6 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -778,6 +778,11 @@ struct clk_onecell_data {
 	unsigned int clk_num;
 };
 
+struct clk_hw_onecell_data {
+	unsigned int num;
+	struct clk_hw *hws[];
+};
+
 #if defined(CONFIG_COMMON_CLK_OF_PROVIDER)
 
 #define CLK_OF_DECLARE(name, compat, fn)				\
@@ -791,6 +796,8 @@ typedef int (*of_clk_init_cb_t)(struct device_node *);
 
 struct clk *of_clk_src_onecell_get(struct of_phandle_args *clkspec, void *data);
 struct clk *of_clk_src_simple_get(struct of_phandle_args *clkspec, void *data);
+struct clk_hw *of_clk_hw_onecell_get(struct of_phandle_args *clkspec, void *data);
+struct clk_hw *of_clk_hw_simple_get(struct of_phandle_args *clkspec, void *data);
 
 struct clk *of_clk_get(struct device_node *np, int index);
 struct clk *of_clk_get_by_name(struct device_node *np, const char *name);
@@ -826,11 +833,21 @@ static inline struct clk *of_clk_src_onecell_get(struct of_phandle_args *clkspec
 {
 	return ERR_PTR(-ENOENT);
 }
+static inline struct clk_hw *of_clk_hw_onecell_get(struct of_phandle_args *clkspec,
+						 void *data)
+{
+	return ERR_PTR(-ENOENT);
+}
 static inline struct clk *
 of_clk_src_simple_get(struct of_phandle_args *clkspec, void *data)
 {
 	return ERR_PTR(-ENOENT);
 }
+static inline struct clk *
+of_clk_hw_simple_get(struct of_phandle_args *clkspec, void *data)
+{
+	return ERR_PTR(-ENOENT);
+}
 static inline struct clk *of_clk_get(struct device_node *np, int index)
 {
 	return ERR_PTR(-ENOENT);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

