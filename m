Delivery-date: Thu, 26 Sep 2024 15:15:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stoLZ-0030pr-0j
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 15:15:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stoLZ-0005fC-Ba
	for lore@pengutronix.de; Thu, 26 Sep 2024 15:15:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zQB7mpEK71M8+5BK6RmRQH1yT+yjTaZ5KrZ/AsTQL44=; b=FnJCCMmiGFQG5yFiKQA0V8BcgP
	GlQ3Mh3puOxi93uvw+wA4v6622rnxzIEObDM9o40xP9YhEUi/7t0B9MnQtHp2KPb/2wEfWuUE8SBp
	Y65P955ZMpMk0BNyAPj3RYmfXXFw8bMse7ecFKFhaQ5wQ98mp5d+SDQtiA/iN9bjEb2KW4vywtSzi
	DcuA9ao4UJE9r7Yg3S1X1W0kzC1J0foJy4z+88rmsX9Ga2pgaXnLvnBlr3SIPLgEGNOkZCdoAhHP4
	LBynLRPmbqIeE2VMF1K3jjfdKu29+UfO0Ssq7WcZANqDWE/GtLUB6qARYANTdOMoPiSMkJoQTN0TX
	Kx/uomUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stoKs-00000008Qy5-1u2Z;
	Thu, 26 Sep 2024 13:15:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stoKn-00000008Qvt-3qvg
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 13:15:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-0004up-Pr; Thu, 26 Sep 2024 15:15:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-001h7F-5b; Thu, 26 Sep 2024 15:15:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stoKl-00GZyn-1h;
	Thu, 26 Sep 2024 15:15:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 15:15:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240926-vop2-v1-6-fe0581f2020b@pengutronix.de>
References: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
In-Reply-To: <20240926-vop2-v1-0-fe0581f2020b@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727356502; l=702;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3jRI87s2/6QLiaYzTG/3EG5RSIyEKhP72XXuEmfRvfE=;
 b=JpOM3ce/ZxggM3YhNULXFf+7lI3yypxFGpUyOIjetXinWhnzMbiaD1DNZJyXktm6E44FMBQhC
 7gfhI/sDMbcAgbfLeKgYGX8uJTgBmtAL/kpblhpwBzOG5jlY+GVWrxR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_061506_172332_34BB12DF 
X-CRM114-Status: UNSURE (   8.87  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 06/13] fb: add fb_rect functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add convenience functions for calculating the width/height of a
rectangle.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/fb.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/fb.h b/include/fb.h
index 2dd55eb83d..574a66a396 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -99,6 +99,16 @@ struct fb_rect {
 	u32 y2;
 };
 
+static inline int fb_rect_width(const struct fb_rect *r)
+{
+	return r->x2 - r->x1;
+}
+
+static inline int fb_rect_height(const struct fb_rect *r)
+{
+	return r->y2 - r->y1;
+}
+
 struct fb_ops {
 	/* set color register */
 	int (*fb_setcolreg)(unsigned regno, unsigned red, unsigned green,

-- 
2.39.5



