Delivery-date: Mon, 10 Nov 2025 21:35:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc7-00HVNZ-1K
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc4-0002ID-Co
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yJ3G7DdpHArVsFOdvkaC74v4h2rxuZrwR/vFSkZC3tA=; b=Wp26pXZ9OIGZrs16DpjmJWK+CJ
	tRlmn+1cZJ9LykVbOuRZlCZgRq0Dp4LXWs3tc36FSvhvlp0PY/sJU8ry9jrnFrPy3c4WdkQb89HOL
	FVid4fj5Ga1Zx2eFnGLYBpd6vp2bvVxGTBAqm4l9Ftx1ORtfpSKWGWHn58gc826HziTVOvH9G2VvP
	/stNADV08kjAfcVqvbo8XuFqDwKtC8lKzO81ZBh42ci2/itP20625g5k//MBqvsHmgsdphZf9Dbri
	cE407hTFLmhZvNOUYtsQDsWpbcMOVHJM69AWJMAICjRPXBudMaZSF/jZx9YUu42dB6UGWLTGJuMd4
	5a5F9w9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbK-000000065cn-2MqN;
	Mon, 10 Nov 2025 20:34:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbB-000000065SN-2ujR
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 20:34:54 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-Sf; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-16-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_123449_795011_13D12CCE 
X-CRM114-Status: GOOD (  11.09  )
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
Subject: [PATCH 16/23] pbl: fdt: add fdt_copy_node helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a helper to copy a node from a src FDT into a dest FDT. The helper
is used later on by OP-TEE because OP-TEE appends FTD overlay fragements
into the provided FTD.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/pbl.h |  2 ++
 pbl/fdt.c     | 82 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 84 insertions(+)

diff --git a/include/pbl.h b/include/pbl.h
index bf0c9e2ba29428361cb16a572295e66f20acdd82..0961b6b91e585a59a3e8facb1af261857cb6f57e 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -28,6 +28,8 @@ struct fdt_device_id {
 const void *
 fdt_device_get_match_data(const void *fdt, const char *nodepath,
 			  const struct fdt_device_id ids[]);
+int fdt_copy_node(const void *src_fdt, void *dest_fdt, const char *path,
+		  const char *nodename);
 
 int pbl_barebox_verify(const void *compressed_start, unsigned int len,
 		       const void *hash, unsigned int hash_len);
diff --git a/pbl/fdt.c b/pbl/fdt.c
index 0cd9f5a0f11723e9f9b6848e8553da481b92f2be..fa61c3c71298a2e036e0d324c09d452d8f0f7bbe 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -260,3 +260,85 @@ int pbl_load_fdt(const void *fdt, void *dest, int destsize)
 
 	return -EINVAL;
 }
+
+static int _fdt_copy_node(const void *src_fdt, const int src_node,
+			  void *dest_fdt, int dest_node)
+{
+	int property;
+	int subnode;
+
+	fdt_for_each_property_offset(property, src_fdt, src_node) {
+		const char *name;
+		const void *prop;
+		int prop_len;
+		int ret;
+
+		prop = fdt_getprop_by_offset(src_fdt, property, &name,
+					     &prop_len);
+		if (prop_len == -FDT_ERR_NOTFOUND)
+			return -FDT_ERR_INTERNAL;
+		if (prop_len < 0)
+			return prop_len;
+
+		ret = fdt_setprop(dest_fdt, dest_node, name, prop, prop_len);
+		if (ret)
+			return ret;
+	}
+
+	fdt_for_each_subnode(subnode, src_fdt, src_node) {
+		const char *name = fdt_get_name(src_fdt, subnode, NULL);
+		int node;
+		int ret;
+
+		node = fdt_add_subnode(dest_fdt, dest_node, name);
+		if (node == -FDT_ERR_EXISTS) {
+			node = fdt_subnode_offset(dest_fdt, dest_node, name);
+			if (node == -FDT_ERR_NOTFOUND)
+				return -FDT_ERR_INTERNAL;
+		}
+
+		if (node < 0)
+			return node;
+
+		ret = _fdt_copy_node(src_fdt, subnode, dest_fdt, node);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+int fdt_copy_node(const void *src_fdt, void *dest_fdt, const char *path,
+		  const char *nodename)
+{
+	int src_parent, src_node;
+	int dest_parent, dest_node;
+
+	pr_debug("Copy node %s%s\n", path, nodename);
+
+	src_parent = fdt_path_offset(src_fdt, path);
+	if (src_parent < 0) {
+		pr_err("Cannot find path: %s\n", fdt_strerror(src_parent));
+		return src_parent;
+	}
+
+	src_node = fdt_subnode_offset(src_fdt, src_parent, nodename);
+	if (src_node < 0) {
+		pr_err("Cannot find node: %s\n", fdt_strerror(src_node));
+		return src_node;
+	}
+
+	dest_parent = fdt_path_offset(dest_fdt, path);
+	if (dest_parent < 0) {
+		pr_err("Cannot find path: %s\n", fdt_strerror(dest_parent));
+		return dest_parent;
+	}
+
+	dest_node = fdt_add_subnode(dest_fdt, dest_parent, nodename);
+	if (dest_node < 0) {
+		pr_err("Failed to add node:%s with: %s\n", nodename, fdt_strerror(dest_node));
+		return dest_node;
+	}
+
+	return _fdt_copy_node(src_fdt, src_node, dest_fdt, dest_node);
+}

-- 
2.47.3



