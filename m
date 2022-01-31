Delivery-date: Mon, 31 Jan 2022 09:00:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERc6-001TVi-QB
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 09:00:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERc5-0006Kb-6q
	for lore@pengutronix.de; Mon, 31 Jan 2022 09:00:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8opMPNg3hzDzeteu64vtjI39EyuZj0Y0OeO9AsPKHk=; b=mjnsY3XkSp6Pta
	b6FbMG7VXjwiyyt6UWxWq1Xhge0cdIp85jIPTSfOwwa9APstTvR19zXGyuHeITZKCtW4eljuOTKF2
	ZehYgzsdvQU+jVxOjFDcX1RfvR5sDmAJixV4EL0pV2opAJqH1R5o/nO9TPOyGldoSj/Wbb9z5wk1t
	/nUgqvgCFuDPJuM5m5TYLoCap3rUqAVuB0WpIDgt+/91IFJT/j3kaoYZntVr2cb8GUiiSHht+1R3J
	usPz738QxxfPeFk/OfRnja9t9CBqQlJR4OTia06OGELor0lKQ/dSmJeELt22tiHJeRyOtEbi6jMsq
	Z8dcfWNcGBjsHhdamYBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERad-008MdB-Rc; Mon, 31 Jan 2022 07:59:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERZH-008M2c-1G
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 07:57:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ7-0005Dy-FP; Mon, 31 Jan 2022 08:57:33 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ6-007rHc-Oi; Mon, 31 Jan 2022 08:57:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 Jan 2022 08:57:22 +0100
Message-Id: <20220131075725.1873026-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
References: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_235743_161743_D0FE67B0 
X-CRM114-Status: GOOD (  13.31  )
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
Subject: [PATCH 09/12] clk: implement of_clk_add_hw_provider
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

New Linux drivers rather use of_clk_add_hw_provider, so port it over.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk.c   | 43 ++++++++++++++++++++++++++++++++++---------
 include/linux/clk.h | 13 +++++++++++++
 2 files changed, 47 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 18373edbe40d..227ab75ed65d 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -561,6 +561,7 @@ struct of_clk_provider {
 
 	struct device_node *node;
 	struct clk *(*get)(struct of_phandle_args *clkspec, void *data);
+	struct clk_hw *(*get_hw)(struct of_phandle_args *clkspec, void *data);
 	void *data;
 };
 
@@ -591,15 +592,11 @@ struct clk *of_clk_src_onecell_get(struct of_phandle_args *clkspec, void *data)
 }
 EXPORT_SYMBOL_GPL(of_clk_src_onecell_get);
 
-/**
- * of_clk_add_provider() - Register a clock provider for a node
- * @np: Device node pointer associated with clock provider
- * @clk_src_get: callback for decoding clock
- * @data: context pointer for @clk_src_get callback.
- */
-int of_clk_add_provider(struct device_node *np,
+static int __of_clk_add_provider(struct device_node *np,
 			struct clk *(*clk_src_get)(struct of_phandle_args *clkspec,
 						   void *data),
+			struct clk_hw *(*clk_hw_src_get)(struct of_phandle_args *clkspec,
+						   void *data),
 			void *data)
 {
 	struct of_clk_provider *cp;
@@ -611,6 +608,7 @@ int of_clk_add_provider(struct device_node *np,
 	cp->node = np;
 	cp->data = data;
 	cp->get = clk_src_get;
+	cp->get_hw = clk_hw_src_get;
 
 	list_add(&cp->link, &of_clk_providers);
 	pr_debug("Added clock from %s\n", np ? np->full_name : "<none>");
@@ -619,8 +617,31 @@ int of_clk_add_provider(struct device_node *np,
 
 	return 0;
 }
+
+/**
+ * of_clk_add_provider() - Register a clock provider for a node
+ * @np: Device node pointer associated with clock provider
+ * @clk_src_get: callback for decoding clock
+ * @data: context pointer for @clk_src_get callback.
+ */
+int of_clk_add_provider(struct device_node *np,
+			struct clk *(*clk_src_get)(struct of_phandle_args *clkspec,
+						   void *data),
+			void *data)
+{
+	return __of_clk_add_provider(np, clk_src_get, NULL, data);
+}
 EXPORT_SYMBOL_GPL(of_clk_add_provider);
 
+int of_clk_add_hw_provider(struct device_node *np,
+			struct clk_hw *(*clk_hw_src_get)(struct of_phandle_args *clkspec,
+							 void *data),
+			void *data)
+{
+	return __of_clk_add_provider(np, NULL, clk_hw_src_get, data);
+}
+EXPORT_SYMBOL_GPL(of_clk_add_hw_provider);
+
 /**
  * of_clk_del_provider() - Remove a previously registered clock provider
  * @np: Device node pointer associated with clock provider
@@ -649,8 +670,12 @@ struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
 
 	/* Check if we have such a provider in our array */
 	list_for_each_entry(provider, &of_clk_providers, link) {
-		if (provider->node == clkspec->np)
-			clk = provider->get(clkspec, provider->data);
+		if (provider->node == clkspec->np) {
+			if (provider->get)
+				clk = provider->get(clkspec, provider->data);
+			else
+				clk = clk_hw_to_clk(provider->get_hw(clkspec, provider->data));
+		}
 		if (!IS_ERR(clk))
 			break;
 	}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 0aa29c4720fe..94ac7f288ad7 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -783,6 +783,11 @@ int of_clk_add_provider(struct device_node *np,
 						   void *data),
 			void *data);
 
+int of_clk_add_hw_provider(struct device_node *np,
+			struct clk_hw *(*clk_hw_src_get)(struct of_phandle_args *clkspec,
+							 void *data),
+			void *data);
+
 static inline unsigned int clk_hw_get_num_parents(const struct clk_hw *hw)
 {
 	return hw->clk.num_parents;
@@ -835,6 +840,14 @@ static inline int of_clk_add_provider(struct device_node *np,
 {
 	return 0;
 }
+
+static inline int of_clk_add_hw_provider(struct device_node *np,
+			struct clk_hw *(*clk_hw_src_get)(struct of_phandle_args *clkspec,
+							 void *data),
+			void *data)
+{
+	return 0;
+}
 #endif
 
 #define CLK_OF_DECLARE_DRIVER(name, compat, fn) CLK_OF_DECLARE(name, compat, fn)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

