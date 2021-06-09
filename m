Delivery-date: Wed, 09 Jun 2021 14:30:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqxLX-0000hD-UB
	for lore@lore.pengutronix.de; Wed, 09 Jun 2021 14:30:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqxLW-0002PI-8b
	for lore@pengutronix.de; Wed, 09 Jun 2021 14:30:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zl7uopOqvghwXDzmk7W8iBBhrbNE2RJrkJTZHhGE2Bo=; b=VoGZhCCuBx2b4O
	9hKG990+44/DP5kv808Lj89bwTzoOwmYJhc1P0wDX7kslTWwnrjOdfFTmCJDTyB+KAq7Fc6I2niOJ
	s8eLhGPZk6EVxL3VPJ7Z/eRwyBGsinXG0vDg+wla0Xwt2JcWMihcePdwEucyhZGl16BBeE8gev+Rg
	pHRbDX2JdazbTPkfMauB6EOTrhtE1rYq6W8HAhrr6yiShh2xivBI8e1lijyyYts4ZDIB4Tkwc6uLI
	SVRT7fuKrDaqp/u20YrNB+euN+2XYNVViiwOJM8DA1Gg7GCcAU3C/vK99vVkaxbxIR+1lYOaOM3ep
	eoqzLe58u+6bnik2c5lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqxJx-00DgQ8-H8; Wed, 09 Jun 2021 12:28:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqwlr-00DTBv-40
 for barebox@lists.infradead.org; Wed, 09 Jun 2021 11:53:20 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqwlp-00055P-QP; Wed, 09 Jun 2021 13:53:17 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqwlp-0003ZZ-Hi; Wed, 09 Jun 2021 13:53:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  9 Jun 2021 13:53:16 +0200
Message-Id: <20210609115316.13627-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210609_045319_209543_70BA31ED 
X-CRM114-Status: GOOD (  15.11  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clk: implement clk_bulk_get_optional()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-bulk.c | 25 ++++++++++++++++++++++---
 include/linux/clk.h    | 20 ++++++++++++++++++++
 2 files changed, 42 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/clk-bulk.c b/drivers/clk/clk-bulk.c
index b8db60dcbc..0a0d0f2cb2 100644
--- a/drivers/clk/clk-bulk.c
+++ b/drivers/clk/clk-bulk.c
@@ -23,8 +23,9 @@ void clk_bulk_put(int num_clks, struct clk_bulk_data *clks)
 }
 EXPORT_SYMBOL_GPL(clk_bulk_put);
 
-int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
-			      struct clk_bulk_data *clks)
+static int __clk_bulk_get(struct device_d *dev, int num_clks,
+			      struct clk_bulk_data *clks,
+			      bool optional)
 {
 	int ret;
 	int i;
@@ -36,10 +37,15 @@ int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
 		clks[i].clk = clk_get(dev, clks[i].id);
 		if (IS_ERR(clks[i].clk)) {
 			ret = PTR_ERR(clks[i].clk);
+			clks[i].clk = NULL;
+
+			if (ret == -ENOENT && optional)
+				continue;
+
 			if (ret != -EPROBE_DEFER)
 				dev_err(dev, "Failed to get clk '%s': %d\n",
 					clks[i].id, ret);
-			clks[i].clk = NULL;
+
 			goto err;
 		}
 	}
@@ -51,8 +57,21 @@ err:
 
 	return ret;
 }
+
+int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
+			      struct clk_bulk_data *clks)
+{
+	return __clk_bulk_get(dev, num_clks, clks, false);
+}
 EXPORT_SYMBOL(clk_bulk_get);
 
+int __must_check clk_bulk_get_optional(struct device_d *dev, int num_clks,
+				       struct clk_bulk_data *clks)
+{
+	return __clk_bulk_get(dev, num_clks, clks, true);
+}
+EXPORT_SYMBOL(clk_bulk_get_optional);
+
 static int __must_check of_clk_bulk_get(struct device_node *np, int num_clks,
 					struct clk_bulk_data *clks)
 {
diff --git a/include/linux/clk.h b/include/linux/clk.h
index c49fe9a54c..134585f371 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -82,6 +82,19 @@ struct clk *clk_get(struct device_d *dev, const char *id);
 int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
 			      struct clk_bulk_data *clks);
 
+/**
+ * clk_bulk_get_optional - lookup and obtain a number of references to clock producer
+ * @dev: device for clock "consumer"
+ * @num_clks: the number of clk_bulk_data
+ * @clks: the clk_bulk_data table of consumer
+ *
+ * Behaves the same as clk_bulk_get() except where there is no clock producer.
+ * In this case, instead of returning -ENOENT, the function returns 0 and
+ * NULL for a clk for which a clock producer could not be determined.
+ */
+int __must_check clk_bulk_get_optional(struct device_d *dev, int num_clks,
+				       struct clk_bulk_data *clks);
+
 /**
  * clk_bulk_get_all - lookup and obtain all available references to clock
  *                    producer.
@@ -274,6 +287,13 @@ static inline int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
 	return 0;
 }
 
+static inline int __must_check clk_bulk_get_optional(struct device_d *dev,
+						     int num_clks,
+						     struct clk_bulk_data *clks)
+{
+	return 0;
+}
+
 static inline int __must_check clk_bulk_get_all(struct device_d *dev,
 						struct clk_bulk_data **clks)
 {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

