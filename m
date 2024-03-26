Delivery-date: Tue, 26 Mar 2024 11:08:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jn-0051nT-2q
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:08:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jm-0002x1-RY
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:08:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qrP6gJW5gOgO8i5rn2qcMZGci91H5Mm8F8TWNjlRajQ=; b=tIkSX91da89MpqVsS4n4GSmUcG
	Drc4AwfyUTqq6zhnW8eT6aD4IR1+t09ue+tJJzNgzT+Pa/8NiThOWQNK4+Y2XDza9hpaan6O7886t
	KAbLHkcMndbYdJwAxBpzxS1zkngSCQBKXmVakokPVwuz7TA1G/FhDdSFubnOyup/JAtA2cr1jqV84
	MUOlR/ck6jmQc1wSKGeluHQ5CmJ0gkZuGHgNj4sUcuGRsVkZQEkJa72a0ufBmFL6KOZoNOoiQ0Iim
	UrwfqckveEGo36FItVUxnI/YZLxuY2io7j/uT6SZzO8Qu8ujAeTQfcTotigWlkZT07B5OYH0+Z9er
	5wncse+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3iy-00000003xdG-0EBM;
	Tue, 26 Mar 2024 10:08:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3ii-00000003xRp-07jM
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:07:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-0002G1-Jk; Tue, 26 Mar 2024 11:07:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-008b0a-6d; Tue, 26 Mar 2024 11:07:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-00202A-0K;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:34 +0100
Message-Id: <20240326100746.471532-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_030752_367763_428706D2 
X-CRM114-Status: GOOD (  19.34  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/16] add support for resource lists
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux has support for resource_lists. These are for collecting resources
along with a translation offset on a list. Copy it over to barebox for
use in our pci support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/resource.c            | 16 +++++++
 include/linux/resource_ext.h | 81 ++++++++++++++++++++++++++++++++++++
 2 files changed, 97 insertions(+)
 create mode 100644 include/linux/resource_ext.h

diff --git a/common/resource.c b/common/resource.c
index 8678609229..76f19de494 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -10,6 +10,7 @@
 #include <init.h>
 #include <linux/ioport.h>
 #include <linux/err.h>
+#include <linux/resource_ext.h>
 #include <asm/io.h>
 
 static int init_resource(struct resource *res, const char *name)
@@ -164,3 +165,18 @@ struct resource *request_ioport_region(const char *name,
 
 	return res;
 }
+
+struct resource_entry *resource_list_create_entry(struct resource *res,
+						  size_t extra_size)
+{
+	struct resource_entry *entry;
+
+	entry = kzalloc(sizeof(*entry) + extra_size, GFP_KERNEL);
+	if (entry) {
+		INIT_LIST_HEAD(&entry->node);
+		entry->res = res ? res : &entry->__res;
+	}
+
+	return entry;
+}
+EXPORT_SYMBOL(resource_list_create_entry);
diff --git a/include/linux/resource_ext.h b/include/linux/resource_ext.h
new file mode 100644
index 0000000000..ff0339df56
--- /dev/null
+++ b/include/linux/resource_ext.h
@@ -0,0 +1,81 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2015, Intel Corporation
+ * Author: Jiang Liu <jiang.liu@linux.intel.com>
+ */
+#ifndef _LINUX_RESOURCE_EXT_H
+#define _LINUX_RESOURCE_EXT_H
+#include <linux/types.h>
+#include <linux/list.h>
+#include <linux/ioport.h>
+#include <linux/slab.h>
+
+/* Represent resource window for bridge devices */
+struct resource_win {
+	struct resource res;		/* In master (CPU) address space */
+	resource_size_t offset;		/* Translation offset for bridge */
+};
+
+/*
+ * Common resource list management data structure and interfaces to support
+ * ACPI, PNP and PCI host bridge etc.
+ */
+struct resource_entry {
+	struct list_head	node;
+	struct resource		*res;	/* In master (CPU) address space */
+	resource_size_t		offset;	/* Translation offset for bridge */
+	struct resource		__res;	/* Default storage for res */
+};
+
+extern struct resource_entry *
+resource_list_create_entry(struct resource *res, size_t extra_size);
+extern void resource_list_free(struct list_head *head);
+
+static inline void resource_list_add(struct resource_entry *entry,
+				     struct list_head *head)
+{
+	list_add(&entry->node, head);
+}
+
+static inline void resource_list_add_tail(struct resource_entry *entry,
+					  struct list_head *head)
+{
+	list_add_tail(&entry->node, head);
+}
+
+static inline void resource_list_del(struct resource_entry *entry)
+{
+	list_del(&entry->node);
+}
+
+static inline void resource_list_free_entry(struct resource_entry *entry)
+{
+	kfree(entry);
+}
+
+static inline void
+resource_list_destroy_entry(struct resource_entry *entry)
+{
+	resource_list_del(entry);
+	resource_list_free_entry(entry);
+}
+
+#define resource_list_for_each_entry(entry, list)	\
+	list_for_each_entry((entry), (list), node)
+
+#define resource_list_for_each_entry_safe(entry, tmp, list)	\
+	list_for_each_entry_safe((entry), (tmp), (list), node)
+
+static inline struct resource_entry *
+resource_list_first_type(struct list_head *list, unsigned long type)
+{
+	struct resource_entry *entry;
+
+	resource_list_for_each_entry(entry, list) {
+		if (resource_type(entry->res) == type)
+			return entry;
+	}
+	return NULL;
+}
+
+#endif /* _LINUX_RESOURCE_EXT_H */
-- 
2.39.2



