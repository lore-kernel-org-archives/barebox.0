Delivery-date: Mon, 04 Sep 2023 17:51:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdBrS-003uG0-7t
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 17:51:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdBrP-0002rB-SZ
	for lore@pengutronix.de; Mon, 04 Sep 2023 17:51:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xLBiN/K69LHBghQX8pEezrHQvGTKJoQ8w3jogFY4zvY=; b=Z25irXVtEZRQU+ORnXY3g1AKM3
	w/rWGMimYHgzKECDV4Uss/4RvXYGgJsJRdI7Q9iBWo1a/NNusnnD7yGD5dHbgxwBrx5v7UmifPyb3
	A23To2FN4oxpBEwT02bthRh3OvficOU8En3PB0+V0r+fhxjPG6ew/tXDU+uZXIlFpjFbgwiAIBb/2
	EwY6LOOBHuVLsGhm23MAA7M/poG1iSi+IpPYT7Sme8+0SFbmPayyOHRGGeCiyewb3A34dJNVhHLTG
	doiN4Ezmr3RSOZGRDlJGP9XQ7NMg2Eaf8vTBD2chfehzNf0hXx1gkKr+Y3PaQYGpODVUmGe/EXOQU
	ib6WqXYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdBq0-004P98-0o;
	Mon, 04 Sep 2023 15:50:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdBpv-004P8B-2a
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 15:50:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qdBpr-00080t-3a; Mon, 04 Sep 2023 17:49:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qdBpq-003v5y-NY; Mon, 04 Sep 2023 17:49:54 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qdBpq-009vp9-1G;
	Mon, 04 Sep 2023 17:49:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Sep 2023 17:49:52 +0200
Message-Id: <20230904154953.2367158-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_084959_857281_DE6295BB 
X-CRM114-Status: UNSURE (   9.73  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] clk: implement clk_get_optional helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Lack of clock can be ok at times and thus the clk API accepts NULL
arguments and treats them as no-op.

Linux provides a clk_get_optional function to simplify code with such
optional code, so let's provide an equivalent for barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 8509d5ece9d5..82022e78e39d 100644
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



