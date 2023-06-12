Delivery-date: Mon, 12 Jun 2023 15:03:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hD6-003qep-DG
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:03:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hD3-0000pO-45
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tvnno2MT5uzt2wZhvkE5sQlFVJbYY1klwEGNmmC2tYE=; b=cIGAY3d0+xclNs46HSvoRtFewM
	01cCkd3ye7gD+kCyUgZ0voPSrGr5jat3i9vtOVDxf3u5oZOGgfqVd9iP5gZTJt4WA5zBcrMUXnR6e
	3xUvfkv0gKYheIA4RaCG8g7C1QtQPPP50aUTUMwF0ve6XbD1LPm2r0jP9VDlg9+ZSYvKACbX4/FFx
	FPfc6XOxXH8OErODwd8WafxpEPzb7bNx1xmhVE0xWZmerXodEIsB/aTE+r9aCPMsOBJAeMEnoSVTq
	IV31nwmDTs2TmLtWahu4A/ssYQ4GkQAHbRo6bYNtsCJSAKnSuMNs8ALvQrrWK99uQaFKW49a/Uf+u
	LD79XImQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCQ-0047Vb-03;
	Mon, 12 Jun 2023 13:03:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hC9-0047Ek-0T
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:02:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC7-0008N3-Th; Mon, 12 Jun 2023 15:02:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC7-006tWI-9E; Mon, 12 Jun 2023 15:02:51 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aK5-86; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:02:37 +0200
Message-Id: <20230612130239.1087599-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060253_220571_71A13094 
X-CRM114-Status: GOOD (  10.68  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 16/19] video: simplefb-fixup: warn on framebuffers >= 4G
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Building simplefb-fixup for 64-bit has the compiler inform us that the
code doesn't handle 64-bit addresses as it should. Silence the warnings
and have the code return -ENOSYS if this happens.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/simplefb-fixup.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/video/simplefb-fixup.c b/drivers/video/simplefb-fixup.c
index a2c59de364a5..65e0281a189f 100644
--- a/drivers/video/simplefb-fixup.c
+++ b/drivers/video/simplefb-fixup.c
@@ -90,6 +90,7 @@ static int simplefb_create_node(struct device_node *root,
 				const struct fb_info *fbi, const char *format)
 {
 	struct device_node *node;
+	phys_addr_t screen_base;
 	u32 cells[2];
 	int ret;
 
@@ -105,7 +106,11 @@ static int simplefb_create_node(struct device_node *root,
 	if (ret)
 		return ret;
 
-	cells[0] = cpu_to_be32((u32)fbi->screen_base);
+	screen_base = virt_to_phys(fbi->screen_base);
+	if (upper_32_bits(screen_base))
+		return -ENOSYS;
+
+	cells[0] = cpu_to_be32(lower_32_bits(screen_base));
 	cells[1] = cpu_to_be32(fbi->line_length * fbi->yres);
 	ret = of_set_property(node, "reg", cells, sizeof(cells[0]) * 2, 1);
 	if (ret < 0)
@@ -130,8 +135,7 @@ static int simplefb_create_node(struct device_node *root,
 	if (ret < 0)
 		return ret;
 
-	of_add_reserve_entry((u32)fbi->screen_base,
-			(u32)fbi->screen_base + fbi->screen_size);
+	of_add_reserve_entry(screen_base, screen_base + fbi->screen_size);
 
 	return of_property_write_string(node, "status", "okay");
 }
-- 
2.39.2



