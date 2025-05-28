Delivery-date: Wed, 28 May 2025 16:20:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHdz-001DQR-2J
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:20:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHdy-0007kp-Ne
	for lore@pengutronix.de; Wed, 28 May 2025 16:20:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xa1uAJic2lpD1DKdStWA59IlqS8m49EcShxh9uVfEyY=; b=z49XcDjMvgjgJgC/NMLyu2kC1i
	30vZauBcv2YXP0y9b5+hwuVdc/MjfQEU1ogG/+BArt7ENmIQV0jFdsHMujttXt4MT/gxaSWHcfnZ1
	1y7aK2vbGqhpcq5yYJCSpHCguZGBORCQMS39+SGo2TehffPOY8Rrlyfp9d7tbhryAxGwvGSyCYW43
	L57f3RMdYPMwoI4wn2EJDESgwo2UKWu4ziZACCjbEh1TCDAjVgOkL/TF7FowgMuv7h1ITJ/qNBJJr
	HjY6pKOtlFl1sRuaNvwqs2RLOj5RzPOv950+Y9yrqcqNMLpreQ0cxnKkD9Tysz15F3eGq16wrtume
	Dpcr26Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHdP-0000000DNBP-2Zu3;
	Wed, 28 May 2025 14:19:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHVL-0000000DKyK-2Kin
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:11:42 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uKHVI-00011O-SO; Wed, 28 May 2025 16:11:36 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 28 May 2025 16:11:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-rk3588-optee-v2-5-63070238dd13@pengutronix.de>
References: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
In-Reply-To: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_071139_669285_8372CC3B 
X-CRM114-Status: GOOD (  17.57  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/9] PBL: fdt: add fdt_fixup_mem to fixup memory nodes
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
Changes in v2:
- drop unused na and ns
- fixup existing memory nodes if possible
- remove existing memory nodes without @address postfix
- print error reason for invalid device tree blob
---
 include/pbl.h |  1 +
 pbl/fdt.c     | 78 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 79 insertions(+)

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
index 3b1783152a8cb81f3eda1187b2f7bf998c4addf4..c9820112c6442b65d4f462c93b6847442097c5ab 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -2,6 +2,7 @@
 #include <linux/libfdt.h>
 #include <pbl.h>
 #include <linux/printk.h>
+#include <stdio.h>
 
 static const __be32 *fdt_parse_reg(const __be32 *reg, uint32_t n,
 				   uint64_t *val)
@@ -73,6 +74,83 @@ void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsiz
 	while (1);
 }
 
+static int fdt_find_or_add_memory(void *fdt, int parentoffset, const char *name)
+{
+	int err;
+	int node;
+
+	node = fdt_subnode_offset(fdt, parentoffset, name);
+	if (node != -FDT_ERR_NOTFOUND)
+		return node;
+
+	/* Create new memory node */
+	node = fdt_add_subnode(fdt, parentoffset, name);
+	if (node < 0)
+		return node;
+	err = fdt_setprop(fdt, node, "device_type", "memory", sizeof("memory"));
+	if (err < 0)
+		return err;
+
+	return node;
+}
+
+int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[],
+		  size_t num)
+{
+	int node, root;
+	int err;
+	int i;
+
+	err = fdt_check_header(fdt);
+	if (err != 0) {
+		pr_err("Invalid device tree blob: %s\n", fdt_strerror(err));
+		return err;
+	}
+
+	root = fdt_path_offset(fdt, "/");
+	if (root < 0) {
+		pr_err("Cannot find root node: %s\n", fdt_strerror(root));
+		return root;
+	}
+
+	/* Delete memory node without @address postfix */
+	node = fdt_subnode_offset(fdt, root, "memory");
+	if (node >= 0)
+		fdt_del_node(fdt, node);
+
+	for (i = 0; i < num; i++) {
+		unsigned long base = membase[i];
+		unsigned long size = memsize[i];
+		char name[32];
+
+		if (size == 0)
+			continue;
+
+		snprintf(name, sizeof(name), "memory@%lx", base);
+		node = fdt_find_or_add_memory(fdt, root, name);
+		if (!node) {
+			pr_warn("%s: Failed to get node: %s\n",
+				name, fdt_strerror(err));
+			continue;
+		}
+
+		/* Add or rewrite the reg property */
+		fdt_delprop(fdt, node, "reg");
+		err = fdt_appendprop_addrrange(fdt, root, node, "reg",
+					       base, size);
+		if (err < 0) {
+			pr_warn("%s: Failed to set reg property %lx %lx: %s\n",
+				name, base, size, fdt_strerror(err));
+			continue;
+		}
+
+		/* Remove status property to ensure the node is enabled */
+		fdt_delprop(fdt, node, "status");
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



