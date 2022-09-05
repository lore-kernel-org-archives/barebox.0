Delivery-date: Mon, 05 Sep 2022 17:36:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE8m-007ei3-Pj
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:36:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVE8n-0001vt-2s
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:36:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OvYRNHP1beoA79K/+cFiPE/ueZ3ECiU8V0rLuz9DUM8=; b=Hmv9imsssmJw/+0tRitS85g/Ea
	kPeB8MrvO/MBhaA6NBG7FRZulQ5hFp7ybx5s+5DXvXo/5doqg8kV7CIoRUjKStSLEd+jArRIp5qUn
	WlotZQrUGU1/R/C7LJipxEEy8jLejMD+/wmbsTnr/xOmu51IzAhjYzC3Pg9kBfiH/JhoCcyXyqw+K
	dCU1RKbRAP3ArYvu+qJBkvD6Mgxg6Uf6UEhvgTwJOEZi3btHagdbMSk+imcF4W8OsXTtlSnQRgeZm
	WirxitIgpEc+Q+YxQAglPL5jOhTG2rVIfemCK+grIKB1ONjWUXnMTPmXIqi3MEHmpMPcGPrGp0fBn
	HrtEeyYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVE7A-006229-F6; Mon, 05 Sep 2022 15:34:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8ps-00H3jq-6z
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pq-0008Gf-Uu; Mon, 05 Sep 2022 11:56:06 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8po-0042GL-6f; Mon, 05 Sep 2022 11:56:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pl-002Wdf-TW; Mon, 05 Sep 2022 11:56:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:26 +0200
Message-Id: <20220905095557.596891-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_025609_335435_902ACA84 
X-CRM114-Status: GOOD (  10.71  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/32] clk: define stub implementation for clk_get_parent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To make it easier to build drivers utilizing clk_get_parent on sandbox
for static analysis, provide a stub implementation of the function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 42c64d650d1f..b18fc733843d 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -128,14 +128,6 @@ int clk_hw_set_rate(struct clk_hw *hw, unsigned long rate);
 int clk_set_parent(struct clk *clk, struct clk *parent);
 int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *hwp);
 
-/**
- * clk_get_parent - get the parent clock source for this clock
- * @clk: clock source
- *
- * Returns struct clk corresponding to parent clock source, or
- * valid IS_ERR() condition containing errno.
- */
-struct clk *clk_get_parent(struct clk *clk);
 struct clk_hw *clk_hw_get_parent(struct clk_hw *hw);
 
 int clk_set_phase(struct clk *clk, int degrees);
@@ -658,6 +650,14 @@ struct clk_hw *of_clk_hw_simple_get(struct of_phandle_args *clkspec, void *data)
 struct clk *of_clk_get(struct device_node *np, int index);
 struct clk *of_clk_get_by_name(struct device_node *np, const char *name);
 struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec);
+/**
+ * clk_get_parent - get the parent clock source for this clock
+ * @clk: clock source
+ *
+ * Returns struct clk corresponding to parent clock source, or
+ * valid IS_ERR() condition containing errno.
+ */
+struct clk *clk_get_parent(struct clk *clk);
 unsigned int of_clk_get_parent_count(struct device_node *np);
 int of_clk_parent_fill(struct device_node *np, const char **parents,
 		       unsigned int size);
@@ -717,6 +717,10 @@ static inline unsigned int of_clk_get_parent_count(struct device_node *np)
 {
 	return 0;
 }
+static inline struct clk *clk_get_parent(struct clk *clk)
+{
+	return ERR_PTR(-ENOENT);
+}
 static inline int of_clk_init(struct device_node *root,
 			      const struct of_device_id *matches)
 {
-- 
2.30.2



