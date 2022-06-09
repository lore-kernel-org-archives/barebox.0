Delivery-date: Thu, 09 Jun 2022 13:19:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzGCX-008hek-Hp
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 13:19:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzGCV-00016e-IF
	for lore@pengutronix.de; Thu, 09 Jun 2022 13:19:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Zm4992IuYCb50O2n/ga4uKXlAnYBWSMk2Wkzaw8/Ik=; b=CI55vIdMoXFB8j
	W0kSVAT/DANT4wc8L6ctxM1vaZDKdYkzIabnW7OMa0uW3URqBMgEI3yZZgEtKAdEQs2uT0I4fV0I6
	sFgpQS2ofzrP1vn1K77a0Kn3anok/3UT+g+DhmpG6qstjZ1Oy1xi+M27gLTGgclxMpmBfRHHDz0ON
	hX7YQAKkfsJQiwSivaWosYXkeYviqC8ohEL+vrUbe/mUPBWuGnqk6NIlwN8aVPB9VihLRHVxAQiBP
	OklZxo2f5njsCB56xXLB+a4CgKeG99cUWlMqCqtnTXwREJXbohO2Fp6i8nVOA8ceQ+ml9LtFRZ4+k
	c00n2+j6l2IdQ6G/Q1JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGBE-001EMo-Ad; Thu, 09 Jun 2022 11:18:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGB4-001EIF-DX
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 11:18:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzGB3-0000o0-7V; Thu, 09 Jun 2022 13:18:13 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzGB3-007N1G-TL; Thu, 09 Jun 2022 13:18:12 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzGB1-00AuRA-It; Thu, 09 Jun 2022 13:18:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 13:18:10 +0200
Message-Id: <20220609111810.2454588-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609111810.2454588-1-a.fatoum@pengutronix.de>
References: <20220609111810.2454588-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_041814_554032_135B34E3 
X-CRM114-Status: GOOD (  22.30  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/3] of: request reserved memory regions so other code can't
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add a new of_reserved_mem_walk that can be used to request
reserved memory regions. This avoids e.g. bootm trying to
place the kernel into a reserved region.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - don't use of_reserve_entry accounting and instead
    directly request memory (Sascha)
---
 common/memory.c           | 21 ++++++++++--
 drivers/of/Makefile       |  1 +
 drivers/of/reserved-mem.c | 71 +++++++++++++++++++++++++++++++++++++++
 include/of.h              |  9 +++++
 4 files changed, 99 insertions(+), 3 deletions(-)
 create mode 100644 drivers/of/reserved-mem.c

diff --git a/common/memory.c b/common/memory.c
index 95995bb6e310..fd782c7f24f6 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -3,6 +3,8 @@
  * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  */
 
+#define pr_fmt(fmt) "memory: " fmt
+
 #include <common.h>
 #include <memory.h>
 #include <of.h>
@@ -12,6 +14,7 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 #include <malloc.h>
+#include <of.h>
 
 /*
  * Begin and End of memory area for malloc(), and current "brk"
@@ -53,9 +56,20 @@ void mem_malloc_init(void *start, void *end)
 	mem_malloc_initialized = 1;
 }
 
-#if !defined __SANDBOX__
+static int request_reservation(const struct resource *res)
+{
+	if (!(res->flags & IORESOURCE_EXCLUSIVE))
+		return 0;
+
+	pr_debug("region %s %pa-%pa\n", res->name, &res->start, &res->end);
+
+	request_sdram_region(res->name, res->start, resource_size(res));
+	return 0;
+}
+
 static int mem_malloc_resource(void)
 {
+#if !defined __SANDBOX__
 	/*
 	 * Normally it's a bug when one of these fails,
 	 * but we have some setups where some of these
@@ -77,13 +91,14 @@ static int mem_malloc_resource(void)
 			(unsigned long)&__bss_start,
 			(unsigned long)&__bss_stop -
 			(unsigned long)&__bss_start);
+#endif
 #ifdef STACK_BASE
 	request_sdram_region("stack", STACK_BASE, STACK_SIZE);
 #endif
-	return 0;
+
+	return of_reserved_mem_walk(request_reservation);
 }
 coredevice_initcall(mem_malloc_resource);
-#endif
 
 static void *sbrk_no_zero(ptrdiff_t increment)
 {
diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index ca8da71cb4f0..99b610cba85e 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_OF_GPIO) += of_gpio.o
 obj-$(CONFIG_OF_PCI) += of_pci.o
 obj-y += partition.o
 obj-y += of_net.o
+obj-$(CONFIG_OFDEVICE) += reserved-mem.o
 obj-$(CONFIG_MTD) += of_mtd.o
 obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o
 obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o of_firmware.o
diff --git a/drivers/of/reserved-mem.c b/drivers/of/reserved-mem.c
new file mode 100644
index 000000000000..34e61dfea343
--- /dev/null
+++ b/drivers/of/reserved-mem.c
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2021 Rouven Czerwinski <r.czerwinski@pengutronix.de>, Pengutronix
+
+#include <stdio.h>
+#include <of.h>
+#include <of_address.h>
+
+#define MEMRESERVE_NCELLS	2
+#define MEMRESERVE_FLAGS	(IORESOURCE_MEM | IORESOURCE_EXCLUSIVE)
+
+int of_reserved_mem_walk(int (*handler)(const struct resource *res))
+{
+	struct device_node *node, *child;
+	int ncells = 0;
+	const __be32 *reg;
+	int ret;
+
+	node = of_find_node_by_path("/reserved-memory");
+	if (node) {
+		for_each_available_child_of_node(node, child) {
+			struct resource resource = {};
+
+			/* skip e.g. linux,cma */
+			if (!of_get_property(child, "reg", NULL))
+				continue;
+
+			of_address_to_resource(child, 0, &resource);
+
+			resource.name = child->name;
+			resource.flags = MEMRESERVE_FLAGS;
+
+			ret = handler(&resource);
+			if (ret)
+				return ret;
+		}
+	}
+
+	node = of_find_node_by_path("/memreserve");
+	reg = of_get_property(node, "reg", &ncells);
+	ncells /= sizeof(__be32);
+	if (reg) {
+		char name[sizeof "fdt-memreserve-4294967295"];
+		int i = 0, n = 0;
+
+		while (i < ncells) {
+			struct resource resource = {};
+			u64 size;
+
+			snprintf(name, sizeof(name), "fdt-memreserve-%u", n++);
+			resource.name = name;
+			resource.flags = MEMRESERVE_FLAGS;
+
+			resource.start = of_read_number(reg + i, MEMRESERVE_NCELLS);
+			i += MEMRESERVE_NCELLS;
+
+			size = of_read_number(reg + i, MEMRESERVE_NCELLS);
+			i += MEMRESERVE_NCELLS;
+
+			if (!size)
+				continue;
+
+			resource.end = resource.start + size - 1;
+
+			ret = handler(&resource);
+			if (ret)
+				return ret;
+		}
+	}
+
+	return 0;
+}
diff --git a/include/of.h b/include/of.h
index 46b96277d581..c0b715924a18 100644
--- a/include/of.h
+++ b/include/of.h
@@ -64,6 +64,7 @@ void fdt_add_reserve_map(void *fdt);
 
 struct device_d;
 struct driver_d;
+struct resource;
 
 int of_fix_tree(struct device_node *);
 
@@ -317,6 +318,9 @@ struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
 int of_autoenable_device_by_path(char *path);
 int of_autoenable_i2c_by_component(char *path);
 int of_prepend_machine_compatible(struct device_node *root, const char *compat);
+
+int of_reserved_mem_walk(int (*handler)(const struct resource *res));
+
 #else
 static inline bool of_node_name_eq(const struct device_node *np, const char *name)
 {
@@ -841,6 +845,11 @@ static inline int of_prepend_machine_compatible(struct device_node *root,
 	return -ENODEV;
 }
 
+static inline int of_reserved_mem_walk(int (*handler)(const struct resource *res))
+{
+	return 0;
+}
+
 #endif
 
 #define for_each_property_of_node(dn, pp) \
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

