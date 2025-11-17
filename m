Delivery-date: Mon, 17 Nov 2025 22:30:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL6nc-0026cB-1C
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 22:30:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vL6nb-0001fj-N8
	for lore@pengutronix.de; Mon, 17 Nov 2025 22:30:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gxh5t/93VUNT6Qy23Q18vZfKUqvrcVe8WdNSHvPLXfs=; b=0jaUDyYEuW0kMabwaKV8n5C9MX
	K3bFsFPytjnXB6N4kMkDedGOi1fasDHvedxZgJ+nDivmnMSDizcnASV2yaICPPAzTp9odPEmYXNDA
	JXFKZxuQ8/KhcqpVYaSmvsldIQJxzEWckbqfnR/zwc5ZsObJg/L3vlFWY+Zq5C1kWukl/bDGst0Jx
	fS2wuq+mR/paIJhvP7tHs94nYnpOCHTSIbGrnwLLdW5pzrGGaw/Aa2/v6eISbZcjXuj3lJJ+lNdkY
	hChw6NofI06wfrBRSD5QbbaLikKUIg5Y05DKyjIZwB7PYbQMHLQTTqm+OIXZxj3bWsOfkH/TgkGum
	kdCLgXOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL6n1-0000000GsnV-1TK4;
	Mon, 17 Nov 2025 21:29:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL6my-0000000GsmF-1txN
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 21:29:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6mv-0001Sd-3f; Mon, 17 Nov 2025 22:29:29 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6mu-000ybk-2u;
	Mon, 17 Nov 2025 22:29:28 +0100
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1vL6mu-00000000iB2-3Uv9;
	Mon, 17 Nov 2025 22:29:28 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon, 17 Nov 2025 22:29:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-simplefb-fixup-v1-3-7824d99b3fb3@pengutronix.de>
References: <20251117-simplefb-fixup-v1-0-7824d99b3fb3@pengutronix.de>
In-Reply-To: <20251117-simplefb-fixup-v1-0-7824d99b3fb3@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1730;
 i=m.grzeschik@pengutronix.de; h=from:subject:message-id;
 bh=YEdPk3Zh0x4hJ5It5EfgmD0AlW2ogXmMOwtUTtvnEAw=;
 b=owEBbQKS/ZANAwAKAb9pWET5cfSrAcsmYgBpG5O44NQmaBqj5efQu7wgvblbaOtU6yuxlM7C2
 XzV3/b36ciJAjMEAAEKAB0WIQQV2+2Fpbqd6fvv0Gi/aVhE+XH0qwUCaRuTuAAKCRC/aVhE+XH0
 q/kvD/9ldY5rKEHL1t7vgwXQ6lZk95LvzottrGkZXYGy+nIEyLZO2haNSt/Jdz9ttgeFTAbmGYT
 JnSPltMmnen+xc4rTVCj6AjJ4oEZe8srX19k/9Q4IyhVlCo6NPKYXcSq4pb6LpkTIGCp7P8sNTE
 ob0B5Vcva7fMNwIDeABOckHDfHqGQTaRhS4Sl9VPMhzixxpBdaLrcmygRfnPNkSiS88j6/HCEpj
 s3o1wAWfAwm0jPy8m2drkQ/UY/2Fe8Ualfm7bJpZak68JSewPX7O71widX4gOxQCQtTTz69NzLr
 VdJyLj21yMPljbhGx9d0zkU99HDI8FSQ1OtC6FoYeJCh2okk7cYd/4ZAI3T0qdPxCYSMzTZWjRC
 enxByI0DxRxGGwi+K0JCEdXQbcC9zqgaT+fUmvxNYx8cnBoQ130BMr9lmpc66Hgq3yBMfXKXZIQ
 6UHo6bevK/F7XHcJMLt4UTxKMoOEEv+pCKX+V7wn0HP+69qgtfaBDQJKPsWRwT8ckuKNinLs3rI
 IH9TsRMvTPSuhClLE1u5Y0X5VbUky7ybl1os1q2jfLXGc466hcMOo4ViSz5W7SCfm5pBTt/E3bb
 LRbdHpOj32+xpKKTXzfrQdiykqushBatIqdqMY56aYPzwhvlnL/s0Zp+kMZcydhQ892SmxbQGKH
 miGzewtYpm46wAw==
X-Developer-Key: i=m.grzeschik@pengutronix.de; a=openpgp;
 fpr=957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_132932_496957_11EFAA4A 
X-CRM114-Status: GOOD (  12.53  )
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
Subject: [PATCH 3/3] simplefb-fixup: add reserved memory-region entry for
 the simple-framebuffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The modern way to describe an reserved memory region is to place an
entry in the reserved-memory nodes. Using the of_fixup_reserved_memory
this is simply done.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/video/simplefb-fixup.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/video/simplefb-fixup.c b/drivers/video/simplefb-fixup.c
index 9b39e1ef46d84eed61242119251d340b44d59a6e..e20f2922445bddcb13a049b2581c4c632289d6ee 100644
--- a/drivers/video/simplefb-fixup.c
+++ b/drivers/video/simplefb-fixup.c
@@ -13,6 +13,7 @@
 #include <fb.h>
 #include <fcntl.h>
 #include <fs.h>
+#include <of.h>
 #include <init.h>
 #include <xfuncs.h>
 
@@ -93,6 +94,7 @@ static int simplefb_create_node(struct device_node *root,
 	phys_addr_t screen_base;
 	__be32 cells[4];
 	int addr_cells = 2, size_cells = 1, ret;
+	struct resource res = { };
 
 	of_property_read_u32(root, "#address-cells", &addr_cells);
 	of_property_read_u32(root, "#size-cells", &size_cells);
@@ -121,6 +123,12 @@ static int simplefb_create_node(struct device_node *root,
 	if (ret < 0)
 		return ret;
 
+	res.name = "simple-framebuffer";
+	res.flags |= IORESOURCE_BUSY;
+	resource_set_range(&res, screen_base, fbi->screen_size);
+
+	of_fixup_reserved_memory(root, &res);
+
 	cells[0] = cpu_to_be32(fbi->xres);
 	ret = of_set_property(node, "width", cells, sizeof(cells[0]), 1);
 	if (ret < 0)
@@ -140,8 +148,6 @@ static int simplefb_create_node(struct device_node *root,
 	if (ret < 0)
 		return ret;
 
-	of_add_reserve_entry(screen_base, screen_base + fbi->screen_size);
-
 	return of_property_write_string(node, "status", "okay");
 }
 

-- 
2.47.3



