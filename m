Delivery-date: Wed, 25 Sep 2024 16:36:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stT8B-002d70-0s
	for lore@lore.pengutronix.de;
	Wed, 25 Sep 2024 16:36:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stT8B-0000t9-MU
	for lore@pengutronix.de; Wed, 25 Sep 2024 16:36:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lrDdJRgUpraYb533t8vYAEzBj8WLOqYIzTto3y5O1VY=; b=qEY58scwJ5oK/GmzKCHP99zIuC
	Witf9edNxUDTnyn7hua+kc1oKtkdOOncvEM+i8rqxg5wiVEOIK77r7XCOI4FfHLiOUYaDx904ISeZ
	KgefE3aN1Duv6fQ0C00Oj01jLYUiVn99LpmpzkJfNc4/H80cRiKiSpJdEv460VmFrSHjpRZV22yHS
	N8hBXN9muToWCUAlb9XOr5e+iJQjTWYHzExwG3yzfHipG30lH8hkmYn0sOKknA8t8TgZwWBZ9SLJ8
	vdMOa+tGQsNbwpqIWhlnDPXd8p54vbBhlY2DKKr/nejRmkgp0QqLncKpucjiSG+iSl3qN1PRFFvmq
	3mvkiteg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stT7f-00000005exV-2QUD;
	Wed, 25 Sep 2024 14:36:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stT6S-00000005eaC-2gjB
	for barebox@lists.infradead.org;
	Wed, 25 Sep 2024 14:34:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6R-0000Ik-De; Wed, 25 Sep 2024 16:34:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6Q-001TDT-UQ; Wed, 25 Sep 2024 16:34:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stT6R-00DPQo-10;
	Wed, 25 Sep 2024 16:34:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Sep 2024 16:34:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240925-graphics-v1-2-f1fe5d2cceec@pengutronix.de>
References: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
In-Reply-To: <20240925-graphics-v1-0-f1fe5d2cceec@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727274890; l=1287;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=bJ4Kop3gedaxztteWsi9yxOXZBI9uM4bniWyPOewdug=;
 b=P5fobGWWeBpd6T5ciVmuz5Kog8TQ+i6ikxtMWZqvWPYWvk/9hisklqAyTqt93mGepwPhiPaPU
 WgPUEGjIM4zCuThwMjA+ulazclnMH7W8XWzRN48wrpo/077JFo+aHQt
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_073452_736520_AE70A1C6 
X-CRM114-Status: GOOD (  13.78  )
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
Subject: [PATCH 2/5] commands: splash: honour line_length
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

the splash command has an option for setting a background colour. This
doesn't always fill the whole screen as expected.

struct fb_info has a line_length field that specifies the length in
bytes of a single line. That length may be bigger than the actually
visible area as specified by xres. In this case filling the area as
calculated by xres*yres fills the invisible pixels between xres and
line_length, but it doesn't fill the whole visible area. Fix this by
iterating over the lines, filling the visible area of each line.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/splash.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/commands/splash.c b/commands/splash.c
index 2eb7c5dc39..74754392e2 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -62,9 +62,13 @@ static int do_splash(int argc, char *argv[])
 
 	buf = gui_screen_render_buffer(sc);
 
-	if (do_bg)
-		gu_memset_pixel(sc->info, buf, bg_color,
-				sc->s.width * sc->s.height);
+	if (do_bg) {
+		int y;
+		for (y = 0; y < sc->s.height; y++) {
+			gu_memset_pixel(sc->info, buf + sc->info->line_length * y,
+					bg_color, sc->s.width);
+		}
+	}
 
 	ret = image_renderer_file(sc, &s, image_file);
 	if (ret > 0)

-- 
2.39.5



