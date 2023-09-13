Delivery-date: Wed, 13 Sep 2023 14:09:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOgN-00Djyv-MW
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 14:09:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgOgL-0001Ea-Lj
	for lore@pengutronix.de; Wed, 13 Sep 2023 14:09:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UOJ3WsFXO46YyJLYcfyW114y1qOtMTvHZJMr8qtZoE0=; b=R4Ylb3WKVxuC36p60But9xE7GO
	BAb0ZBctuLQT3vxwslvrl9sp8uBBut63H4PgR0hLB4Dzz+iM+QJ6jqKezJG1cBKdq5QFoJxFZ2wxB
	O26Pz2PggxGFq6hzLHGn8/ZBW112Sf15MelDmizV+EKCPjJOq/UNAODeW1nEcWDDohrRWZ728OlVm
	Avc/KQKPSobMgpDvCRr7Eh48awgJ8PzOIpuJNG+imzpRXJjhhfKhFvSE1BajJGH9o8iImlPpSES6T
	bNFrAV6GAjwueJeMrJHmn7pcBq/XeYtAklaC2N+g4BWDKqUgHU1e34ulPFEUMKNLLRdShfzwIyTNg
	Sw4NyaUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOfM-005oaS-1r;
	Wed, 13 Sep 2023 12:08:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgOfI-005oZY-0B
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 12:08:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOfG-0000zr-Q4; Wed, 13 Sep 2023 14:08:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOfG-0063bY-6w; Wed, 13 Sep 2023 14:08:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgOfG-007qPb-0X;
	Wed, 13 Sep 2023 14:08:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 14:08:06 +0200
Message-Id: <20230913120807.1869600-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230913120807.1869600-1-a.fatoum@pengutronix.de>
References: <20230913120807.1869600-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_050816_112790_C5E71977 
X-CRM114-Status: UNSURE (   9.94  )
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
Subject: [PATCH 1/2] clk: implement clk_get_enabled helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Kernel code increasingly uses devm_clk_get_enabled to make driver code
more compact. Port a devres-less version to barebox to make porting such
Linux code easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 82022e78e39d..398427eca676 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -951,4 +951,33 @@ static inline struct clk *clk_get_optional(struct device *dev, const char *id)
 	return clk;
 }
 
+/**
+ * clk_get_enabled - clk_get() + clk_prepare_enable()
+ * @dev: device for clock "consumer"
+ * @id: clock consumer ID
+ *
+ * Return: a struct clk corresponding to the clock producer, or
+ * valid IS_ERR() condition containing errno.  The implementation
+ * uses @dev and @id to determine the clock consumer, and thereby
+ * the clock producer.  (IOW, @id may be identical strings, but
+ * clk_get may return different clock producers depending on @dev.)
+ *
+ * The returned clk (if valid) is enabled.
+ */
+static inline struct clk *clk_get_enabled(struct device *dev, const char *id)
+{
+	struct clk *clk;
+	int ret;
+
+	clk = clk_get(dev, id);
+	if (IS_ERR(clk))
+		return clk;
+
+	ret = clk_enable(clk);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return clk;
+}
+
 #endif
-- 
2.39.2



