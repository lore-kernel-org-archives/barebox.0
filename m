Delivery-date: Wed, 15 May 2024 13:23:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7CjF-00FjYV-0A
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 13:23:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7CjE-0004X5-Gd
	for lore@pengutronix.de; Wed, 15 May 2024 13:23:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IV2dZbT77Hcw1os4wbbXdEvmTI7Sjetp4FWZujGeps4=; b=wEmoZwQX6h17Fe4LoN7zdTwN7T
	nRz0ls7GDYMcvAmD7LlkpJ8WqdPe6Qk35/iFgBM5khLypKmSgZSCzDzFuCM8p7sj+WF+OLb05NqCr
	2aCrkDzR0RwRFvXwii46Mf+VpqrtHi4RzGDVa8XFPqvHssDFtNrfVg+oTpmeRH76aovtBcfVYAU27
	L/AMFeA2R2g0n62RBTNA9qXmOA1YIdsTGFGSZyoz4pDD5mdiSDQlsHicazNzaLVZx21c1g4ZFVxT2
	C280Am2qkHlVMtR9pqwAzo8LFWlEBjHQSaPbw3nPqx63HYM+wz1E6UMkxhwrjejEoMX+FtuvtRtoO
	rtS1zE0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Ciq-00000001Lq5-1KtW;
	Wed, 15 May 2024 11:23:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Cin-00000001LpZ-1QQA
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 11:22:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7Cil-0004P9-P5; Wed, 15 May 2024 13:22:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7Cil-001WXM-Cj; Wed, 15 May 2024 13:22:55 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7Cil-001CvT-10;
	Wed, 15 May 2024 13:22:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 13:22:54 +0200
Message-Id: <20240515112254.288003-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_042257_402009_E6287971 
X-CRM114-Status: GOOD (  11.46  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: move ramoops device creation into common code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have a generic place where we check for reserved memory
matches, so add ramoops there as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c |  1 +
 fs/pstore/ram.c   | 15 ---------------
 2 files changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 3b8878f34be3..2213165fd72d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2735,6 +2735,7 @@ static void of_platform_device_create_root(struct device_node *np)
 }
 
 static const struct of_device_id reserved_mem_matches[] = {
+	{ .compatible = "ramoops" },
 	{ .compatible = "nvmem-rmem" },
 	{}
 };
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 9ecf7ef5e901..4cdeca904fad 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -685,21 +685,6 @@ static struct driver ramoops_driver = {
 
 static int __init ramoops_init(void)
 {
-	if (IS_ENABLED(CONFIG_OFTREE)) {
-		struct device_node *node;
-
-		node = of_get_root_node();
-		if (!node)
-			return 0;
-
-		node = of_get_child_by_name(node, "reserved-memory");
-		if (!node)
-			return 0;
-
-		for_each_matching_node(node, ramoops_dt_ids)
-			of_platform_device_create(node, NULL);
-	}
-
 	ramoops_register_dummy();
 	return platform_driver_register(&ramoops_driver);
 }
-- 
2.39.2



