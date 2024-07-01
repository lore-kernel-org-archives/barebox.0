Delivery-date: Mon, 01 Jul 2024 20:13:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOLWj-000aTQ-0g
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 20:13:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOLWi-0000Cg-La
	for lore@pengutronix.de; Mon, 01 Jul 2024 20:13:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zcAP8pRhOrw06fI3r+wS9HuzpIkEQxzaF6PPk9V97Zg=; b=P7+50G5kPfC2OxDx9jzFIw7wXz
	89VsJd+NwGPvAY2abO1xWJ42ZV/YVYVJNqoUr3YqwM0rStuyaFo2U+0MBsvgAQAN4dhD6w4sIJn6V
	6nPUVIpjnFLlrz/zaOTVGVF8yg7wiQAOre6mF0YrGz5B6Yuds7bMAHC5Tis2R6w4TCldEWUqgS0OM
	ZY4HTTrqJLrubredsSqdySfMftjYUx28NWwS0g5LVk0+3e8atwcABeFyco5aDvt7kBph0TRWGE6go
	ACyGCT4UBp+3jmEj0d4hB0I/jsBRjhOJazmfpK3VgDo+0rKseQd7ejrshQpozEPlnlEzI7e7OOcQP
	MyJyYt5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOLW4-00000004PVd-0Zli;
	Mon, 01 Jul 2024 18:12:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOLVz-00000004PTH-3YuB
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 18:12:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOLVv-00007L-HG; Mon, 01 Jul 2024 20:12:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOLVv-006QZ2-4A; Mon, 01 Jul 2024 20:12:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOLVv-004zT9-07;
	Mon, 01 Jul 2024 20:12:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 20:12:30 +0200
Message-Id: <20240701181230.1189587-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_111236_450815_AE8F5CFF 
X-CRM114-Status: UNSURE (   9.21  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] clk: support inclusion of clk-provider.h in !COMMON_CLK code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most of the file is macros, but the little C code there is fails to
compile when built with !COMMON_CLK due to struct clk_div_table and
clk_hw_get_parent being undefined.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk-provider.h | 2 ++
 include/linux/clk.h          | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index eab8305821e5..602e772a54bb 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -8,6 +8,8 @@
 
 #include <linux/clk.h>
 
+struct clk_div_table;
+
 long divider_round_rate_parent(struct clk_hw *hw, struct clk_hw *parent,
 			       unsigned long rate, unsigned long *prate,
 			       const struct clk_div_table *table,
diff --git a/include/linux/clk.h b/include/linux/clk.h
index bd107962fb88..ae03dcfdb2a2 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -187,6 +187,12 @@ static inline struct clk *clk_get_parent(struct clk *clk)
 	return NULL;
 }
 
+static inline struct clk_hw *clk_hw_get_parent(struct clk_hw *hw)
+
+{
+	return NULL;
+}
+
 static inline int clk_hw_get_parent_index(struct clk_hw *hw)
 {
 	return -EINVAL;
-- 
2.39.2



