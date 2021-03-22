Delivery-date: Mon, 22 Mar 2021 12:25:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOIgh-0003NM-8P
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 12:25:35 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOIgg-0006AZ-FC
	for lore@pengutronix.de; Mon, 22 Mar 2021 12:25:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K5clOX9Sb3q2dqlvZJgZMzKohmQiiclHC0mNoLU9Kog=; b=hSjzlwX9uARfqF
	8TGtSF9yDy/ddLKGXvVr3oi4l5Gk4+/ciQJfEdGMLzg2RiJKW+3FHY7xIKmCmwn0AUktbYA5a5hDr
	d8HxXpL9k3gO5sEvpAxl8cGXzT0pfJ7T/oFwcVU1thnISf+LNvzl+ZVdWkuOChixjY6PPhot3zp/P
	+MGNHwPXXLKe/VUR4QR9UXVJuHqd1k1Ce9ccUmlzQYejGhoS3uPDZ5UcilhX4dcSeDtm7Sq02xkto
	Jf6wyDucZF7l/Hix9ArRyBRARGdJ7SoNff3VxlcJOlnlPQEcNgaEwHIYCdlfqKZijsv1opyr4bzs6
	Wzf1YLQ2fpQ1dYzfgr9A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOIfX-00BRMh-OY; Mon, 22 Mar 2021 11:24:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOIfO-00BRK2-44
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 11:24:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOIfN-0005v4-IJ; Mon, 22 Mar 2021 12:24:13 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOIfN-000171-9W; Mon, 22 Mar 2021 12:24:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 22 Mar 2021 12:24:11 +0100
Message-Id: <20210322112412.4232-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_112415_381065_F137CE9B 
X-CRM114-Status: GOOD (  11.79  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] of: Return copy of live tree as fixed tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

the of fixups modify the the tree passed to them. It is undesired that
these modify the live tree, so when we are requested to return the fixed
live tree then make a copy first.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/oftree.c b/common/oftree.c
index 075b9d6b8b..4868d8812e 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -325,6 +325,9 @@ struct fdt_header *of_get_fixed_tree(struct device_node *node)
 		node = of_get_root_node();
 		if (!node)
 			return NULL;
+		node = of_copy_node(NULL, node);
+		if (!node)
+			return NULL;
 	}
 
 	ret = of_fix_tree(node);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

