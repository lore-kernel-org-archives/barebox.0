Delivery-date: Mon, 17 Nov 2025 22:30:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL6nc-0026cX-2r
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 22:30:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL6nc-0001g4-AG
	for lore@pengutronix.de; Mon, 17 Nov 2025 22:30:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hZIOr4loVeBQpLlSSE0oAfkHIBJWtEjhT6l2eozb/ps=; b=Cs3TpkQuc6upRH1BzjHJC5DfRR
	fUFtVlMWbGoo9lrrvet56t4C5mwV53o0spctVa3WfdwYPG7C6vPTvLKwuA2Ej8w5NU9ls/Q6jc1xO
	sYp1u/x0gWPKdoxT4Y2LOl/2qNAetL+CtWuWjOubKqBFzpEJfw0TXT6uuOlLm9V4iTqybkQBh0xaN
	2QOt3br5AfUez8KRNTZ4210xfzfiZPDaOFsKyU99JBicJd3/LOm9r+ELVQA5IXUeDQN/gMxLtv/Dp
	Nb4gWZyQc0aBbFxlGv7Uk9jhklq3EBhQCIGHyBkTe3WaNjtSto0YagtBH7w79A+jJ/ZpTB+sdj6/T
	Qf/VAVFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL6n2-0000000Gsnl-2eNV;
	Mon, 17 Nov 2025 21:29:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL6my-0000000GsmD-1te5
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 21:29:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6mv-0001Sb-2y; Mon, 17 Nov 2025 22:29:29 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6mu-000ybh-2q;
	Mon, 17 Nov 2025 22:29:28 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6mu-00000000iB2-3UXg;
	Mon, 17 Nov 2025 22:29:28 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 17 Nov 2025 22:29:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-simplefb-fixup-v1-2-7824d99b3fb3@pengutronix.de>
References: <20251117-simplefb-fixup-v1-0-7824d99b3fb3@pengutronix.de>
In-Reply-To: <20251117-simplefb-fixup-v1-0-7824d99b3fb3@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1746;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=NVPotMUPpOqPNvek2MdyPORC6HYIZlUVzuUlwJ/0HkU=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpG5O45DyiH5A9HS7joas85W8NEeV1dJAfOeoSZ
 VMB1nh+pKmJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaRuTuAAKCRC/aVhE+XH0
 q60iEACRPktqAhnI+/zjtTSEuovOBVH6L0hLXKAKFGC+eXZ6c5zIusZBKyEVG99D1lWkNaOAroQ
 l/BfnRVy2AJN70R/9GNsNYO4WvPXqLL+1/yAga7hJGP/+WR7hwGQSFS8GlemoOz0j/XH19FoGfb
 +ruVkkmEIc2u7rgcDeE9oRCV+7f3aOfQJG/xFaULQ+DU4xZC3prXY3L09JQT4oo3Gq/1cL147tb
 CP5yqlOE8Gtc0AO7/h5XP1j0hcF0I/M3Fz9Xr0PHLjhkAJkvc0jbU5+RCegRmUk/WZsd1DQWi3A
 ZJesv8rUpwkQDGfCI8dg80uaGPioGRXOQy+OuunMT1BYQuVb1g5q7O4OTroIhJ6dLa+40/xqLwJ
 ejNTz4EdJH231wGW719XrPdXH/BvVNxPHkwB7b0TC1a1Ntb155pvzD9rQA0ZbLqeL7tZxTvC7LI
 iu78cHlaSSDXDtol1vOX7NxcY6LwHDo3I+V+LaSpcDqfeAkL6nVKVwwzypp13PuCx67gYQUan9g
 OIHweiFz3WauhUnlrLbyF8tKLvF23a4UCG88tm2/YrhBU6pwZ4IKEp5Ibzjs4pGTsGjzTey/joh
 hlR060noRyX5bs+Q/V5FbDQLY3hoVLhV2z17k4oitml0WoOUfx8KgpCSqSlJrsbvKwSkqDsDRzX
 tqSmQUBxr9GU3Mg==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_132932_496925_94DE9AF9 
X-CRM114-Status: GOOD (  10.32  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] simplefb-fixup: depend res fields on root size-cells
 and addr-cells
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With 64bit systems the #size-cells and #addr-cells are different
to 32bit. To align with the spec we define the number of fields
by the roots size and addr cells count.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/video/simplefb-fixup.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/video/simplefb-fixup.c b/drivers/video/simplefb-fixup.c
index 65e0281a189f23c3b730c7bab56d283cc29700aa..9b39e1ef46d84eed61242119251d340b44d59a6e 100644
--- a/drivers/video/simplefb-fixup.c
+++ b/drivers/video/simplefb-fixup.c
@@ -91,8 +91,14 @@ static int simplefb_create_node(struct device_node *root,
 {
 	struct device_node *node;
 	phys_addr_t screen_base;
-	u32 cells[2];
-	int ret;
+	__be32 cells[4];
+	int addr_cells = 2, size_cells = 1, ret;
+
+	of_property_read_u32(root, "#address-cells", &addr_cells);
+	of_property_read_u32(root, "#size-cells", &size_cells);
+
+	if ((addr_cells + size_cells) > 4)
+		return -EINVAL;
 
 	node = of_create_node(root, "/framebuffer");
 	if (!node)
@@ -107,12 +113,11 @@ static int simplefb_create_node(struct device_node *root,
 		return ret;
 
 	screen_base = virt_to_phys(fbi->screen_base);
-	if (upper_32_bits(screen_base))
-		return -ENOSYS;
 
-	cells[0] = cpu_to_be32(lower_32_bits(screen_base));
-	cells[1] = cpu_to_be32(fbi->line_length * fbi->yres);
-	ret = of_set_property(node, "reg", cells, sizeof(cells[0]) * 2, 1);
+	of_write_number(cells, screen_base, addr_cells);
+	of_write_number(cells + addr_cells, fbi->screen_size, size_cells);
+
+	ret = of_set_property(node, "reg", cells, sizeof(cells[0]) * (addr_cells + size_cells), 1);
 	if (ret < 0)
 		return ret;
 

-- 
2.47.3



