Delivery-date: Fri, 16 Apr 2021 11:57:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLEI-00017g-Bf
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 11:57:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLEH-0006Mc-9P
	for lore@pengutronix.de; Fri, 16 Apr 2021 11:57:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VyP1kocxoFr3kEa7EaqznYKgPFpKqjEvUuuU1W+v2Dc=; b=P0gUdc/c9WnlCsPsven9UTiTM
	hPPHlO1QCYA9Hq3aiTFAVqhlMIxK6pWPALUXiz0PI2T5RqjxGYgw8fSID0c78Y0m0TEjQw/dskHn2
	LUaop9i1nYMXz0Wnup2J5Et6gLSCdarNaUlG0If2zoxpWKJ1FHpff3sY1lZtbp0Cta58iTNTnyE/4
	ejkTb2byuWDzoczkFDuM5FDGyW1jPkCK24mnNOU2t8eIpBKGhkhKUpqxKh64Uz8u29LPborCIITEp
	T+A+zTXVQtXyIUk6GYuSWhlCohS7Z5GU429dvHUBoLVvFZp86qZhJYBAg5VCUw9VrauYMe4/VoUZd
	4QGRXrrAw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXLDE-001dq7-Kn; Fri, 16 Apr 2021 09:56:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7K-001cUS-Gu
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 09:50:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=aXywxOMaA9PzATPCbhHFYSmugcG4kDtppir7WTKNW2I=; b=XFTifXJ65BWq/WDa34lUUOj2uU
 eBVM60x0ayXVIetiOcG8S2DjY53W4KjOITCZIXH98+3d0UtOSCQ+gsyI14WbeZ149GN4NXKyraBTT
 DSmOnJWBsiXtBVqBl46KZ/mkZc3dGjlpuUQBnuev0r7oMmn/fDLvBXa8lY7WkI3MjbfJMdDh6chTu
 bIZ4QQyXNuVjw48CGchbX0JqxHTP8ZDZRgasqrUPk+gBBwxAS0awnXOa8UbLrGmiFkQow/WBqEaBn
 w0m11KZ+ISDh7uy6OlJUNDUVvGCLFGgI3wul/PHyfKVGDmMtuB1FWFoJkN8JKeFYXBGqNF6IEHS2P
 a4+Vjggw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7H-009FwJ-Ee
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 09:50:25 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7E-00051P-7B; Fri, 16 Apr 2021 11:50:20 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7C-0001Dm-T5; Fri, 16 Apr 2021 11:50:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Apr 2021 11:49:36 +0200
Message-Id: <20210416094943.3648-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210416094943.3648-1-s.hauer@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_025023_505750_AA9E146A 
X-CRM114-Status: GOOD (  11.98  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/17] pinctrl: Find controller node first
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The pinctrl controller node is the first parent node that has a compatible
property. Use that information to find the node without iterating up to
the root node.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index b36521ef83..84ac61f2d9 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -85,12 +85,15 @@ static int pinctrl_config_one(struct device_node *np)
 		pinctrl_node = pinctrl_node->parent;
 		if (!pinctrl_node)
 			return -ENODEV;
-		pdev = find_pinctrl(pinctrl_node);
-		if (pdev)
+		if (of_get_property(pinctrl_node, "compatible", NULL))
 			break;
 	}
 
-	return pdev->ops->set_state(pdev, np);
+	pdev = find_pinctrl(pinctrl_node);
+	if (pdev)
+		return pdev->ops->set_state(pdev, np);
+	else
+		return -ENODEV;
 }
 
 int of_pinctrl_select_state(struct device_node *np, const char *name)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

