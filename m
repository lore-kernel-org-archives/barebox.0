Delivery-date: Fri, 22 Mar 2024 17:50:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6D-0007LX-0F
	for lore@lore.pengutronix.de;
	Fri, 22 Mar 2024 17:50:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6C-0002Ms-7f
	for lore@pengutronix.de; Fri, 22 Mar 2024 17:50:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iigjzgSgREIgETZRAmCNCOxjElv3Y6DlDievAxCc6EY=; b=v0YcN2Osx3oPoAtjQ5JB2LV+u8
	sIJRkS41fm4Xy73APAf+Flkx5y36lJKPfeU7ky/QVmutuLZdSZXYmtCe4NeAfRLIgm7saVIxRq9y0
	imRRprhvZ/2o7Dy52tQUMK5Utz2Rp/uJhgk+b7tLLFlHSXBPglRSdHYLPHwklPSjM1Axg/j+KKRor
	YiktrzPFyN4DBO5czc1FEltw/cOJcFcy0KdqzHA0yf2oBW+oa9F+TzlcNuzxtXiQNcsov1tD/q+Vf
	zPHDGsloSnVdfM5p/QOiPFbvVfCr4PUD8fJGSs79EIFSkUWaLhEBXABSVXM/Jsad3mZznw7eb9H5C
	lisDqoag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5j-000000081Bh-1tQl;
	Fri, 22 Mar 2024 16:50:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5c-0000000816t-3bt7
	for barebox@lists.infradead.org;
	Fri, 22 Mar 2024 16:49:59 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rni5b-0001y5-Ns
	for barebox@lists.infradead.org; Fri, 22 Mar 2024 17:49:55 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 Mar 2024 17:49:47 +0100
Message-Id: <20240322164953.1772129-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240322164953.1772129-1-m.felsch@pengutronix.de>
References: <20240322164953.1772129-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_094957_008793_FF375608 
X-CRM114-Status: GOOD (  12.91  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/8] FIT: skip possible overlay config nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The FIT spec is not very specific when it comes to device-tree overlay
handling. Overlays can be added directely to an config node:

	config-a {
		compatible = "machine-compatible";
		kernel = "kernel-img-name";
		fdt = "fdt-base-name", "fdt-overlay1-name", "...";
	}

or they are supplied via dedicated config nodes:

	overlay-2 {
		fdt = "fdt-overlay2-name";
	}

Of course these config nodes can have compatibles as well:

	overlay-3 {
		compatible = "machine-compatible";
		fdt = "fdt-overlay3-name";
	}

The current fit_find_compatible_unit() code would skip the overlay node
if the config-a compatible has the same score as the overlay-3
compatible and if the overlay-3 config-node is listed after the config-a
config-node. But if the compatible of config-a config-node has a lower
score or the overlay-3 config-note is listed first (the spec does not
specify any order) we end up in taking the overlay-3 config-node instead
of config-a config-node.

Make to code more robust by skip all config nodes matching the pattern
from global.of.overlay.fitconfigpattern.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c | 26 +++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index b16752de05bc..bf1562315b40 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -7,6 +7,7 @@
 
 #define pr_fmt(fmt) "FIT: " fmt
 #include <common.h>
+#include <environment.h>
 #include <init.h>
 #include <bootm.h>
 #include <libfile.h>
@@ -14,6 +15,7 @@
 #include <digest.h>
 #include <of.h>
 #include <fs.h>
+#include <fnmatch.h>
 #include <malloc.h>
 #include <linux/ctype.h>
 #include <asm/byteorder.h>
@@ -715,6 +717,23 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
 	return ret;
 }
 
+static bool fit_config_is_overlay(struct device_node *conf_node)
+{
+	const char *overlay_pattern;
+	int no_match;
+
+	if (!IS_ENABLED(CONFIG_OF_OVERLAY))
+		return false;
+
+	overlay_pattern = getenv_nonempty("global.of.overlay.fitconfigpattern");
+	if (!overlay_pattern)
+		return false;
+
+	no_match = fnmatch(overlay_pattern, conf_node->name, 0);
+
+	return no_match ? false : true;
+}
+
 static int fit_find_compatible_unit(struct device_node *conf_node,
 				    const char **unit)
 {
@@ -733,7 +752,12 @@ static int fit_find_compatible_unit(struct device_node *conf_node,
 		return -ENOENT;
 
 	for_each_child_of_node(conf_node, child) {
-		int score = of_device_is_compatible(child, machine);
+		int score;
+
+		if (fit_config_is_overlay(child))
+			continue;
+
+		score = of_device_is_compatible(child, machine);
 		if (score > best_score) {
 			best_score = score;
 			*unit = child->name;
-- 
2.39.2



