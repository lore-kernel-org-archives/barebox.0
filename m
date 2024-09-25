Delivery-date: Wed, 25 Sep 2024 16:36:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stT8A-002d69-0T
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:36:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stT88-0000r2-VS
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:36:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yl50CBgsTiikvp+snmNHbqoyPi0fncGtNI0FuuejM7s=; b=AOSLtv6Nmi1FbDf/RFLhvu5j5o
	axEb+z7ZqzwWGE7lv+ORReWyPHxYkFeSZNz8EmzBAhukJTIUjwMdD5EIBFyf5jv645oEJ+OI3x1Cc
	q2716H2GTOU5VnJMuWIZMjBW6q4LH64tZiGTV6xl6wMnXOW3B06GHknvpnMQFyE5MhoOnko03wexs
	P59czQpCz+nq7Yuqm8sd3AqnprIru/oJtl969iEM3xK74lEo7xi9zPNBmTkeY3C5LE+vDZ/Yps9ZC
	/hPjiBAATGOgiJeBbJUYoxJswx1Jq6ayYrFYS9NkMYjTHjiwxXtkntq3XdB43r9Cd/dg8DJcouQli
	Uaz7ApGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stT7h-00000005eyZ-2EnO;
	Wed, 25 Sep 2024 14:36:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stT6a-00000005ef4-38TS
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:35:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6R-0000Ij-D8; Wed, 25 Sep 2024 16:34:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6Q-001TDU-Ul; Wed, 25 Sep 2024 16:34:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6R-00DPQo-0z;
	Wed, 25 Sep 2024 16:34:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:34:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-graphics-v1-1-f1fe5d2cceec@pengutronix.de>
References: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
In-Reply-To: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727274890; l=1117;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=qvKSoia28YlGG+p+FIdzRilcYFItxmhLo0nIeRITWyw=;
 b=YVthCCtclITle3aT1HMiXT/OuLKaoV3k4+BsBbU1G7DQuARAEt4lQ6tBvtYJTRmKMsKckzQa/
 kpyTXBpBi7uCzg1gv08ZJ7xPdzdrJIZacBveAAgNEDZZXvQy2d4Cqde
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_073500_859371_BB3AABEB 
X-CRM114-Status: GOOD (  10.46  )
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
Subject: [PATCH 1/5] graphic_utils: Clip to screen boundaries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Do not render the parts of the image that are outside the screen
boundaries to prevent memory corruptions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/gui/graphic_utils.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index d91a7f3550..93ef1214f9 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -229,6 +229,9 @@ void gu_rgba_blend(struct fb_info *info, struct image *img, void* buf, int heigh
 	line_length = info->line_length;
 
 	for (y = 0; y < height; y++) {
+		if (y + starty >= info->yres)
+			break;
+
 		adr = buf + (y + starty) * line_length +
 				startx * (info->bits_per_pixel >> 3);
 		image = img->data + (y * img->width *img_byte_per_pixel);
@@ -236,6 +239,9 @@ void gu_rgba_blend(struct fb_info *info, struct image *img, void* buf, int heigh
 		for (x = 0; x < width; x++) {
 			uint8_t *pixel = image;
 
+			if (x + startx >= info->xres)
+				break;
+
 			if (is_rgba)
 				gu_set_rgba_pixel(info, adr, pixel[0], pixel[1],
 						pixel[2], pixel[3]);

-- 
2.39.5



