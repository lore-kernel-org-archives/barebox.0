Delivery-date: Tue, 08 Mar 2022 09:49:12 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRVWq-004SMd-7L
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 09:49:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRVWo-0005Vq-AK
	for lore@pengutronix.de; Tue, 08 Mar 2022 09:49:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zjeeuR7lAk2azUqvvy44PWIuIeRhgxcbQ97rUI4P3go=; b=Q11iR9DnYl/sEq
	MAM1vIiswdN8uS8p+Q0ubf/lHGTQjpCenNHpaujOmn4PTxoG7NalMajVTZRlAHcCRb3/7bsU/K9lZ
	GEgwlB2dx+jNRIhuvMAJWQFYm1P3adyGLhvQ1g8VAwrWfKuchctD4EQgxkQIhz05bxNl38oyLeoJH
	9IVn6Wu8Trbo2q5jjJFiU/XkGVDHsid8uEGeT0sSi78bv9CLfnihajMPkk//yyNrpvo1IQpmfOxvO
	qajy6ZwOyLn1d/XDf8Zibb9jTledBWnX1uTM4NeLO8YQh0t9/quuHal+Uf9bBHM1vMpnPXFzoyC+a
	SFtP7VT4gyzLbgdGCjhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRVVS-003KM1-7P; Tue, 08 Mar 2022 08:47:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRVVM-003KKy-Gp
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 08:47:42 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRVVL-0005Op-19; Tue, 08 Mar 2022 09:47:39 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nRVVK-00CmYY-I9; Tue, 08 Mar 2022 09:47:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Mar 2022 09:47:37 +0100
Message-Id: <20220308084737.3046543-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_004740_906980_72CDFCA5 
X-CRM114-Status: GOOD (  25.35  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] clk: Enable clk_bulk_* functions only with CONFIG_COMMON_CLK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some architectures have CONFIG_HAVE_CLK defined, but have their own
clk implementations instead of the generic one enabled with
CONFIG_COMMON_CLK. The clk_bulk_* static inline stubs are only enabled
with !CONFIG_HAVE_CLK. Trying to compile one of these architectures
fails with undefined references to the clk_bulk_* functions when they
are used, because they are not implemented on these architectures.
Instead of letting the compilation fail let the clk_bulk_* functions
depend on CONFIG_COMMON_CLk. This means these architectures compile
with the static inline stubs which is enough to let for example the
EHCI driver compile and work (because they don't need clks for the
EHCI).
Should one of these architectures really need working clk_bulk_*
functions it should be converted to the common clk framework.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/clk.h | 293 ++++++++++++++++++++++----------------------
 1 file changed, 149 insertions(+), 144 deletions(-)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 9bee204652..772126b313 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -62,63 +62,6 @@ struct clk_bulk_data {
  */
 struct clk *clk_get(struct device_d *dev, const char *id);
 
-/**
- * clk_bulk_get - lookup and obtain a number of references to clock producer.
- * @dev: device for clock "consumer"
- * @num_clks: the number of clk_bulk_data
- * @clks: the clk_bulk_data table of consumer
- *
- * This helper function allows drivers to get several clk consumers in one
- * operation. If any of the clk cannot be acquired then any clks
- * that were obtained will be freed before returning to the caller.
- *
- * Returns 0 if all clocks specified in clk_bulk_data table are obtained
- * successfully, or valid IS_ERR() condition containing errno.
- * The implementation uses @dev and @clk_bulk_data.id to determine the
- * clock consumer, and thereby the clock producer.
- * The clock returned is stored in each @clk_bulk_data.clk field.
- *
- * Drivers must assume that the clock source is not enabled.
- *
- * clk_bulk_get should not be called from within interrupt context.
- */
-int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
-			      struct clk_bulk_data *clks);
-
-/**
- * clk_bulk_get_optional - lookup and obtain a number of references to clock producer
- * @dev: device for clock "consumer"
- * @num_clks: the number of clk_bulk_data
- * @clks: the clk_bulk_data table of consumer
- *
- * Behaves the same as clk_bulk_get() except where there is no clock producer.
- * In this case, instead of returning -ENOENT, the function returns 0 and
- * NULL for a clk for which a clock producer could not be determined.
- */
-int __must_check clk_bulk_get_optional(struct device_d *dev, int num_clks,
-				       struct clk_bulk_data *clks);
-
-/**
- * clk_bulk_get_all - lookup and obtain all available references to clock
- *                    producer.
- * @dev: device for clock "consumer"
- * @clks: pointer to the clk_bulk_data table of consumer
- *
- * This helper function allows drivers to get all clk consumers in one
- * operation. If any of the clk cannot be acquired then any clks
- * that were obtained will be freed before returning to the caller.
- *
- * Returns a positive value for the number of clocks obtained while the
- * clock references are stored in the clk_bulk_data table in @clks field.
- * Returns 0 if there're none and a negative value if something failed.
- *
- * Drivers must assume that the clock source is not enabled.
- *
- * clk_bulk_get should not be called from within interrupt context.
- */
-int __must_check clk_bulk_get_all(struct device_d *dev,
-				  struct clk_bulk_data **clks);
-
 /**
  * clk_enable - inform the system when the clock source should be running.
  * @clk: clock source
@@ -129,18 +72,6 @@ int __must_check clk_bulk_get_all(struct device_d *dev,
  */
 int clk_enable(struct clk *clk);
 
-/**
- * clk_bulk_enable - inform the system when the set of clks should be running.
- * @num_clks: the number of clk_bulk_data
- * @clks: the clk_bulk_data table of consumer
- *
- * May be called from atomic contexts.
- *
- * Returns success (0) or negative errno.
- */
-int __must_check clk_bulk_enable(int num_clks,
-				 const struct clk_bulk_data *clks);
-
 /**
  * clk_disable - inform the system when the clock source is no longer required.
  * @clk: clock source
@@ -155,24 +86,6 @@ int __must_check clk_bulk_enable(int num_clks,
  */
 void clk_disable(struct clk *clk);
 
-/**
- * clk_bulk_disable - inform the system when the set of clks is no
- *		      longer required.
- * @num_clks: the number of clk_bulk_data
- * @clks: the clk_bulk_data table of consumer
- *
- * Inform the system that a set of clks is no longer required by
- * a driver and may be shut down.
- *
- * May be called from atomic contexts.
- *
- * Implementation detail: if the set of clks is shared between
- * multiple drivers, clk_bulk_enable() calls must be balanced by the
- * same number of clk_bulk_disable() calls for the clock source to be
- * disabled.
- */
-void clk_bulk_disable(int num_clks, const struct clk_bulk_data *clks);
-
 /**
  * clk_get_rate - obtain the current clock rate (in Hz) for a clock source.
  *		  This is only valid once the clock source has been enabled.
@@ -181,32 +94,6 @@ void clk_bulk_disable(int num_clks, const struct clk_bulk_data *clks);
 unsigned long clk_get_rate(struct clk *clk);
 unsigned long clk_hw_get_rate(struct clk_hw *hw);
 
-/**
- * clk_bulk_put	- "free" the clock source
- * @num_clks: the number of clk_bulk_data
- * @clks: the clk_bulk_data table of consumer
- *
- * Note: drivers must ensure that all clk_bulk_enable calls made on this
- * clock source are balanced by clk_bulk_disable calls prior to calling
- * this function.
- *
- * clk_bulk_put should not be called from within interrupt context.
- */
-void clk_bulk_put(int num_clks, struct clk_bulk_data *clks);
-
-/**
- * clk_bulk_put_all - "free" all the clock source
- * @num_clks: the number of clk_bulk_data
- * @clks: the clk_bulk_data table of consumer
- *
- * Note: drivers must ensure that all clk_bulk_enable calls made on this
- * clock source are balanced by clk_bulk_disable calls prior to calling
- * this function.
- *
- * clk_bulk_put_all should not be called from within interrupt context.
- */
-void clk_bulk_put_all(int num_clks, struct clk_bulk_data *clks);
-
 /*
  * The remaining APIs are optional for machine class support.
  */
@@ -291,46 +178,15 @@ static inline struct clk *clk_get(struct device_d *dev, const char *id)
 	return NULL;
 }
 
-static inline int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
-					    struct clk_bulk_data *clks)
-{
-	return 0;
-}
-
-static inline int __must_check clk_bulk_get_optional(struct device_d *dev,
-						     int num_clks,
-						     struct clk_bulk_data *clks)
-{
-	return 0;
-}
-
-static inline int __must_check clk_bulk_get_all(struct device_d *dev,
-						struct clk_bulk_data **clks)
-{
-	return 0;
-}
-
-static inline void clk_bulk_put(int num_clks, struct clk_bulk_data *clks) {}
-
-static inline void clk_bulk_put_all(int num_clks, struct clk_bulk_data *clks) {}
-
 static inline int clk_enable(struct clk *clk)
 {
 	return 0;
 }
 
-static inline int __must_check clk_bulk_enable(int num_clks, struct clk_bulk_data *clks)
-{
-	return 0;
-}
-
 static inline void clk_disable(struct clk *clk)
 {
 }
 
-static inline void clk_bulk_disable(int num_clks,
-				    struct clk_bulk_data *clks) {}
-
 static inline unsigned long clk_get_rate(struct clk *clk)
 {
 	return 0;
@@ -878,4 +734,153 @@ static inline void clk_unregister(struct clk *clk)
 {
 }
 
+#ifdef CONFIG_COMMON_CLK
+
+/**
+ * clk_bulk_get - lookup and obtain a number of references to clock producer.
+ * @dev: device for clock "consumer"
+ * @num_clks: the number of clk_bulk_data
+ * @clks: the clk_bulk_data table of consumer
+ *
+ * This helper function allows drivers to get several clk consumers in one
+ * operation. If any of the clk cannot be acquired then any clks
+ * that were obtained will be freed before returning to the caller.
+ *
+ * Returns 0 if all clocks specified in clk_bulk_data table are obtained
+ * successfully, or valid IS_ERR() condition containing errno.
+ * The implementation uses @dev and @clk_bulk_data.id to determine the
+ * clock consumer, and thereby the clock producer.
+ * The clock returned is stored in each @clk_bulk_data.clk field.
+ *
+ * Drivers must assume that the clock source is not enabled.
+ *
+ * clk_bulk_get should not be called from within interrupt context.
+ */
+int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
+			      struct clk_bulk_data *clks);
+
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
+/**
+ * clk_bulk_get_all - lookup and obtain all available references to clock
+ *                    producer.
+ * @dev: device for clock "consumer"
+ * @clks: pointer to the clk_bulk_data table of consumer
+ *
+ * This helper function allows drivers to get all clk consumers in one
+ * operation. If any of the clk cannot be acquired then any clks
+ * that were obtained will be freed before returning to the caller.
+ *
+ * Returns a positive value for the number of clocks obtained while the
+ * clock references are stored in the clk_bulk_data table in @clks field.
+ * Returns 0 if there're none and a negative value if something failed.
+ *
+ * Drivers must assume that the clock source is not enabled.
+ *
+ * clk_bulk_get should not be called from within interrupt context.
+ */
+int __must_check clk_bulk_get_all(struct device_d *dev,
+				  struct clk_bulk_data **clks);
+
+/**
+ * clk_bulk_put	- "free" the clock source
+ * @num_clks: the number of clk_bulk_data
+ * @clks: the clk_bulk_data table of consumer
+ *
+ * Note: drivers must ensure that all clk_bulk_enable calls made on this
+ * clock source are balanced by clk_bulk_disable calls prior to calling
+ * this function.
+ *
+ * clk_bulk_put should not be called from within interrupt context.
+ */
+void clk_bulk_put(int num_clks, struct clk_bulk_data *clks);
+
+/**
+ * clk_bulk_put_all - "free" all the clock source
+ * @num_clks: the number of clk_bulk_data
+ * @clks: the clk_bulk_data table of consumer
+ *
+ * Note: drivers must ensure that all clk_bulk_enable calls made on this
+ * clock source are balanced by clk_bulk_disable calls prior to calling
+ * this function.
+ *
+ * clk_bulk_put_all should not be called from within interrupt context.
+ */
+void clk_bulk_put_all(int num_clks, struct clk_bulk_data *clks);
+
+/**
+ * clk_bulk_enable - inform the system when the set of clks should be running.
+ * @num_clks: the number of clk_bulk_data
+ * @clks: the clk_bulk_data table of consumer
+ *
+ * May be called from atomic contexts.
+ *
+ * Returns success (0) or negative errno.
+ */
+int __must_check clk_bulk_enable(int num_clks,
+				 const struct clk_bulk_data *clks);
+
+/**
+ * clk_bulk_disable - inform the system when the set of clks is no
+ *		      longer required.
+ * @num_clks: the number of clk_bulk_data
+ * @clks: the clk_bulk_data table of consumer
+ *
+ * Inform the system that a set of clks is no longer required by
+ * a driver and may be shut down.
+ *
+ * May be called from atomic contexts.
+ *
+ * Implementation detail: if the set of clks is shared between
+ * multiple drivers, clk_bulk_enable() calls must be balanced by the
+ * same number of clk_bulk_disable() calls for the clock source to be
+ * disabled.
+ */
+void clk_bulk_disable(int num_clks, const struct clk_bulk_data *clks);
+
+#else
+static inline int __must_check clk_bulk_get(struct device_d *dev, int num_clks,
+					    struct clk_bulk_data *clks)
+{
+	return 0;
+}
+
+static inline int __must_check clk_bulk_get_optional(struct device_d *dev,
+						     int num_clks,
+						     struct clk_bulk_data *clks)
+{
+	return 0;
+}
+
+static inline int __must_check clk_bulk_get_all(struct device_d *dev,
+						struct clk_bulk_data **clks)
+{
+	return 0;
+}
+
+static inline void clk_bulk_put(int num_clks, struct clk_bulk_data *clks) {}
+
+static inline void clk_bulk_put_all(int num_clks, struct clk_bulk_data *clks) {}
+
+static inline int __must_check clk_bulk_enable(int num_clks, struct clk_bulk_data *clks)
+{
+	return 0;
+}
+
+static inline void clk_bulk_disable(int num_clks,
+				    struct clk_bulk_data *clks) {}
+
+#endif
+
 #endif
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

