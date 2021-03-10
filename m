Delivery-date: Wed, 10 Mar 2021 14:31:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyvy-0001X9-Pt
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:31:30 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyvy-00057K-0I
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:31:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lzeGjIdaEVAvlMnToXXTNd23yLaSPNChZuM4T4CVUdQ=; b=WbRvjPX1pM1HbyC/+qVs5J/eM
	cuGQh/S2M6BWLs4LMZNA8sykgVLoMrOZF1hOBAF6ndcCh3Y4OQK2UjpaMi0n7yP8XqBmXS79JE2xY
	rr8NzZcIuN85EogDs/F+mSSjGFbyrJWHtoDHAOhmoo/x3LU4fAHGTUZT+nrpTDvqL/OSnLf6HJj2L
	0cBVTeyBeX8cWunY5JncUG+PJSgNouBNAj5QoKIE9Bte3Uxw52lpa3m6Vq9Le95T3dyiuA/D9wRlB
	7XlVLmsPpcl/DYM2jdtAK1O7mVQ6VHjaOPk/LCG5xD77h1NutzoasvNtxYjZDQKaf8ZONuYHCXkxG
	3nttKgKmA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJyug-006vh8-75; Wed, 10 Mar 2021 13:30:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJytW-006uym-Gu
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:29:01 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fq-UZ; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006cB-LH; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:21 +0100
Message-Id: <20210310132829.7662-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132858_715065_705565B5 
X-CRM114-Status: GOOD (  14.05  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/17] overlay: only apply compatible trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds support for a global.of_overlay_compatible variable which is a
space separated list of compatible strings. Device tree overlays not
matching any won't be applied (unless the overlay doesn't have a
compatible property at all).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/overlay.c | 43 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 8f4ee3f0a2..7a89cbe948 100644
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
@@ -160,6 +163,33 @@ static int of_overlay_apply_fragment(struct device_node *root,
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
@@ -172,6 +202,9 @@ int of_overlay_apply_tree(struct device_node *root,
 	struct device_node *fragment;
 	int err = 0;
 
+	if (!of_overlay_is_compatible(overlay))
+		return -ENODEV;
+
 	resolved = of_resolve_phandles(root, overlay);
 	if (!resolved)
 		return -EINVAL;
@@ -250,3 +283,13 @@ int of_register_overlay(struct device_node *overlay)
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

