Delivery-date: Thu, 24 Jun 2021 10:53:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL7V-0007DW-MP
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:53:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL7U-0001Os-Fk
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:53:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtjc9lN6E/5FzyPDWl6BQ5Wi9EC50KBymdYyeqEmp4A=; b=uaB/UDOEQ5D9W5
	DvGinqavQGRORp6ynYQZtStgpQMg8NaK0rsxMGcRxooniUlHCxP2vb2uJCN4OA5wrSXFJToMHimKR
	3WUF7W9IGUM5RJ3nI9VRJBsFd2UTYWZboeZ5+Sv6ggQs/mxp6TXqh9U6gGMovEKrQF1WNypPc3oK4
	I4Wxvp5TrBhfBna0w2Vq/E71cBIs7+8FeCg1P3xfwazBfd5QHTHOPLBn1NqI7q5emvI4+5okVal/o
	3cVdi4QY+lCcnES9ofuWawLZH2CbwQ3cxWuMNxOYr0KmphgmuZBNYQKI8Dh8ZEL9Ov9fY7fDwfw9N
	HZsHduewrRsuiNiKO/dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwL6G-00DXN3-1s; Thu, 24 Jun 2021 08:52:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwL63-00DXFB-8i
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:52:29 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000sF-VE; Thu, 24 Jun 2021 10:52:24 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000ad-6s; Thu, 24 Jun 2021 10:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 24 Jun 2021 10:52:06 +0200
Message-Id: <20210624085223.14616-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624085223.14616-1-s.hauer@pengutronix.de>
References: <20210624085223.14616-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_015227_412941_4C8889D5 
X-CRM114-Status: GOOD (  11.52  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/18] of: of_copy_node(): Copy phandles as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_copy_node() has to copy the phandles as well, because otherwise
the phandles in the copied tree become invalid.

This is not entirely correct because when of_copy_node() is used to
copy one tree as a subtree of another tree then we might get duplicated
phandles which will result in a corrupted tree. This is also an issue
already without this patch, because the phandle of a node is not only
stored in the phandle member of a struct device_node, but also as a
separate phandle property in the tree itself. The phandle property is
copied before this patch, so we can equally well also copy the phandle
member of struct device_node.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 193bae7fa0..1434f39ad1 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2409,6 +2409,7 @@ struct device_node *of_copy_node(struct device_node *parent, const struct device
 	struct property *pp;
 
 	np = of_new_node(parent, other->name);
+	np->phandle = other->phandle;
 
 	list_for_each_entry(pp, &other->properties, list)
 		of_new_property(np, pp->name, pp->value, pp->length);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

