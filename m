Delivery-date: Fri, 27 Sep 2024 12:43:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RB-003Mzs-0O
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8R1-0005Uf-Qv
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zQB7mpEK71M8+5BK6RmRQH1yT+yjTaZ5KrZ/AsTQL44=; b=TqDQ3MJIwbpCjJuOn6f7FtkUks
	JYeug/NlXuPDg2rlER6lYTZAkQSmlADZxRFh8x/wloJE0wqc/8GHRj8LKIY61c0AJcPfZDaMyZ60W
	OheGXnjYMxFGmV6h/STEuAs8B4NbI/CiL0VZIhqdQ9b/BjtFavjM6aphGLu6vHXCEo+T8lQoJnq1f
	uENEm0OFdNQ6ynTtU0pf4ZK79F0KMgU5XBtNxgfVKnQJYl+x8Lo4HqMLgxbISQqRBBhrOL6qznnrR
	5jkIZNavdW4cVZCYHI9jo2v+3GsG7Qogbq30EtqwTHZtb8LzffI56ruwQRKqU9mira2F7V+tINsNv
	kcrffSXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Q8-0000000AqgL-35GI;
	Fri, 27 Sep 2024 10:41:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8Ly-0000000ApvL-2vk0
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:37:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-0002d4-PX; Fri, 27 Sep 2024 12:37:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-001tz1-39; Fri, 27 Sep 2024 12:37:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8Lv-000PJg-1P;
	Fri, 27 Sep 2024 12:37:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2024 12:37:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240927-vop2-v2-6-dc8dcfc651d5@pengutronix.de>
References: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
In-Reply-To: <20240927-vop2-v2-0-dc8dcfc651d5@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727433454; l=702;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3jRI87s2/6QLiaYzTG/3EG5RSIyEKhP72XXuEmfRvfE=;
 b=ZSDI463rlqNYkmh1Rp/WM5aimH83f12Wb8Z86XSq+g8aKgQunUL9hfmPlId6xxb454IlRoqSf
 8i/xprdCZr6D9lAF4uVyjFIXw29AHJi9DlH9G1fp4J+J2N5MF6qnq5s
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_033739_069049_D01CEC2C 
X-CRM114-Status: UNSURE (   9.11  )
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
Subject: [PATCH v2 06/15] fb: add fb_rect functions
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



