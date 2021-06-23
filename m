Delivery-date: Wed, 23 Jun 2021 07:19:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvIp-0005Kl-5i
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 07:19:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvIo-00082b-5u
	for lore@pengutronix.de; Wed, 23 Jun 2021 07:19:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcNP7dW2oeiwIDs6o9M1zbWHMCc/VVroCeWxw5qinGo=; b=MzIg926wg7cQ4q
	dgBKI/g9YvmaXjzsxKBVv8gUo42hrtCMeEzlvawwBTjJKUrlu+hn/KVlKrsRcwTxWTt/9g/rZ2WG9
	pJaAxDzkpWxMHeK7W3DT9vRUKavzrTlGeJ7CktZnhHrx72rDLEiyBrvknPV4az7tgP5hV9dxAs0Tn
	u1l1hYoU4cnNAp+rzQiO+wLng9OTOQeSiDrPwjeNdPbIdvJnYHacKC9CO8ElLB78uk6c2fgauO5n6
	YKQMNnsL8J8Zdn1NSl3RcWoouWYl/Pn3acLDssabsArZO6RbPXfbEwiJ72RcHyx+Mte0Prrg7djmk
	2JPkEH1yg3zpTEwV4vwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvvHR-009NOD-W6; Wed, 23 Jun 2021 05:18:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvvFt-009MXj-Cj
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 05:16:54 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFc-0006rK-1R; Wed, 23 Jun 2021 07:16:36 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFa-0000Tj-U7; Wed, 23 Jun 2021 07:16:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 07:16:24 +0200
Message-Id: <20210623051632.30253-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210623051632.30253-1-s.hauer@pengutronix.de>
References: <20210623051632.30253-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_221653_463768_07648869 
X-CRM114-Status: GOOD (  14.08  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/17] overlay: only apply compatible trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds support for a global.of_overlay_compatible variable which is a
space separated list of compatible strings. Device tree overlays not
matching any won't be applied (unless the overlay doesn't have a
compatible property at all).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/overlay.c | 46 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 8f4ee3f0a2..d7738c08a0 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -11,6 +11,9 @@
 #include <common.h>
 #include <of.h>
 #include <errno.h>
+#include <globalvar.h>
+#include <magicvar.h>
+#include <string.h>
 
 static struct device_node *find_target(struct device_node *root,
 				       struct device_node *fragment)
@@ -160,6 +163,36 @@ static int of_overlay_apply_fragment(struct device_node *root,
 	return of_overlay_apply(target, overlay);
 }
 
+static char *of_overlay_compatible;
+
+static bool of_overlay_is_compatible(struct device_node *ovl)
+{
+	char *p, *n, *compatibles;
+	bool res = false;
+
+	if (!of_overlay_compatible || !*of_overlay_compatible)
+		return true;
+	if (!of_find_property(ovl, "compatible", NULL))
+		return true;
+
+	p = compatibles = xstrdup(of_overlay_compatible);
+
+	while ((n = strsep_unescaped(&p, " "))) {
+		if (!*n)
+			continue;
+
+		if (of_device_is_compatible(ovl, n)) {
+			res = true;
+			break;
+		}
+	}
+
+	free(compatibles);
+
+	return res;
+}
+
+
 /**
  * Apply the overlay on the passed devicetree root
  * @root: the devicetree onto which the overlay will be applied
@@ -172,6 +205,9 @@ int of_overlay_apply_tree(struct device_node *root,
 	struct device_node *fragment;
 	int err = 0;
 
+	if (!of_overlay_is_compatible(overlay))
+		return -ENODEV;
+
 	resolved = of_resolve_phandles(root, overlay);
 	if (!resolved)
 		return -EINVAL;
@@ -250,3 +286,13 @@ int of_register_overlay(struct device_node *overlay)
 {
 	return of_register_fixup(of_overlay_fixup, overlay);
 }
+
+static int of_overlay_init(void)
+{
+	globalvar_add_simple_string("of_overlay_compatible", &of_overlay_compatible);
+
+	return 0;
+}
+device_initcall(of_overlay_init);
+
+BAREBOX_MAGICVAR(global.of_overlay_compatible, "space separated list of compatibles an overlay must match");
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

