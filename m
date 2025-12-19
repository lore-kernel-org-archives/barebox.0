Delivery-date: Fri, 19 Dec 2025 11:38:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsX-00DAfV-1C
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsF-0006JB-LT
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0KZ42RM3H0L/g22sfK2iwLGGFKr20XY3G9CGeqsCZE=; b=J2yYkmcay0Yxme
	rGqsXjibQ7ofxlngxLmAcCfmjPTafHzqg5shnnt6A08iI7ac1QK5PT2qswMQxetqewqCCdrP3ozIr
	Qyk5UV209LmSDn5T+YSYflcnytLAo5kyu8NhOQeW1QXUfLlc6HO1ta1tmLe3+g4UH6JTx42lhII2V
	i8/i4mM4SphJ2qdjI2bF8i/eAKPv05NI1+s/IxWcDF0xyWeX+f3wmdvNVLadw9NH9mhXW7n2oJpS9
	IWi1B7zxYS1iecTBR7nGqfKw/ZhWrJcF5ZOkcVNXzi1fQbcSsJc8pCiM5lv6/wL1tCf3b+7mQsNJT
	DUYZz2EpYiQT3eamsbhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXrI-0000000A6PX-06N9;
	Fri, 19 Dec 2025 10:37:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqy-0000000A63d-2QDY
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=F0KZ42RM3H0L/g22sfK2iwLGGFKr20XY3G9CGeqsCZE=; b=muGPH1McvtHb6s9cK3pBzD0OkX
	89mmZW4MXs/JN4Ay+D8ghi4NO+2YcR/GEpNgiteWw9z0rIK5EerJXyzgjaY6lP4hZFuseWfFC0ybX
	s3QAwbIL3YMauvMC2fMtyoHMvxZht2LTlHjPdLVHuSfkxVOUbDb4fS84h5YgCvb07OPFUkHiz5OOA
	ilnCeM6f2GXgs+x3sul/mE+wqeivRCwXo7gj2uFkgU3qt9pdVF+2irB7iudbGwUD3nrdi0F1q2IUK
	L4/jcmjKFJ/2Kqzx+DKFRMkdkfsuthrhqCr+ragjvOsU9h0F0Q5rK7dlkTpQfft25e+ZiErVNOEa7
	99HN8QbA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWzP-0000000AbBe-3cPK
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:41:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-0004cY-5X; Fri, 19 Dec 2025 11:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-006RUz-38;
	Fri, 19 Dec 2025 11:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVg-0000000320L-41vh;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Dec 2025 10:20:46 +0100
Message-ID: <20251219101453.2806980-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_094136_125597_BF9C7C98 
X-CRM114-Status: GOOD (  10.55  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2025.09.y 10/49] clk: clk_set_parent: skip any operation if current and new parents are equal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Michael Grzeschik <m.grzeschik@pengutronix.de>

When an clk is defined with only one parent it probably has no
set_parent function. Therefor changing the parent would return with
-EINVAL. We check for this case and skip this function in this case.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251013094943.1299607-1-m.grzeschik@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit c8ad4cc8956f886e50eceeb52fffc38e7ff01d26)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 89a007a12c5b..ac5b83cf8b40 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -302,6 +302,9 @@ int clk_set_parent(struct clk *clk, struct clk *newparent)
 	if (IS_ERR(newparent))
 		return PTR_ERR(newparent);
 
+	if (newparent == curparent)
+		return 0;
+
 	if (!clk->num_parents)
 		return -EINVAL;
 	if (!clk->ops->set_parent)
-- 
2.47.3



