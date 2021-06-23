Delivery-date: Wed, 23 Jun 2021 07:19:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvIG-0005JL-D6
	for lore@lore.pengutronix.de; Wed, 23 Jun 2021 07:19:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvvIF-0007re-0w
	for lore@pengutronix.de; Wed, 23 Jun 2021 07:19:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uew0cn/8RNDBXzpNbeWilUB5ibsQDX6h5IU2kHkbnFQ=; b=QTjfR2WngoWQ2Q
	qXqeyNGz1rSK0+yOleF9w2AW2thv+jiu30A+F6abf6C92MyZVwcSYhBQczPddA7uW8cw6UQRH6F/n
	gVcXKXcwc+/vYywWm8L6Iy2rgEzoEYA9d2khPOPXMYKNmi5x507V99lEKdtyQhLXWW1oVD6Pryi86
	bmANufwlG2QwZ2nK9wwruqwzKl3bwdkEP9+wl37B/AHTzFehHPx9pgkCjhm+ponobEU3yrxF+OEuU
	iXng4zakMHCcySm+VGXKWsQXTXIXaoDSv7+/AWRNbbF3gaiEAeh1PTYcLGX3nTAwp85AHELctYe/e
	GVHXxGCq0X0lSwpA0heA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvvGq-009N9e-Kj; Wed, 23 Jun 2021 05:17:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvvFl-009MUN-Ep
 for barebox@lists.infradead.org; Wed, 23 Jun 2021 05:16:48 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFc-0006rL-69; Wed, 23 Jun 2021 07:16:36 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvvFa-0000UA-Uj; Wed, 23 Jun 2021 07:16:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 23 Jun 2021 07:16:25 +0200
Message-Id: <20210623051632.30253-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210623051632.30253-1-s.hauer@pengutronix.de>
References: <20210623051632.30253-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_221645_629731_60F83ACF 
X-CRM114-Status: GOOD (  13.05  )
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
Subject: [PATCH 10/17] overlay: Add of_overlay_apply_file()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A shortcut to of_overlay_apply_tree() which takes a filename rather than
an unflattened device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/overlay.c | 35 +++++++++++++++++++++++++++++++++++
 include/of.h         |  7 +++++++
 2 files changed, 42 insertions(+)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index d7738c08a0..754af0f57f 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -14,6 +14,8 @@
 #include <globalvar.h>
 #include <magicvar.h>
 #include <string.h>
+#include <libfile.h>
+#include <fs.h>
 
 static struct device_node *find_target(struct device_node *root,
 				       struct device_node *fragment)
@@ -227,6 +229,39 @@ int of_overlay_apply_tree(struct device_node *root,
 	return err;
 }
 
+int of_overlay_apply_file(struct device_node *root, const char *filename)
+{
+	void *fdt;
+	struct device_node *ovl;
+	size_t size;
+	int ret;
+
+	ret = read_file_2(filename, &size, &fdt, FILESIZE_MAX);
+	if (ret)
+		return ret;
+
+	ovl = of_unflatten_dtb(fdt, size);
+
+	free(fdt);
+
+	if (IS_ERR(ovl)) {
+		pr_err("Failed to unflatten %s: %pe\n", filename, ovl);
+		return PTR_ERR(ovl);
+	}
+
+	ret = of_overlay_apply_tree(root, ovl);
+	if (ret == -ENODEV)
+		pr_debug("Not applied %s (not compatible)\n", filename);
+	else if (ret)
+		pr_err("Cannot apply %s: %s\n", filename, strerror(-ret));
+	else
+		pr_info("Applied %s\n", filename);
+
+	of_delete_node(ovl);
+
+	return ret;
+}
+
 static int of_overlay_fixup(struct device_node *root, void *data)
 {
 	struct device_node *overlay = data;
diff --git a/include/of.h b/include/of.h
index cdf01d5b4d..c58d8de600 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1026,6 +1026,7 @@ struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay);
 int of_overlay_apply_tree(struct device_node *root,
 			  struct device_node *overlay);
+int of_overlay_apply_file(struct device_node *root, const char *filename);
 int of_register_overlay(struct device_node *overlay);
 int of_process_overlay(struct device_node *root,
 		    struct device_node *overlay,
@@ -1047,6 +1048,12 @@ static inline int of_overlay_apply_tree(struct device_node *root,
 	return -ENOSYS;
 }
 
+static inline int of_overlay_apply_file(struct device_node *root,
+					const char *filename)
+{
+	return -ENOSYS;
+}
+
 static inline int of_register_overlay(struct device_node *overlay)
 {
 	return -ENOSYS;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

