Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtRkG-0007LZ-Ms
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 06:40:45 +0000
Received: by mail-pl1-x644.google.com with SMTP id p4so808936plq.11
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2019 22:40:40 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Feb 2019 22:40:20 -0800
Message-Id: <20190212064022.26154-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190212064022.26154-1-andrew.smirnov@gmail.com>
References: <20190212064022.26154-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/8] include: Import uuid.h for Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Import uuid.h for Linux as a requirement for NVMe subsystem.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/uuid.h      | 96 +++++++++++++++++++++++++++++++++++++++
 include/uapi/linux/uuid.h | 42 +++++++++++++++++
 2 files changed, 138 insertions(+)
 create mode 100644 include/linux/uuid.h
 create mode 100644 include/uapi/linux/uuid.h

diff --git a/include/linux/uuid.h b/include/linux/uuid.h
new file mode 100644
index 000000000..d9c4a6cce
--- /dev/null
+++ b/include/linux/uuid.h
@@ -0,0 +1,96 @@
+/*
+ * UUID/GUID definition
+ *
+ * Copyright (C) 2010, 2016 Intel Corp.
+ *	Huang Ying <ying.huang@intel.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License version
+ * 2 as published by the Free Software Foundation;
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+#ifndef _LINUX_UUID_H_
+#define _LINUX_UUID_H_
+
+#include <uapi/linux/uuid.h>
+#include <linux/string.h>
+
+#define UUID_SIZE 16
+
+typedef struct {
+	__u8 b[UUID_SIZE];
+} uuid_t;
+
+#define UUID_INIT(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7)			\
+((uuid_t)								\
+{{ ((a) >> 24) & 0xff, ((a) >> 16) & 0xff, ((a) >> 8) & 0xff, (a) & 0xff, \
+   ((b) >> 8) & 0xff, (b) & 0xff,					\
+   ((c) >> 8) & 0xff, (c) & 0xff,					\
+   (d0), (d1), (d2), (d3), (d4), (d5), (d6), (d7) }})
+
+/*
+ * The length of a UUID string ("aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee")
+ * not including trailing NUL.
+ */
+#define	UUID_STRING_LEN		36
+
+extern const guid_t guid_null;
+extern const uuid_t uuid_null;
+
+static inline bool guid_equal(const guid_t *u1, const guid_t *u2)
+{
+	return memcmp(u1, u2, sizeof(guid_t)) == 0;
+}
+
+static inline void guid_copy(guid_t *dst, const guid_t *src)
+{
+	memcpy(dst, src, sizeof(guid_t));
+}
+
+static inline bool guid_is_null(const guid_t *guid)
+{
+	return guid_equal(guid, &guid_null);
+}
+
+static inline bool uuid_equal(const uuid_t *u1, const uuid_t *u2)
+{
+	return memcmp(u1, u2, sizeof(uuid_t)) == 0;
+}
+
+static inline void uuid_copy(uuid_t *dst, const uuid_t *src)
+{
+	memcpy(dst, src, sizeof(uuid_t));
+}
+
+static inline bool uuid_is_null(const uuid_t *uuid)
+{
+	return uuid_equal(uuid, &uuid_null);
+}
+
+void generate_random_uuid(unsigned char uuid[16]);
+
+extern void guid_gen(guid_t *u);
+extern void uuid_gen(uuid_t *u);
+
+bool __must_check uuid_is_valid(const char *uuid);
+
+extern const u8 guid_index[16];
+extern const u8 uuid_index[16];
+
+int guid_parse(const char *uuid, guid_t *u);
+int uuid_parse(const char *uuid, uuid_t *u);
+
+/* backwards compatibility, don't use in new code */
+#define uuid_le_gen(u)		guid_gen(u)
+#define uuid_le_to_bin(guid, u)	guid_parse(guid, u)
+
+static inline int uuid_le_cmp(const guid_t u1, const guid_t u2)
+{
+	return memcmp(&u1, &u2, sizeof(guid_t));
+}
+
+#endif
diff --git a/include/uapi/linux/uuid.h b/include/uapi/linux/uuid.h
new file mode 100644
index 000000000..e5a7eecef
--- /dev/null
+++ b/include/uapi/linux/uuid.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+/*
+ * UUID/GUID definition
+ *
+ * Copyright (C) 2010, Intel Corp.
+ *	Huang Ying <ying.huang@intel.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License version
+ * 2 as published by the Free Software Foundation;
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef _UAPI_LINUX_UUID_H_
+#define _UAPI_LINUX_UUID_H_
+
+#include <linux/types.h>
+
+typedef struct {
+	__u8 b[16];
+} guid_t;
+
+#define GUID_INIT(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7)			\
+((guid_t)								\
+{{ (a) & 0xff, ((a) >> 8) & 0xff, ((a) >> 16) & 0xff, ((a) >> 24) & 0xff, \
+   (b) & 0xff, ((b) >> 8) & 0xff,					\
+   (c) & 0xff, ((c) >> 8) & 0xff,					\
+   (d0), (d1), (d2), (d3), (d4), (d5), (d6), (d7) }})
+
+/* backwards compatibility, don't use in new code */
+typedef guid_t uuid_le;
+#define UUID_LE(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7)		\
+	GUID_INIT(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7)
+#define NULL_UUID_LE							\
+	UUID_LE(0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00,	\
+	     0x00, 0x00, 0x00, 0x00)
+
+#endif /* _UAPI_LINUX_UUID_H_ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
