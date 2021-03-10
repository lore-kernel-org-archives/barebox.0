Delivery-date: Wed, 10 Mar 2021 14:31:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyvf-0001W3-0b
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:31:11 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyvd-0004qz-MU
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:31:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L89xkm3tLJfTIheHsLF4kdVTJWaGlFnfTcJIh/qRrCA=; b=HfgreOCXa9uY8K+88UZle9gl7
	KVYKDs0hrhVDKxxcXdtlfj1gy85IdLaeZXaK93jm08Bg7s4RmpHtiEMTnBiW2e9x7+l7rDPxk7sje
	7Flh+FLV9Y2kRCuq5Exc1WLb6dMSATl/ay7trPPgF9c9US2aeIQp+PCvsTuC2rzafxUiEpiarF18I
	D+Ux0khOZpihnqXYxU1ugiBEhyrLoMzaZhmJc2xr2z2uVt498A20hSv6Wnhe/Wr+0YXNZqERn1jVu
	bRBLzSTwCd9RSU0NRLDKnNHElltOsCPhCIOyUUr7RjhPRD4WMArBcmRHR7wgcEIVMTWFnaW6UZMkK
	dqtlitIVA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJyuO-006vUf-Kg; Wed, 10 Mar 2021 13:29:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJytG-006usN-Ie
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fr-Ro; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006cE-Le; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:22 +0100
Message-Id: <20210310132829.7662-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132842_794562_2448BCE0 
X-CRM114-Status: GOOD (  13.26  )
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
index 7a89cbe948..c9ede614a6 100644
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
@@ -224,6 +226,39 @@ int of_overlay_apply_tree(struct device_node *root,
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
index 74b82ae003..e43e225338 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1025,6 +1025,7 @@ struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay);
 int of_overlay_apply_tree(struct device_node *root,
 			  struct device_node *overlay);
+int of_overlay_apply_file(struct device_node *root, const char *filename);
 int of_register_overlay(struct device_node *overlay);
 int of_process_overlay(struct device_node *root,
 		    struct device_node *overlay,
@@ -1046,6 +1047,12 @@ static inline int of_overlay_apply_tree(struct device_node *root,
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

