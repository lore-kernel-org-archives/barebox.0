Delivery-date: Wed, 15 Dec 2021 21:18:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxajg-007ec5-TV
	for lore@lore.pengutronix.de; Wed, 15 Dec 2021 21:18:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxajf-00055J-OH
	for lore@pengutronix.de; Wed, 15 Dec 2021 21:18:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSS0/cbqaTD/ZfAgREkVXMUE+XmsoUcwdxDJyS8W/KI=; b=3XMIq3zhlhA5Qv
	nEtiuPht1Qv7k7pjtQm1P7eRFLBb4Yc27Z55ufgqlaCriG6kaREesBj00cJzQsVR8glHBLebtQYwC
	e1GQxozkVxyKidAHm5UvLEcpoFVTXmXVi7B9nSRgZug5J3egS4IEYOa3DkRhKngrnfR4tBiKDyAYT
	0g7+BiDcsxfKEi4/rxskoKoAbIX9r1z8RZJhKL4iUn0H8bUS6y7PRhgGdtmdq3oe1FsiO+S66r8o6
	8AUlJS5RKdN/VQqkQbp1Dj5fUAvSFYxHPYg0GFs0Q03xJvF2CGNoTe8QVU2g4a8T9dyu7J4kFc8pZ
	cOh6Uu34jdpSzGNzwhkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxaho-002ZwT-67; Wed, 15 Dec 2021 20:16:52 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxahi-002Zuj-Rq
 for barebox@lists.infradead.org; Wed, 15 Dec 2021 20:16:48 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 765A760007;
 Wed, 15 Dec 2021 20:16:40 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 15 Dec 2021 21:16:36 +0100
Message-Id: <20211215201636.694706-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211209105708.3517684-3-a.fatoum@pengutronix.de>
References: <20211209105708.3517684-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_121647_079482_4A0EED0A 
X-CRM114-Status: UNSURE (   6.58  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! of: implement new of_property_sprintf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Otherwise, tools like of_dump will consider the output to be byte
arrays.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/of/base.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 06e37b0fca4a..80465d6d5062 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2285,6 +2285,8 @@ int of_property_sprintf(struct device_node *np,
 	if (len < 0)
 		return -ENOMEM;
 
+	len++; /* trailing NUL */
+
 	pp = of_find_property(np, propname, NULL);
 	of_delete_property(pp);
 
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

