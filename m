Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h41Ys-0006QF-OG
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 10:56:40 +0000
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 13 Mar 2019 11:56:32 +0100
Message-Id: <20190313105635.22055-3-l.stach@pengutronix.de>
In-Reply-To: <20190313105635.22055-1-l.stach@pengutronix.de>
References: <20190313105635.22055-1-l.stach@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/6] ARM: zii-common: introduce RDU part-number based fixup
 abstraction
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>

From: Andrey Smirnov <andrew.smirnov@gmail.com>

Multiple generation of RDU boards from ZII come with slight hardware
variation that can be detected and fixed-up correctly based on part
number stored in EEPROMs that are accessible via RAVE SP.

In order to reduce common boilerplate between various RDU boards
introduce a bit of abstraction to allow declaring part-number specific
fixup in RDU board code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
lst: Move into zii-common location.
---
 arch/arm/boards/zii-common/Makefile   |  2 +-
 arch/arm/boards/zii-common/pn-fixup.c | 32 +++++++++
 arch/arm/boards/zii-common/pn-fixup.h | 93 +++++++++++++++++++++++++++
 3 files changed, 126 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/zii-common/pn-fixup.c
 create mode 100644 arch/arm/boards/zii-common/pn-fixup.h

diff --git a/arch/arm/boards/zii-common/Makefile b/arch/arm/boards/zii-common/Makefile
index 9decfe85fc13..057f2a89c647 100644
--- a/arch/arm/boards/zii-common/Makefile
+++ b/arch/arm/boards/zii-common/Makefile
@@ -1 +1 @@
-obj-y += switch-cmd.o
+obj-y += switch-cmd.o pn-fixup.o
diff --git a/arch/arm/boards/zii-common/pn-fixup.c b/arch/arm/boards/zii-common/pn-fixup.c
new file mode 100644
index 000000000000..a66519991776
--- /dev/null
+++ b/arch/arm/boards/zii-common/pn-fixup.c
@@ -0,0 +1,32 @@
+/*
+ * Copyright (C) 2019 Zodiac Inflight Innovation
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/nvmem-consumer.h>
+
+#include "pn-fixup.h"
+
+char *zii_read_part_number(const char *cell_name, size_t cell_size)
+{
+	struct device_node *np;
+
+	np = of_find_node_by_name(NULL, "device-info");
+	if (!np) {
+		pr_warn("No device information found\n");
+		return ERR_PTR(-ENOENT);
+	}
+
+	return nvmem_cell_get_and_read(np, cell_name, cell_size);
+}
diff --git a/arch/arm/boards/zii-common/pn-fixup.h b/arch/arm/boards/zii-common/pn-fixup.h
new file mode 100644
index 000000000000..39b848bd00d3
--- /dev/null
+++ b/arch/arm/boards/zii-common/pn-fixup.h
@@ -0,0 +1,93 @@
+/*
+ * Copyright (C) 2019 Zodiac Inflight Innovation
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __ZII_PN_FIXUP__
+#define __ZII_PN_FIXUP__
+
+struct zii_pn_fixup {
+	const char *pn;
+	void (*callback) (const struct zii_pn_fixup *fixup);
+};
+
+char *zii_read_part_number(const char *, size_t);
+/**
+ * __zii_process_fixups - Process array of ZII part number based fixups
+ *
+ * @__fixups: Array of part number base fixups
+ * @__cell_name: Name of the NVMEM cell containing the part number
+ * @__cell_size: Size of the NVMEM cell containing the part number
+ *
+ * NOTE: Keeping this code as a marcro allows us to avoid restricting
+ * the type of __fixups to an array of struct zii_pn_fixup. This is
+ * really convenient becuase it allows us to do things like
+ *
+ * struct zii_foo_fixup {
+ * 	struct zii_pn_fixup parent;
+ *	type1 custom_field_1
+ *	type2 custom_field_2
+ *      ...
+ * };
+ *
+ * ...
+ *
+ * const struct zii_foo_fixup foo_fixups[] = {
+ * 	{ fixup1 },
+ * 	{ fixup2 },
+ * 	{ fixup3 },
+ * };
+ *
+ * ...
+ *
+ * __zii_process_fixups(foo_fixups, "blah", BLAH_LENGTH);
+ *
+ * which allows us to have the most compact definition of array of
+ * fixups
+ */
+#define __zii_process_fixups(__fixups, __cell_name, __cell_size)	\
+	do {								\
+		char *__pn = zii_read_part_number(__cell_name,		\
+						  __cell_size);		\
+		const struct zii_pn_fixup *__fixup;			\
+		unsigned int __i;					\
+		bool __match_found = false;				\
+									\
+		if (WARN_ON(IS_ERR(__pn)))				\
+			break;						\
+									\
+		for (__i = 0; __i < ARRAY_SIZE(__fixups); __i++) {	\
+			__fixup =					\
+			  (const struct zii_pn_fixup *) &__fixups[__i]; \
+									\
+			if (strstr(__pn, __fixup->pn)) {		\
+				pr_debug("%s->%pS\n", __func__,		\
+					 __fixup->callback);		\
+				__match_found = true;			\
+				__fixup->callback(__fixup);		\
+			}						\
+		}							\
+		if (!__match_found)					\
+			pr_err("No config fixups found for P/N %s!\n", __pn); \
+		free(__pn);						\
+	} while (0)
+
+#define DDS_PART_NUMBER_SIZE	15
+#define LRU_PART_NUMBER_SIZE	15
+
+#define zii_process_dds_fixups(_fixups)		\
+	__zii_process_fixups(_fixups, "dds-part-number", DDS_PART_NUMBER_SIZE)
+
+#define zii_process_lru_fixups(_fixups)		\
+	__zii_process_fixups(_fixups, "lru-part-number", LRU_PART_NUMBER_SIZE)
+
+#endif	/* __ZII_PN_FIXUP__ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
