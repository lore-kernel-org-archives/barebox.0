Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBP1-00088h-Cx
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 09:37:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 11:36:16 +0200
Message-Id: <1269855383-22716-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/12] add unaligned access support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/unaligned.h  |   19 ++++++++++
 include/unaligned/access_ok.h     |   67 +++++++++++++++++++++++++++++++++++
 include/unaligned/be_byteshift.h  |   70 +++++++++++++++++++++++++++++++++++++
 include/unaligned/be_memmove.h    |   36 +++++++++++++++++++
 include/unaligned/be_struct.h     |   36 +++++++++++++++++++
 include/unaligned/generic.h       |   68 +++++++++++++++++++++++++++++++++++
 include/unaligned/le_byteshift.h  |   70 +++++++++++++++++++++++++++++++++++++
 include/unaligned/le_memmove.h    |   36 +++++++++++++++++++
 include/unaligned/le_struct.h     |   36 +++++++++++++++++++
 include/unaligned/memmove.h       |   45 +++++++++++++++++++++++
 include/unaligned/packed_struct.h |   46 ++++++++++++++++++++++++
 11 files changed, 529 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/include/asm/unaligned.h
 create mode 100644 include/unaligned/access_ok.h
 create mode 100644 include/unaligned/be_byteshift.h
 create mode 100644 include/unaligned/be_memmove.h
 create mode 100644 include/unaligned/be_struct.h
 create mode 100644 include/unaligned/generic.h
 create mode 100644 include/unaligned/le_byteshift.h
 create mode 100644 include/unaligned/le_memmove.h
 create mode 100644 include/unaligned/le_struct.h
 create mode 100644 include/unaligned/memmove.h
 create mode 100644 include/unaligned/packed_struct.h

diff --git a/arch/arm/include/asm/unaligned.h b/arch/arm/include/asm/unaligned.h
new file mode 100644
index 0000000..34f7838
--- /dev/null
+++ b/arch/arm/include/asm/unaligned.h
@@ -0,0 +1,19 @@
+#ifndef _ASM_ARM_UNALIGNED_H
+#define _ASM_ARM_UNALIGNED_H
+
+#include <unaligned/le_byteshift.h>
+#include <unaligned/be_byteshift.h>
+#include <unaligned/generic.h>
+
+/*
+ * Select endianness
+ */
+#ifndef __ARMEB__
+#define get_unaligned	__get_unaligned_le
+#define put_unaligned	__put_unaligned_le
+#else
+#define get_unaligned	__get_unaligned_be
+#define put_unaligned	__put_unaligned_be
+#endif
+
+#endif /* _ASM_ARM_UNALIGNED_H */
diff --git a/include/unaligned/access_ok.h b/include/unaligned/access_ok.h
new file mode 100644
index 0000000..99c1b4d
--- /dev/null
+++ b/include/unaligned/access_ok.h
@@ -0,0 +1,67 @@
+#ifndef _LINUX_UNALIGNED_ACCESS_OK_H
+#define _LINUX_UNALIGNED_ACCESS_OK_H
+
+#include <linux/kernel.h>
+#include <asm/byteorder.h>
+
+static inline u16 get_unaligned_le16(const void *p)
+{
+	return le16_to_cpup((__le16 *)p);
+}
+
+static inline u32 get_unaligned_le32(const void *p)
+{
+	return le32_to_cpup((__le32 *)p);
+}
+
+static inline u64 get_unaligned_le64(const void *p)
+{
+	return le64_to_cpup((__le64 *)p);
+}
+
+static inline u16 get_unaligned_be16(const void *p)
+{
+	return be16_to_cpup((__be16 *)p);
+}
+
+static inline u32 get_unaligned_be32(const void *p)
+{
+	return be32_to_cpup((__be32 *)p);
+}
+
+static inline u64 get_unaligned_be64(const void *p)
+{
+	return be64_to_cpup((__be64 *)p);
+}
+
+static inline void put_unaligned_le16(u16 val, void *p)
+{
+	*((__le16 *)p) = cpu_to_le16(val);
+}
+
+static inline void put_unaligned_le32(u32 val, void *p)
+{
+	*((__le32 *)p) = cpu_to_le32(val);
+}
+
+static inline void put_unaligned_le64(u64 val, void *p)
+{
+	*((__le64 *)p) = cpu_to_le64(val);
+}
+
+static inline void put_unaligned_be16(u16 val, void *p)
+{
+	*((__be16 *)p) = cpu_to_be16(val);
+}
+
+static inline void put_unaligned_be32(u32 val, void *p)
+{
+	*((__be32 *)p) = cpu_to_be32(val);
+}
+
+static inline void put_unaligned_be64(u64 val, void *p)
+{
+	*((__be64 *)p) = cpu_to_be64(val);
+}
+
+#endif /* _LINUX_UNALIGNED_ACCESS_OK_H */
diff --git a/include/unaligned/be_byteshift.h b/include/unaligned/be_byteshift.h
new file mode 100644
index 0000000..9356b24
--- /dev/null
+++ b/include/unaligned/be_byteshift.h
@@ -0,0 +1,70 @@
+#ifndef _LINUX_UNALIGNED_BE_BYTESHIFT_H
+#define _LINUX_UNALIGNED_BE_BYTESHIFT_H
+
+#include <linux/types.h>
+
+static inline u16 __get_unaligned_be16(const u8 *p)
+{
+	return p[0] << 8 | p[1];
+}
+
+static inline u32 __get_unaligned_be32(const u8 *p)
+{
+	return p[0] << 24 | p[1] << 16 | p[2] << 8 | p[3];
+}
+
+static inline u64 __get_unaligned_be64(const u8 *p)
+{
+	return (u64)__get_unaligned_be32(p) << 32 |
+	       __get_unaligned_be32(p + 4);
+}
+
+static inline void __put_unaligned_be16(u16 val, u8 *p)
+{
+	*p++ = val >> 8;
+	*p++ = val;
+}
+
+static inline void __put_unaligned_be32(u32 val, u8 *p)
+{
+	__put_unaligned_be16(val >> 16, p);
+	__put_unaligned_be16(val, p + 2);
+}
+
+static inline void __put_unaligned_be64(u64 val, u8 *p)
+{
+	__put_unaligned_be32(val >> 32, p);
+	__put_unaligned_be32(val, p + 4);
+}
+
+static inline u16 get_unaligned_be16(const void *p)
+{
+	return __get_unaligned_be16((const u8 *)p);
+}
+
+static inline u32 get_unaligned_be32(const void *p)
+{
+	return __get_unaligned_be32((const u8 *)p);
+}
+
+static inline u64 get_unaligned_be64(const void *p)
+{
+	return __get_unaligned_be64((const u8 *)p);
+}
+
+static inline void put_unaligned_be16(u16 val, void *p)
+{
+	__put_unaligned_be16(val, p);
+}
+
+static inline void put_unaligned_be32(u32 val, void *p)
+{
+	__put_unaligned_be32(val, p);
+}
+
+static inline void put_unaligned_be64(u64 val, void *p)
+{
+	__put_unaligned_be64(val, p);
+}
+
+#endif /* _LINUX_UNALIGNED_BE_BYTESHIFT_H */
diff --git a/include/unaligned/be_memmove.h b/include/unaligned/be_memmove.h
new file mode 100644
index 0000000..c2a76c5
--- /dev/null
+++ b/include/unaligned/be_memmove.h
@@ -0,0 +1,36 @@
+#ifndef _LINUX_UNALIGNED_BE_MEMMOVE_H
+#define _LINUX_UNALIGNED_BE_MEMMOVE_H
+
+#include <linux/unaligned/memmove.h>
+
+static inline u16 get_unaligned_be16(const void *p)
+{
+	return __get_unaligned_memmove16((const u8 *)p);
+}
+
+static inline u32 get_unaligned_be32(const void *p)
+{
+	return __get_unaligned_memmove32((const u8 *)p);
+}
+
+static inline u64 get_unaligned_be64(const void *p)
+{
+	return __get_unaligned_memmove64((const u8 *)p);
+}
+
+static inline void put_unaligned_be16(u16 val, void *p)
+{
+	__put_unaligned_memmove16(val, p);
+}
+
+static inline void put_unaligned_be32(u32 val, void *p)
+{
+	__put_unaligned_memmove32(val, p);
+}
+
+static inline void put_unaligned_be64(u64 val, void *p)
+{
+	__put_unaligned_memmove64(val, p);
+}
+
+#endif /* _LINUX_UNALIGNED_LE_MEMMOVE_H */
diff --git a/include/unaligned/be_struct.h b/include/unaligned/be_struct.h
new file mode 100644
index 0000000..1324158
--- /dev/null
+++ b/include/unaligned/be_struct.h
@@ -0,0 +1,36 @@
+#ifndef _LINUX_UNALIGNED_BE_STRUCT_H
+#define _LINUX_UNALIGNED_BE_STRUCT_H
+
+#include <linux/unaligned/packed_struct.h>
+
+static inline u16 get_unaligned_be16(const void *p)
+{
+	return __get_unaligned_cpu16((const u8 *)p);
+}
+
+static inline u32 get_unaligned_be32(const void *p)
+{
+	return __get_unaligned_cpu32((const u8 *)p);
+}
+
+static inline u64 get_unaligned_be64(const void *p)
+{
+	return __get_unaligned_cpu64((const u8 *)p);
+}
+
+static inline void put_unaligned_be16(u16 val, void *p)
+{
+	__put_unaligned_cpu16(val, p);
+}
+
+static inline void put_unaligned_be32(u32 val, void *p)
+{
+	__put_unaligned_cpu32(val, p);
+}
+
+static inline void put_unaligned_be64(u64 val, void *p)
+{
+	__put_unaligned_cpu64(val, p);
+}
+
+#endif /* _LINUX_UNALIGNED_BE_STRUCT_H */
diff --git a/include/unaligned/generic.h b/include/unaligned/generic.h
new file mode 100644
index 0000000..02d97ff
--- /dev/null
+++ b/include/unaligned/generic.h
@@ -0,0 +1,68 @@
+#ifndef _LINUX_UNALIGNED_GENERIC_H
+#define _LINUX_UNALIGNED_GENERIC_H
+
+/*
+ * Cause a link-time error if we try an unaligned access other than
+ * 1,2,4 or 8 bytes long
+ */
+extern void __bad_unaligned_access_size(void);
+
+#define __get_unaligned_le(ptr) ((__force typeof(*(ptr)))({			\
+	__builtin_choose_expr(sizeof(*(ptr)) == 1, *(ptr),			\
+	__builtin_choose_expr(sizeof(*(ptr)) == 2, get_unaligned_le16((ptr)),	\
+	__builtin_choose_expr(sizeof(*(ptr)) == 4, get_unaligned_le32((ptr)),	\
+	__builtin_choose_expr(sizeof(*(ptr)) == 8, get_unaligned_le64((ptr)),	\
+	__bad_unaligned_access_size()))));					\
+	}))
+
+#define __get_unaligned_be(ptr) ((__force typeof(*(ptr)))({			\
+	__builtin_choose_expr(sizeof(*(ptr)) == 1, *(ptr),			\
+	__builtin_choose_expr(sizeof(*(ptr)) == 2, get_unaligned_be16((ptr)),	\
+	__builtin_choose_expr(sizeof(*(ptr)) == 4, get_unaligned_be32((ptr)),	\
+	__builtin_choose_expr(sizeof(*(ptr)) == 8, get_unaligned_be64((ptr)),	\
+	__bad_unaligned_access_size()))));					\
+	}))
+
+#define __put_unaligned_le(val, ptr) ({					\
+	void *__gu_p = (ptr);						\
+	switch (sizeof(*(ptr))) {					\
+	case 1:								\
+		*(u8 *)__gu_p = (__force u8)(val);			\
+		break;							\
+	case 2:								\
+		put_unaligned_le16((__force u16)(val), __gu_p);		\
+		break;							\
+	case 4:								\
+		put_unaligned_le32((__force u32)(val), __gu_p);		\
+		break;							\
+	case 8:								\
+		put_unaligned_le64((__force u64)(val), __gu_p);		\
+		break;							\
+	default:							\
+		__bad_unaligned_access_size();				\
+		break;							\
+	}								\
+	(void)0; })
+
+#define __put_unaligned_be(val, ptr) ({					\
+	void *__gu_p = (ptr);						\
+	switch (sizeof(*(ptr))) {					\
+	case 1:								\
+		*(u8 *)__gu_p = (__force u8)(val);			\
+		break;							\
+	case 2:								\
+		put_unaligned_be16((__force u16)(val), __gu_p);		\
+		break;							\
+	case 4:								\
+		put_unaligned_be32((__force u32)(val), __gu_p);		\
+		break;							\
+	case 8:								\
+		put_unaligned_be64((__force u64)(val), __gu_p);		\
+		break;							\
+	default:							\
+		__bad_unaligned_access_size();				\
+		break;							\
+	}								\
+	(void)0; })
+
+#endif /* _LINUX_UNALIGNED_GENERIC_H */
diff --git a/include/unaligned/le_byteshift.h b/include/unaligned/le_byteshift.h
new file mode 100644
index 0000000..be376fb
--- /dev/null
+++ b/include/unaligned/le_byteshift.h
@@ -0,0 +1,70 @@
+#ifndef _LINUX_UNALIGNED_LE_BYTESHIFT_H
+#define _LINUX_UNALIGNED_LE_BYTESHIFT_H
+
+#include <linux/types.h>
+
+static inline u16 __get_unaligned_le16(const u8 *p)
+{
+	return p[0] | p[1] << 8;
+}
+
+static inline u32 __get_unaligned_le32(const u8 *p)
+{
+	return p[0] | p[1] << 8 | p[2] << 16 | p[3] << 24;
+}
+
+static inline u64 __get_unaligned_le64(const u8 *p)
+{
+	return (u64)__get_unaligned_le32(p + 4) << 32 |
+	       __get_unaligned_le32(p);
+}
+
+static inline void __put_unaligned_le16(u16 val, u8 *p)
+{
+	*p++ = val;
+	*p++ = val >> 8;
+}
+
+static inline void __put_unaligned_le32(u32 val, u8 *p)
+{
+	__put_unaligned_le16(val >> 16, p + 2);
+	__put_unaligned_le16(val, p);
+}
+
+static inline void __put_unaligned_le64(u64 val, u8 *p)
+{
+	__put_unaligned_le32(val >> 32, p + 4);
+	__put_unaligned_le32(val, p);
+}
+
+static inline u16 get_unaligned_le16(const void *p)
+{
+	return __get_unaligned_le16((const u8 *)p);
+}
+
+static inline u32 get_unaligned_le32(const void *p)
+{
+	return __get_unaligned_le32((const u8 *)p);
+}
+
+static inline u64 get_unaligned_le64(const void *p)
+{
+	return __get_unaligned_le64((const u8 *)p);
+}
+
+static inline void put_unaligned_le16(u16 val, void *p)
+{
+	__put_unaligned_le16(val, p);
+}
+
+static inline void put_unaligned_le32(u32 val, void *p)
+{
+	__put_unaligned_le32(val, p);
+}
+
+static inline void put_unaligned_le64(u64 val, void *p)
+{
+	__put_unaligned_le64(val, p);
+}
+
+#endif /* _LINUX_UNALIGNED_LE_BYTESHIFT_H */
diff --git a/include/unaligned/le_memmove.h b/include/unaligned/le_memmove.h
new file mode 100644
index 0000000..269849b
--- /dev/null
+++ b/include/unaligned/le_memmove.h
@@ -0,0 +1,36 @@
+#ifndef _LINUX_UNALIGNED_LE_MEMMOVE_H
+#define _LINUX_UNALIGNED_LE_MEMMOVE_H
+
+#include <linux/unaligned/memmove.h>
+
+static inline u16 get_unaligned_le16(const void *p)
+{
+	return __get_unaligned_memmove16((const u8 *)p);
+}
+
+static inline u32 get_unaligned_le32(const void *p)
+{
+	return __get_unaligned_memmove32((const u8 *)p);
+}
+
+static inline u64 get_unaligned_le64(const void *p)
+{
+	return __get_unaligned_memmove64((const u8 *)p);
+}
+
+static inline void put_unaligned_le16(u16 val, void *p)
+{
+	__put_unaligned_memmove16(val, p);
+}
+
+static inline void put_unaligned_le32(u32 val, void *p)
+{
+	__put_unaligned_memmove32(val, p);
+}
+
+static inline void put_unaligned_le64(u64 val, void *p)
+{
+	__put_unaligned_memmove64(val, p);
+}
+
+#endif /* _LINUX_UNALIGNED_LE_MEMMOVE_H */
diff --git a/include/unaligned/le_struct.h b/include/unaligned/le_struct.h
new file mode 100644
index 0000000..088c457
--- /dev/null
+++ b/include/unaligned/le_struct.h
@@ -0,0 +1,36 @@
+#ifndef _LINUX_UNALIGNED_LE_STRUCT_H
+#define _LINUX_UNALIGNED_LE_STRUCT_H
+
+#include <linux/unaligned/packed_struct.h>
+
+static inline u16 get_unaligned_le16(const void *p)
+{
+	return __get_unaligned_cpu16((const u8 *)p);
+}
+
+static inline u32 get_unaligned_le32(const void *p)
+{
+	return __get_unaligned_cpu32((const u8 *)p);
+}
+
+static inline u64 get_unaligned_le64(const void *p)
+{
+	return __get_unaligned_cpu64((const u8 *)p);
+}
+
+static inline void put_unaligned_le16(u16 val, void *p)
+{
+	__put_unaligned_cpu16(val, p);
+}
+
+static inline void put_unaligned_le32(u32 val, void *p)
+{
+	__put_unaligned_cpu32(val, p);
+}
+
+static inline void put_unaligned_le64(u64 val, void *p)
+{
+	__put_unaligned_cpu64(val, p);
+}
+
+#endif /* _LINUX_UNALIGNED_LE_STRUCT_H */
diff --git a/include/unaligned/memmove.h b/include/unaligned/memmove.h
new file mode 100644
index 0000000..eeb5a77
--- /dev/null
+++ b/include/unaligned/memmove.h
@@ -0,0 +1,45 @@
+#ifndef _LINUX_UNALIGNED_MEMMOVE_H
+#define _LINUX_UNALIGNED_MEMMOVE_H
+
+#include <linux/kernel.h>
+#include <linux/string.h>
+
+/* Use memmove here, so gcc does not insert a __builtin_memcpy. */
+
+static inline u16 __get_unaligned_memmove16(const void *p)
+{
+	u16 tmp;
+	memmove(&tmp, p, 2);
+	return tmp;
+}
+
+static inline u32 __get_unaligned_memmove32(const void *p)
+{
+	u32 tmp;
+	memmove(&tmp, p, 4);
+	return tmp;
+}
+
+static inline u64 __get_unaligned_memmove64(const void *p)
+{
+	u64 tmp;
+	memmove(&tmp, p, 8);
+	return tmp;
+}
+
+static inline void __put_unaligned_memmove16(u16 val, void *p)
+{
+	memmove(p, &val, 2);
+}
+
+static inline void __put_unaligned_memmove32(u32 val, void *p)
+{
+	memmove(p, &val, 4);
+}
+
+static inline void __put_unaligned_memmove64(u64 val, void *p)
+{
+	memmove(p, &val, 8);
+}
+
+#endif /* _LINUX_UNALIGNED_MEMMOVE_H */
diff --git a/include/unaligned/packed_struct.h b/include/unaligned/packed_struct.h
new file mode 100644
index 0000000..2498bb9
--- /dev/null
+++ b/include/unaligned/packed_struct.h
@@ -0,0 +1,46 @@
+#ifndef _LINUX_UNALIGNED_PACKED_STRUCT_H
+#define _LINUX_UNALIGNED_PACKED_STRUCT_H
+
+#include <linux/kernel.h>
+
+struct __una_u16 { u16 x __attribute__((packed)); };
+struct __una_u32 { u32 x __attribute__((packed)); };
+struct __una_u64 { u64 x __attribute__((packed)); };
+
+static inline u16 __get_unaligned_cpu16(const void *p)
+{
+	const struct __una_u16 *ptr = (const struct __una_u16 *)p;
+	return ptr->x;
+}
+
+static inline u32 __get_unaligned_cpu32(const void *p)
+{
+	const struct __una_u32 *ptr = (const struct __una_u32 *)p;
+	return ptr->x;
+}
+
+static inline u64 __get_unaligned_cpu64(const void *p)
+{
+	const struct __una_u64 *ptr = (const struct __una_u64 *)p;
+	return ptr->x;
+}
+
+static inline void __put_unaligned_cpu16(u16 val, void *p)
+{
+	struct __una_u16 *ptr = (struct __una_u16 *)p;
+	ptr->x = val;
+}
+
+static inline void __put_unaligned_cpu32(u32 val, void *p)
+{
+	struct __una_u32 *ptr = (struct __una_u32 *)p;
+	ptr->x = val;
+}
+
+static inline void __put_unaligned_cpu64(u64 val, void *p)
+{
+	struct __una_u64 *ptr = (struct __una_u64 *)p;
+	ptr->x = val;
+}
+
+#endif /* _LINUX_UNALIGNED_PACKED_STRUCT_H */
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
