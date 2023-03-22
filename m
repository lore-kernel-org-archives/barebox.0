Delivery-date: Wed, 22 Mar 2023 09:33:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1petuv-00AE0Q-Uw
	for lore@lore.pengutronix.de; Wed, 22 Mar 2023 09:33:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1petus-0001iW-I2
	for lore@pengutronix.de; Wed, 22 Mar 2023 09:33:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xNsOcb0MIBySKV/PsHYWLUHjZQyBUlRNS2WeHxMKl1I=; b=WwSqbPjZaLVvLrZ2r9Y8K5rGFK
	9h3J3b5+yMGpE/CV4hiAWc0DyOIU2aTrNRGpaEQjYcn8xFz9b5FALRRXEbM07RZxLY8nr1SLTzvPp
	/JqGjs6+Qzz8py+eDTy3h+953tC4DFqNVFJu7Yg2yGo88O2ufGBg/jJo/PDG6BHPgpw5gIxJzzTsq
	xUa63XQgn8d0rcyn0YixJZ5jWl9it1HmrYZyOTEM+vEWM2Fkad60qcWYYkrtYae5BN2BzdYb7Bsn+
	5U6WbkQg1eThjr6AaHN1JiQ+cdxyPnE0tMmChDjc56c7hOsaNvznPxbIfVrImfBkWAoAX7C5axhgp
	0dKeYNTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pettv-00FCFf-0D;
	Wed, 22 Mar 2023 08:32:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1petto-00FCDG-35
	for barebox@lists.infradead.org;
	Wed, 22 Mar 2023 08:32:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pettn-0001Sh-MK; Wed, 22 Mar 2023 09:32:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pettn-005sSX-1h; Wed, 22 Mar 2023 09:32:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pettm-001D9v-4s; Wed, 22 Mar 2023 09:32:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 22 Mar 2023 09:32:43 +0100
Message-Id: <20230322083245.251340-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230322083245.251340-1-s.hauer@pengutronix.de>
References: <20230322083245.251340-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_013249_011729_2DA34F18 
X-CRM114-Status: GOOD (  18.05  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] clk: of: drop arguments from of_clk_init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_clk_init() should be used to register clock drivers declared with
CLK_OF_DECLARE and nothing else, so there shouldn't be a need to call
it with a non NULL "matches" argument.

Also there is no point in calling this function with another device tree
than the barebox live tree.

Drop both arguments.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c   | 10 +++-------
 drivers/of/base.c   |  2 +-
 include/linux/clk.h |  5 ++---
 3 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 30fe43032b..c7ee6878c2 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -849,28 +849,24 @@ static int parent_ready(struct device_node *np)
 
 /**
  * of_clk_init() - Scan and init clock providers from the DT
- * @root: parent of the first level to probe or NULL for the root of the tree
- * @matches: array of compatible values and init functions for providers.
  *
  * This function scans the device tree for matching clock providers and
  * calls their initialization functions
  *
  * Returns 0 on success, < 0 on failure.
  */
-int of_clk_init(struct device_node *root, const struct of_device_id *matches)
+int of_clk_init(void)
 {
+	struct device_node *root = of_get_root_node();
+	const struct of_device_id *matches = __clk_of_table_start;
 	struct clock_provider *clk_provider, *next;
 	bool is_init_done;
 	bool force = false;
 	LIST_HEAD(clk_provider_list);
 	const struct of_device_id *match;
 
-	if (!root)
-		root = of_find_node_by_path("/");
 	if (!root)
 		return -EINVAL;
-	if (!matches)
-		matches = __clk_of_table_start;
 
 	/* First prepare the list of the clocks providers */
 	for_each_matching_node_and_match(root, matches, &match) {
diff --git a/drivers/of/base.c b/drivers/of/base.c
index ea4be9c512..acebba29a1 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1757,7 +1757,7 @@ int barebox_register_of(struct device_node *root)
 	of_fix_tree(root);
 
 	if (IS_ENABLED(CONFIG_OFDEVICE)) {
-		of_clk_init(root, NULL);
+		of_clk_init();
 		if (!deep_probe_is_supported())
 			return of_probe();
 	}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index bffed2bdcf..29c697a00b 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -686,7 +686,7 @@ struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec);
 unsigned int of_clk_get_parent_count(struct device_node *np);
 int of_clk_parent_fill(struct device_node *np, const char **parents,
 		       unsigned int size);
-int of_clk_init(struct device_node *root, const struct of_device_id *matches);
+int of_clk_init(void);
 int of_clk_add_provider(struct device_node *np,
 			struct clk *(*clk_src_get)(struct of_phandle_args *args,
 						   void *data),
@@ -742,8 +742,7 @@ static inline unsigned int of_clk_get_parent_count(struct device_node *np)
 {
 	return 0;
 }
-static inline int of_clk_init(struct device_node *root,
-			      const struct of_device_id *matches)
+static inline int of_clk_init(void)
 {
 	return 0;
 }
-- 
2.30.2



