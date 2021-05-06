Delivery-date: Thu, 06 May 2021 11:31:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaMD-0001ZY-3G
	for lore@lore.pengutronix.de; Thu, 06 May 2021 11:31:45 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaMC-0000mq-4x
	for lore@pengutronix.de; Thu, 06 May 2021 11:31:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1xHj4zSLVjDh7t3ctS8QLyPq6itI9vVaGyFDl3VjpIo=; b=p8aVFaxppJaqWeb+oMCDu2EtP
	TlaeEaOuNpj7uBzLT1Gtxkv/U9MDCwoZxILlWkbS+1+BH3J+A1mlfkEZoZBlLMYiSmHbrIGtT0UHl
	tUmDcnNxdunFcTGxOeDDNveyzw8UoaAHJW096YPVnQ7sm28yYep6EaB2oE3ZAlxUzwPvVfqfe7Erm
	g31WNjMUw1BAiZzNeXfReoI4lp7gZj3OeFa29PmiMKQoPM36Go5Q6gxfwWfpkaYqxpU2WvEKSeOlA
	B5y+3/yXvguTs/YECKo1GpBLz9MDhUYwRtKadf3E9XsKnD/DC72TGe8+5OAkcEFrCcfzTHBRfhTz6
	/fl9j7l3A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaKs-003oGO-RP; Thu, 06 May 2021 09:30:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJn-003ns4-Ac
 for barebox@desiato.infradead.org; Thu, 06 May 2021 09:29:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=EzHjne4EzbADfWLqm3nMwG16UyBT0mWm61kisS+Nito=; b=bs3wgmdEEfmm710rA68IQJN1g8
 QLXL/BaeY29TGKafCvFijZ0d/Au6AvaRrAzdw8gFUw/vsZqq/SR2GMZSUbygswLVHfHJSkEb8EGUr
 9T+fG9acj/foY7kApdhwXStywNku6/i1MLxsw2K/n365QhPfhxGA4/zL0JBKrVyXcVtA2SNn7jV4v
 grnUFscKyVwqCnkveGK5UxiKEBTBSEYm2Tsg1nbTNiJMVAWf6+LYzgEKj09+BcN4XhEETVDEPdgPO
 Xi07y0rUknTH5wRfj0Bl8+xjz6v58HZyWv4730j9XzRMXA14br34XmTYE2A9Y+7IbdjyBr7d7zsLj
 giwfkjKw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJk-005uIh-QF
 for barebox@lists.infradead.org; Thu, 06 May 2021 09:29:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJb-0007p9-AY; Thu, 06 May 2021 11:29:03 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0001lL-Dq; Thu, 06 May 2021 11:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 May 2021 11:28:49 +0200
Message-Id: <20210506092901.25461-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506092901.25461-1-s.hauer@pengutronix.de>
References: <20210506092901.25461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022912_875128_29D48DE1 
X-CRM114-Status: GOOD (  12.08  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/17] of: base: move clock init from of_probe() to
 barebox_register_of()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

This is required for the new deep-probe mechanism. Barebox deep-probe
calls of_probe() very late and so clock drivers using the old
CLK_OF_DECLARE_DRIVER() mechanism are added very late. This would break
the deep-probe approach.

Move of_clk_init() and call it right before of_probe() should have no
impact because of_clk_init() depends only on an unflatten dtb.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.pengutronix.de/20201021115813.31645-6-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 549a0a2c2c..7b3cfa8393 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1707,8 +1707,10 @@ void barebox_register_of(struct device_node *root)
 	of_set_root_node(root);
 	of_fix_tree(root);
 
-	if (IS_ENABLED(CONFIG_OFDEVICE))
+	if (IS_ENABLED(CONFIG_OFDEVICE)) {
+		of_clk_init(root, NULL);
 		of_probe();
+	}
 }
 
 void barebox_register_fdt(const void *dtb)
@@ -2335,7 +2337,6 @@ int of_probe(void)
 
 	of_platform_device_create_root(root_node);
 
-	of_clk_init(root_node, NULL);
 	of_platform_populate(root_node, of_default_bus_match_table, NULL);
 
 	return 0;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

