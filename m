Delivery-date: Wed, 03 Jan 2024 11:21:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyMw-001mmM-23
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:21:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyMv-0004Kd-EU
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:21:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ROoGrFP3h9Kmyoaw7A7L4mQ0bkNMcbsNoxd8/o5Y+Ho=; b=J1qMjf14Fdvqc2ihaW99V3hAgO
	oEVKpcApzEUltnz/79IE8ks+AryZR8Pi1qfLE6lsvnFIdrgRkvLSDgU71b4frRuMBV3Sk84LVHdgQ
	dGdfdFHKv5+2u276lPrexIL96Gu3C/jcNG3xQIYpBC2WsGuhDdLvtKGDATPc6WLGmRYtOfsILCfpE
	wJ2GdpOSSjbNliloL0vMmq9ksCBJRT42iil0ytUxYqUXrwcr8iaPPgla1SmAv9lVpDlG4WiZO43d0
	cixrcVSoIiBEy4v5zh95TTkzFvXB5r58j/SiqPcPd1XIsArDC/QnGR6wqLzEekkkyklGeVbMOKnrR
	UYIjJx1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyLv-00ANN9-0L;
	Wed, 03 Jan 2024 10:19:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyLo-00ANLx-1I
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:19:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyLm-000422-Vv; Wed, 03 Jan 2024 11:19:51 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyLm-0005x1-Jd; Wed, 03 Jan 2024 11:19:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyLm-00B2JG-1g;
	Wed, 03 Jan 2024 11:19:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:19:48 +0100
Message-Id: <20240103101948.2630473-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103101948.2630473-1-a.fatoum@pengutronix.de>
References: <20240103101948.2630473-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021955_168029_FC3C3570 
X-CRM114-Status: GOOD (  19.70  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] lib: add optional linked list debugging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When enabled, this outputs messages like:

  list_del corruption, 000000005fe4a9d0->next is LIST_POISON1 (0000000000000100)

which can be useful when debugging.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig        |  8 +++++
 include/linux/bug.h   | 17 +++++++++++
 lib/Kconfig.hardening | 10 +++++++
 lib/Makefile          |  1 +
 lib/list_debug.c      | 68 +++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 104 insertions(+)
 create mode 100644 lib/list_debug.c

diff --git a/common/Kconfig b/common/Kconfig
index c8c23a8e03a2..18ad01713293 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1704,6 +1704,14 @@ config DMA_API_DEBUG
 
 	  If unsure, say N.
 
+config DEBUG_LIST
+	bool "Debug linked list manipulation"
+	help
+	  Enable this to turn on extended checks in the linked-list
+	  walking routines.
+
+	  If unsure, say N.
+
 config PBL_BREAK
 	bool "Execute software break on pbl start"
 	depends on ARM && (!CPU_32v4T && !ARCH_TEGRA)
diff --git a/include/linux/bug.h b/include/linux/bug.h
index d8fc328a0706..8ea5f8d1b260 100644
--- a/include/linux/bug.h
+++ b/include/linux/bug.h
@@ -6,4 +6,21 @@
 #include <asm-generic/bug.h>
 #include <linux/build_bug.h>
 
+/*
+ * Since detected data corruption should stop operation on the affected
+ * structures. Return value must be checked and sanely acted on by caller.
+ */
+static inline __must_check bool check_data_corruption(bool v) { return v; }
+#define CHECK_DATA_CORRUPTION(condition, fmt, ...)			 \
+	check_data_corruption(({					 \
+		bool corruption = unlikely(condition);			 \
+		if (corruption) {					 \
+			if (IS_ENABLED(CONFIG_BUG_ON_DATA_CORRUPTION)) { \
+				panic(fmt, ##__VA_ARGS__);		 \
+			} else						 \
+				WARN(1, fmt, ##__VA_ARGS__);		 \
+		}							 \
+		corruption;						 \
+	}))
+
 #endif	/* _LINUX_BUG_H */
diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index 7f74d0d98a9c..28be42a27465 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -1,5 +1,15 @@
 menu "Hardening options"
 
+config BUG_ON_DATA_CORRUPTION
+	bool "Trigger a BUG when data corruption is detected"
+	select DEBUG_LIST
+	help
+	  Select this option if barebox should BUG when it encounters
+	  data corruption in its memory structures when they get checked
+	  for validity.
+
+	  If unsure, say N.
+
 config STACK_GUARD_PAGE
 	bool "Place guard page to catch stack overflows"
 	depends on ARM && MMU
diff --git a/lib/Makefile b/lib/Makefile
index 38204c8273e5..853d8870fe14 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -71,6 +71,7 @@ obj-$(CONFIG_FONTS)	+= fonts/
 obj-$(CONFIG_BAREBOX_LOGO)     += logo/
 obj-y			+= reed_solomon/
 obj-$(CONFIG_RATP)	+= ratp.o
+obj-$(CONFIG_DEBUG_LIST) += list_debug.o
 obj-y			+= list_sort.o
 obj-y			+= refcount.o
 obj-y			+= int_sqrt.o
diff --git a/lib/list_debug.c b/lib/list_debug.c
new file mode 100644
index 000000000000..7de4c709a391
--- /dev/null
+++ b/lib/list_debug.c
@@ -0,0 +1,68 @@
+/*
+ * Copyright 2006, Red Hat, Inc., Dave Jones
+ * Released under the General Public License (GPL).
+ *
+ * This file contains the linked list validation for DEBUG_LIST.
+ */
+
+#include <linux/export.h>
+#include <linux/list.h>
+#include <linux/bug.h>
+#include <linux/kernel.h>
+
+/*
+ * Check that the data structures for the list manipulations are reasonably
+ * valid. Failures here indicate memory corruption (and possibly an exploit
+ * attempt).
+ */
+
+bool __list_add_valid_or_report(struct list_head *new, struct list_head *prev,
+				struct list_head *next)
+{
+	if (CHECK_DATA_CORRUPTION(prev == NULL,
+			"list_add corruption. prev is NULL.\n") ||
+	    CHECK_DATA_CORRUPTION(next == NULL,
+			"list_add corruption. next is NULL.\n") ||
+	    CHECK_DATA_CORRUPTION(next->prev != prev,
+			"list_add corruption. next->prev should be prev (%px), but was %px. (next=%px).\n",
+			prev, next->prev, next) ||
+	    CHECK_DATA_CORRUPTION(prev->next != next,
+			"list_add corruption. prev->next should be next (%px), but was %px. (prev=%px).\n",
+			next, prev->next, prev) ||
+	    CHECK_DATA_CORRUPTION(new == prev || new == next,
+			"list_add double add: new=%px, prev=%px, next=%px.\n",
+			new, prev, next))
+		return false;
+
+	return true;
+}
+EXPORT_SYMBOL(__list_add_valid_or_report);
+
+bool __list_del_entry_valid_or_report(struct list_head *entry)
+{
+	struct list_head *prev, *next;
+
+	prev = entry->prev;
+	next = entry->next;
+
+	if (CHECK_DATA_CORRUPTION(next == NULL,
+			"list_del corruption, %px->next is NULL\n", entry) ||
+	    CHECK_DATA_CORRUPTION(prev == NULL,
+			"list_del corruption, %px->prev is NULL\n", entry) ||
+	    CHECK_DATA_CORRUPTION(next == LIST_POISON1,
+			"list_del corruption, %px->next is LIST_POISON1 (%px)\n",
+			entry, LIST_POISON1) ||
+	    CHECK_DATA_CORRUPTION(prev == LIST_POISON2,
+			"list_del corruption, %px->prev is LIST_POISON2 (%px)\n",
+			entry, LIST_POISON2) ||
+	    CHECK_DATA_CORRUPTION(prev->next != entry,
+			"list_del corruption. prev->next should be %px, but was %px. (prev=%px)\n",
+			entry, prev->next, prev) ||
+	    CHECK_DATA_CORRUPTION(next->prev != entry,
+			"list_del corruption. next->prev should be %px, but was %px. (next=%px)\n",
+			entry, next->prev, next))
+		return false;
+
+	return true;
+}
+EXPORT_SYMBOL(__list_del_entry_valid_or_report);
-- 
2.39.2



