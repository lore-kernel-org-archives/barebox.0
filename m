Delivery-date: Thu, 06 May 2021 11:31:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaM7-0001Yo-M1
	for lore@lore.pengutronix.de; Thu, 06 May 2021 11:31:39 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaM5-0000iP-0w
	for lore@pengutronix.de; Thu, 06 May 2021 11:31:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VyP1kocxoFr3kEa7EaqznYKgPFpKqjEvUuuU1W+v2Dc=; b=b2Nk+d/DHiWZxm3Cn9qBHo6wF
	7LxEz5NkUjK8dFj0uwEKcaF7nsOtaTb6Qd9PRBR7Hz5N77Rgeu0sf085EpbFiX+OTfKZXQgL2xZYx
	XCmBEFxCbG+67R5co/hKuaoW6ctlHvm4OKGEiRiBhBzyA/8Zg449x6deqwxVfZOYZsYtk0r3aLFLq
	VTH9CIdwWOp5nZAMGszHfjf6Lw8/RmJ88eOB3E4gT1EJKpubsht6P2NyIWNQ5eN7ODM4ygNa9f5sg
	UPc81YD9mgUCJrhNFaeJu3zx1YE0+JVxEiwlNYv/oTW4Oy4BEgxqPQm4yJ+9mkdMxt//rOLWxnghi
	obDZFLyuw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaKf-003oDt-AG; Thu, 06 May 2021 09:30:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJn-003ns3-6R
 for barebox@desiato.infradead.org; Thu, 06 May 2021 09:29:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=aXywxOMaA9PzATPCbhHFYSmugcG4kDtppir7WTKNW2I=; b=XMN7VR1Y7J3AAViu7KhGGDMNEm
 Fb5rUX52OyL0wLKZoiqqw4vBm364BRUJ5m3VZ0PcFh0nS2E5KpqhlKfvOHMETdTUhN8HBHsMtlkqT
 vepsJug8pXV2QoB0GZ3wnqPA+OzZBue6Ba7M05JawxTl8PuyWgVIWA5StqeWkEvbI/dMSdFRSzuUy
 z7KG0snqrgXHMQsn50XQBqWSb2nmGfZHNj0aDRk1c+/9++NyznZg8F626ZTWlGHQTfXZQMvLP7JWI
 +4P4viHA1Am/vq8O59oQMiWBjxuFjTMb0gvUo0GofUBHlPZvnGlZ60w9v9IobbLuvW8RzscP1oN5G
 1FIC3M1w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJk-005uIi-Rh
 for barebox@lists.infradead.org; Thu, 06 May 2021 09:29:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJb-0007pE-Fy; Thu, 06 May 2021 11:29:03 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0001la-Ga; Thu, 06 May 2021 11:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 May 2021 11:28:54 +0200
Message-Id: <20210506092901.25461-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506092901.25461-1-s.hauer@pengutronix.de>
References: <20210506092901.25461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022912_926597_694786ED 
X-CRM114-Status: GOOD (  11.99  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
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

