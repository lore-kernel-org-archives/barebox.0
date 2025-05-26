Delivery-date: Mon, 26 May 2025 16:39:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyk-000Y77-1H
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 16:39:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyi-0000yN-Qu
	for lore@pengutronix.de; Mon, 26 May 2025 16:39:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TmOTtx6yEEAn8WwiJ9rn+YYlYgkRU+A72M6E1EVTO+4=; b=iBcgwHXR5FO5Mxxx970xuryU3O
	tjcpKuLt6dRMaVloLXEtvWO/vDOIAvyCjjvN/sIK7koHVsseJWyOW/0GdpmV9Jgh8jbyCS0B0Le5x
	9X3GHaqpFAQi7vwCBnc1gHSUlubiKqah4KHq5G3CAYovwr9quPCldC3h6+PID/teoPfb8JqGtfxnS
	0iJqXhIK1ebL+aSpi/X83nzGBm8eOgLKi5cYRTq8t6BuTBlZtLKU4n+VTiu0TtRln3sXyjsJS3GB/
	31B5pQoczLMR6xhu8J+NFflDfZkpgWJ377WVuNG/A9WIJ2/IceTm/tY2yVZVDWpiNLjj6LtwWlNAp
	/YVSe0ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyE-000000092Mv-2WJR;
	Mon, 26 May 2025 14:38:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyA-000000092Jp-1LRQ
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 14:38:28 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uJYy7-0000OJ-V2; Mon, 26 May 2025 16:38:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 26 May 2025 16:38:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-rk3588-optee-v1-6-5004995cbd03@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
In-Reply-To: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_073826_403894_E25C249F 
X-CRM114-Status: GOOD (  15.02  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] PBL: fdt: add fdt_fixup_mem to fixup memory nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Board code in the PBL may use fdt_fixup_mem() to write the base
addresses and sizes of detected SDRAM to the fdt before passing the fdt
to other software like the TF-A and OP-TEE.

This is implemented on the fdt to avoid that the PBL needs to unpack the
device tree, use the of function for manipulation and repack the device
tree.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 include/pbl.h |  1 +
 pbl/fdt.c     | 71 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 72 insertions(+)

diff --git a/include/pbl.h b/include/pbl.h
index abac3458593af2cec972a54ce9fb69e344179670..b330010562c4aba5fccbb4c421bb95291fa0bea1 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -17,6 +17,7 @@ extern unsigned long free_mem_end_ptr;
 void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len);
 
 void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
+int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[], size_t num);
 
 struct fdt_device_id {
 	const char *compatible;
diff --git a/pbl/fdt.c b/pbl/fdt.c
index 3b1783152a8cb81f3eda1187b2f7bf998c4addf4..40564952acfcd88bef050966720e76b7378bc720 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -2,6 +2,7 @@
 #include <linux/libfdt.h>
 #include <pbl.h>
 #include <linux/printk.h>
+#include <stdio.h>
 
 static const __be32 *fdt_parse_reg(const __be32 *reg, uint32_t n,
 				   uint64_t *val)
@@ -73,6 +74,76 @@ void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsiz
 	while (1);
 }
 
+int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[], size_t num)
+{
+	int na, ns;
+	int node, root;
+	int err;
+	int i;
+
+	err = fdt_check_header(fdt);
+	if (err != 0) {
+		pr_err("Invalid device tree blob\n");
+		return err;
+	}
+
+	root = fdt_path_offset(fdt, "/");
+	if (root < 0) {
+		pr_err("Cannot find root node: %s\n", fdt_strerror(root));
+		return root;
+	}
+
+	na = fdt_address_cells(fdt, root);
+	if (na < 0) {
+		pr_err("Cannot find #address-cells property: %s\n",
+		       fdt_strerror(na));
+		return na;
+	}
+
+	ns = fdt_size_cells(fdt, root);
+	if (ns < 0) {
+		pr_err("Cannot find #size-cells property: %s\n",
+				fdt_strerror(ns));
+		return ns;
+	}
+
+	for (i = 0; i < num; i++) {
+		char name[32];
+
+		if (membase[i] == 0 || memsize[i] == 0)
+			continue;
+
+		snprintf(name, sizeof(name), "memory@%lx", membase[i]);
+		node = fdt_add_subnode(fdt, root, name);
+		if (node < 0) {
+			pr_err("Cannot to add node %s: %s\n",
+			       name, fdt_strerror(node));
+			err = node;
+			break;
+		}
+
+		pr_debug("Add memory node %s (0x%lx, size 0x%lx)\n",
+			 name, membase[i], memsize[i]);
+
+		err = fdt_setprop(fdt, node,
+				  "device_type", "memory", sizeof("memory"));
+		if (err < 0) {
+			pr_err("%s: Cannot set device_type: %s\n",
+			       name, fdt_strerror(err));
+			return err;
+		}
+
+		err = fdt_appendprop_addrrange(fdt, root, node, "reg", membase[i], memsize[i]);
+		if (err < 0) {
+			pr_err("Failed to fixup memory %lx %lx: %s\n",
+			       membase[i], memsize[i], fdt_strerror(err));
+			continue;
+		}
+	}
+
+	return err;
+}
+
 const void *fdt_device_get_match_data(const void *fdt, const char *nodepath,
 				      const struct fdt_device_id ids[])
 {

-- 
2.39.5



