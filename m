Delivery-date: Wed, 04 Feb 2026 21:02:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4q-008roQ-0j
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 21:02:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnj4n-0005x1-69
	for lore@pengutronix.de; Wed, 04 Feb 2026 21:02:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h48NZ33sqxMI1u69j1Etlhqyrpi51bY+I5B3LkVoID4=; b=oc9BWpWiuv5d3X8AI0F4L1lIbD
	NaKib+h9vr3ORby56e4EMfx0FcRJSsY+YyY1iByFI+7t76Fdxp9S911j+8Wym/BeEeUNHAOVxaxwv
	AuvzbngCKV5BNe31AnEXxbXMXq0xs/ZRpRVMnO6GRuJDG9VnuensJ7zsZUo4c/IrY2f8bUNkuhWxB
	q4RWX9MwESE9DKoGOK6FPD9XlaO1dHgjrCWo8GXWCbMJeWTZ4uvDoi8o0/uVnla6oCXL0mwoO+Ol1
	btq4HGZLUhzV/siEAWjluIa5mU7OUKR9o0rkV8i2oTNYvYGYxg4xbSbWLSD4Dyr+mxjPiec5Ly9b/
	SDpLB68A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj49-0000000914L-2zeW;
	Wed, 04 Feb 2026 20:01:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj42-000000090ys-3rxR
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 20:01:30 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vnj40-0005Eh-Ro; Wed, 04 Feb 2026 21:01:24 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 04 Feb 2026 21:01:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260204-v2025-09-0-topic-optee-of-handling-v2-5-da075e6818e0@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
In-Reply-To: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_120127_031292_CA86DE74 
X-CRM114-Status: GOOD (  12.88  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/15] pbl: fdt: add pbl_load_fdt helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The helper provides a common FDT load mechanism to load the (optional
compressed) DTB to the provided destination address in a user agnostic
manner.

Early FDTs may be useful for other firmware binaries like TEEs (e.g.
OP-TEE) which are loaded and started during the barebox boot phase.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/pbl.h |  2 ++
 pbl/fdt.c     | 79 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 81 insertions(+)

diff --git a/include/pbl.h b/include/pbl.h
index 14a463ef8a9f18e42a3332889ca8d9b30d8f1ceb..514f1143706785946e4190f23f95422f23df42e3 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -31,6 +31,8 @@ fdt_device_get_match_data(const void *fdt, const char *nodepath,
 
 int pbl_barebox_verify(const void *compressed_start, unsigned int len,
 		       const void *hash, unsigned int hash_len);
+int pbl_load_fdt(const void *fdt, void *dest, int destsize);
+
 #endif
 
 void __noreturn barebox_pbl_entry(ulong, ulong, void *);
diff --git a/pbl/fdt.c b/pbl/fdt.c
index ac377446caeafb1beaeb211aa8bdec8767ae21fe..3c90959f8e73ea7310248f9b31359d6e8a86ae57 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -1,8 +1,10 @@
 // SPDX-License-Identifier: GPL-2.0
+#include <compressed-dtb.h>
 #include <linux/libfdt.h>
 #include <pbl.h>
 #include <linux/printk.h>
 #include <stdio.h>
+#include <uncompress.h>
 
 static const __be32 *fdt_parse_reg(const __be32 *reg, uint32_t n,
 				   uint64_t *val)
@@ -185,3 +187,80 @@ const void *fdt_device_get_match_data(const void *fdt, const char *nodepath,
 
 	return NULL;
 }
+
+static int pbl_open_dtbz_into(const void *fdt, void *buf, int bufsize)
+{
+	const struct barebox_boarddata_compressed_dtb *compressed_dtb;
+	int error;
+
+	if (!fdt_blob_can_be_decompressed(fdt)) {
+		pr_warn("DTB can't be decompressed\n");
+		return -EINVAL;
+	}
+
+	compressed_dtb = fdt;
+
+	if (IS_ENABLED(CONFIG_IMAGE_COMPRESSION_NONE)) {
+		error = fdt_open_into(compressed_dtb->data, buf, bufsize);
+		if (error) {
+			pr_warn("Failed to open uncompressed DTB with %s\n",
+				fdt_strerror(error));
+			return -EINVAL;
+		}
+		return 0;
+	}
+
+	if (bufsize < compressed_dtb->datalen_uncompressed) {
+		pr_warn("FDT buffer to small, min. %u bytes required\n",
+			compressed_dtb->datalen_uncompressed);
+		return -EINVAL;
+	}
+
+	/*
+	 * No error handling required, since this will hang() if uncompress
+	 * fails.
+	 */
+	pbl_dtbz_uncompress(buf, (void *)compressed_dtb->data,
+			    compressed_dtb->datalen);
+
+	if (!blob_is_fdt(buf)) {
+		pr_warn("Failed to determine FDT type for uncompressed DTB\n");
+		return -EINVAL;
+	}
+
+	/* Required to setup size data structures to allow runtime adaptions */
+	error = fdt_open_into(buf, buf, bufsize);
+	if (error) {
+		pr_warn("Failed to open decompressed DTB with %s\n",
+			fdt_strerror(error));
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+int pbl_load_fdt(const void *fdt, void *dest, int destsize)
+{
+	if (destsize == 0 || !dest || !fdt) {
+		pr_warn("Skip early FDT load, invalid input\n");
+		return -EINVAL;
+	}
+
+	if (blob_is_fdt(fdt)) {
+		int error;
+
+		error = fdt_open_into(fdt, dest, destsize);
+		if (error) {
+			pr_warn("Failed to uncompressed DTB with %s\n",
+				fdt_strerror(error));
+			return -EINVAL;
+		}
+		return 0;
+	} else if (blob_is_compressed_fdt(fdt)) {
+		return pbl_open_dtbz_into(fdt, dest, destsize);
+	}
+
+	pr_warn("FDT detection failed\n");
+
+	return -EINVAL;
+}

-- 
2.47.3



