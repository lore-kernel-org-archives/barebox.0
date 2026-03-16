Delivery-date: Mon, 16 Mar 2026 20:46:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Dtp-001Xuy-10
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 20:46:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2Dto-0005gP-Kc
	for lore@pengutronix.de; Mon, 16 Mar 2026 20:46:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dIfMYuH62iohIy453lI0tIAzdZhHb/ZSrSWI/Zvubfs=; b=4TEDJZk2Tl+deMpLcB3uwpxJzz
	mpbWVem0UeZ2XBIvj47aUa3Uv7UzinCRtEWQ56NwZprvWUEKx0eAxSH0ICQn+enVAUO0mwhYrFHcW
	/JobQ/tRE639pUTJMiglMTseG06DNJi+9AFzHsJKEXKkWy00HKOIXDsPcVnhP9Rm6kPlxPBpaflcK
	BDYZF/gAxLbCVExNuN4mKEPiBrSIgu1MJWykpIYoCn9LX3gL32Ko/jJQFQfrn9XC1xCIpGsc8kLSp
	yHBZKzRsf1LxTTTRoXYi5KWxR8L5JkqRyUY/0RkY4P88RxGWOqEp/8AIqK/d80/BeEmGwUFuBLvt0
	XM7gqFVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2DtD-00000004mNj-2y2U;
	Mon, 16 Mar 2026 19:46:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2DtB-00000004mMa-0zr2
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 19:46:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2Dt8-0005Zc-SH; Mon, 16 Mar 2026 20:46:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2Dt7-000ceB-29;
	Mon, 16 Mar 2026 20:46:05 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2Dt7-000000041Bg-2OSG;
	Mon, 16 Mar 2026 20:46:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Mar 2026 20:29:42 +0100
Message-ID: <20260316194604.944486-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_124609_277821_B409586B 
X-CRM114-Status: GOOD (  20.28  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] FIT: handle hashed-nodes property not being in hashed nodes order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Despite hashed-nodes no longer being used to determine which nodes to
hash, we still refer to it to improve the error message on hashed-nodes
mismatch.

mkimage(1) hashes properties in the order they appear in the node, which
is the order of the properties in the ITS device tree source.

Unfortunately, the order of entries in the hashed-nodes property is not
the same order that nodes are actually hashed in, but instead, the
ordering is controlled by the sign-images property, an unsorted list of
nodes to hash that's only interpreted by mkimage.

This breaks booting valid FITs that have sign-images in different order
than the properties like those generates by PTXdist's
scripts/lib/ptxd_make_fit_image.sh:

conf-${compatible} {
	kernel = "kernel";
	ramdisk = "initramfs";
	fdt = "fdt-${compatible}";

	signature-1 {
		sign-images = "fdt", "kernel", "ramdisk";
	};
};

Fix this by looking up strings in the device tree property value at any
location. Also, move this, so it's only done on error;
This saves time in the usual case, but more importantly
makes the code easier to reason about.

Example output (shortened)

  barebox@board:/ bootm -v /mnt/tftp/fit
  FIT: configuration 'conf-myboard': 0 Linux kernel, FDT blob, ramdisk
  signature-1 {
          hashed-nodes = /* ... */;
  };
  FIT: Key [...] (fit) -> signature BAD
  ERROR: FIT: image signature BAD: verification failed
  ERROR: FIT: /configurations/conf-myboard/signature-1/hashed-nodes: '/images/fdt-myboard' is missing
  ERROR: FIT: /configurations/conf-myboard/signature-1/hashed-nodes: '/images/fdt-myboard/hash-1' is missing
  ERROR: Cannot open FIT image configuration 'default'
  ERROR: Loading FIT image failed with: error 74
  handler failed with: error 74

Fixes: 55f25be5223b ("FIT: reconstruct hashed-nodes property during verification")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c | 59 +++++++++++++++++++---------------------------
 1 file changed, 24 insertions(+), 35 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index b78dee9e65a8..7bc4665fcdbc 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -357,45 +357,36 @@ static int fit_config_build_hash_nodes(struct fit_handle *handle,
 	return 0;
 }
 
-static int fit_config_check_hash_nodes(struct device_node *sig_node,
-				       struct string_list *inc_nodes)
+/**
+ * fit_config_check_hash_nodes - Sanity check hashed-nodes
+ * @sig_node: Signature node of a FIT configuration
+ * @inc_nodes: String list of nodes included in the hash
+ *
+ * Check if the informational hashed-nodes property is cosistent with
+ * the list of nodes to hash that we calculated.
+ *
+ * We only do this if hash verification failed, so we can present a better
+ * error messages in some circumstances.
+ */
+static void fit_config_check_hash_nodes(struct device_node *sig_node,
+					struct string_list *inc_nodes)
 {
 	struct string_list *entry;
-	const char *node;
 	int ret, i = 0;
 
-	/*
-	 * Check if the hashed-nodes property matches the list of nodes we calculated.
-	 * We don't use the hashed-nodes property finally, but let's check for consistency
-	 * to inform the user if something is wrong.
-	 */
-
 	string_list_for_each_entry(entry, inc_nodes) {
-
-		ret = of_property_read_string_index(sig_node, "hashed-nodes", i, &node);
-		if (ret) {
-			pr_err("Cannot read hashed-node[%u]: %pe\n", i,
-			       ERR_PTR(ret));
-			return ret;
-		}
-
-		if (strcmp(entry->str, node)) {
-			pr_err("hashed-node[%u] doesn't match calculated node: %s != %s\n",
-			       i, entry->str, node);
-			return -EINVAL;
-		}
+		ret = of_property_match_string(sig_node, "hashed-nodes", entry->str);
+		if (ret < 0)
+			pr_err("%pOF/hashed-nodes: '%s' is missing\n", sig_node,
+			       entry->str);
 
 		i++;
 	}
 
-	ret = of_property_read_string_index(sig_node, "hashed-nodes", i,
-					    &node);
-	if (!ret) {
-		pr_err("hashed-nodes property has more entries than we calculated\n");
-		return -EINVAL;
-	}
-
-	return 0;
+	ret = of_property_count_strings(sig_node, "hashed-nodes");
+	if (ret != i)
+		pr_err("hashed-nodes property has more entries than calculated: %d != %d\n",
+		       ret, i);
 }
 
 /*
@@ -433,10 +424,6 @@ static int fit_verify_signature(struct fit_handle *handle,
 		goto out_sl;
 	}
 
-	ret = fit_config_check_hash_nodes(sig_node, &inc_nodes);
-	if (ret)
-		goto out_sl;
-
 	string_list_add(&exc_props, "data");
 
 	digest = fit_alloc_digest(sig_node, &algo);
@@ -454,8 +441,10 @@ static int fit_verify_signature(struct fit_handle *handle,
 	digest_final(digest, hash);
 
 	ret = fit_check_signature(handle, sig_node, algo, hash);
-	if (ret)
+	if (ret) {
+		fit_config_check_hash_nodes(sig_node, &inc_nodes);
 		goto out_free_hash;
+	}
 
 	ret = 0;
 
-- 
2.47.3



