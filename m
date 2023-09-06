Delivery-date: Wed, 06 Sep 2023 15:41:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdsmJ-0061S6-By
	for lore@lore.pengutronix.de; Wed, 06 Sep 2023 15:41:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdsmG-0007QH-Nb
	for lore@pengutronix.de; Wed, 06 Sep 2023 15:41:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SmfLLcIvmjdLFXSNJC+D9dMIU/sRE9wGInmJoQz4FwQ=; b=fCuoH+qLqaw7osBlLrlGWfYq1j
	ntt3mtS/nGek3xBL4nF1bNF2CqEidSmnGbrP/WyC/cQZOh3sNt1PZACg1wSFnyycCt3ZLUH3k0ngO
	23fyoJe4g5A65aKBJGw2o3OUzyIKyXGtBRlLI+LEURuh+1WHflUiluduL+5g3Zew9WHe+Iyur8/m5
	o5d4za81LgtxK0tPsNoTw7mgJPC0sz2ft+Gh4QSz7rHRM00FCTOn3ZnbF9PNFMvH6DDDAX7Tp4+9d
	c6MERaAWp0yRx0YANpRvTIsUbKRdNAETHM/U16CaDUiR7vReqGyfROOTModFBelL+nrOdMGqYMp77
	dTdIM8CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdsl3-00A54E-0W;
	Wed, 06 Sep 2023 13:39:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdskz-00A533-32
	for barebox@lists.infradead.org;
	Wed, 06 Sep 2023 13:39:47 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1qdsky-000703-85; Wed, 06 Sep 2023 15:39:44 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukl@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>
Date: Wed,  6 Sep 2023 15:39:27 +0200
Message-Id: <20230906133928.1609901-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_063946_035612_53BBD5F9 
X-CRM114-Status: UNSURE (   9.65  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] clk: implement clk_get_optional helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Lack of clock can be ok at times and thus the clk API accepts NULL
arguments and treats them as no-op.

Linux provides a clk_get_optional function to simplify code with such
optional code, so let's provide an equivalent for barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
---
No changes since (implicit) v1.
---
 include/linux/clk.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 8509d5ece9d..82022e78e39 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -932,4 +932,23 @@ static inline void clk_bulk_disable(int num_clks,
 
 #endif
 
+/**
+ * clk_get_optional - lookup and obtain a reference to an optional clock
+ *		      producer.
+ * @dev: device for clock "consumer"
+ * @id: clock consumer ID
+ *
+ * Behaves the same as clk_get() except where there is no clock producer. In
+ * this case, instead of returning -ENOENT, the function returns NULL.
+ */
+static inline struct clk *clk_get_optional(struct device *dev, const char *id)
+{
+	struct clk *clk = clk_get(dev, id);
+
+	if (clk == ERR_PTR(-ENOENT))
+		return NULL;
+
+	return clk;
+}
+
 #endif
-- 
2.39.2



