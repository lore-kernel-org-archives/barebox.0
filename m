Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZFL6-0004fB-JI
 for barebox@lists.infradead.org; Tue, 08 Sep 2015 09:37:22 +0000
Received: by lbpo4 with SMTP id o4so50172014lbp.2
 for <barebox@lists.infradead.org>; Tue, 08 Sep 2015 02:36:57 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  8 Sep 2015 12:36:45 +0300
Message-Id: <1441705005-29340-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] endian: sync {big,little}_endian.h with linux-4.2
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---

This patch makes ehci-hcd.c happy on big-endian MIPS
by importing __constant_cpu_to_le16()
from linux.git/include/uapi/linux/byteorder/big_endian.h

 include/linux/byteorder/big_endian.h    | 118 +++++++++++++++++++++-----------
 include/linux/byteorder/little_endian.h | 118 +++++++++++++++++++++-----------
 2 files changed, 156 insertions(+), 80 deletions(-)


diff --git a/include/linux/byteorder/big_endian.h b/include/linux/byteorder/big_endian.h
index e560ef6..539f710 100644
--- a/include/linux/byteorder/big_endian.h
+++ b/include/linux/byteorder/big_endian.h
@@ -9,48 +9,86 @@
 #endif
 #define	__BYTE_ORDER	__BIG_ENDIAN
 
+#include <linux/types.h>
 #include <linux/swab.h>
 
-#define __constant_htonl(x) ((__u32)(x))
-#define __constant_ntohl(x) ((__u32)(x))
-#define __constant_htons(x) ((__u16)(x))
-#define __constant_ntohs(x) ((__u16)(x))
-#define __constant_cpu_to_le64(x) ___swab64((x))
-#define __constant_le64_to_cpu(x) ___swab64((x))
-#define __constant_cpu_to_le32(x) ___swab32((x))
-#define __constant_le32_to_cpu(x) ___swab32((x))
-#define __constant_cpu_to_le16(x) ___swab16((x))
-#define __constant_le16_to_cpu(x) ___swab16((x))
-#define __constant_cpu_to_be64(x) ((__u64)(x))
-#define __constant_be64_to_cpu(x) ((__u64)(x))
-#define __constant_cpu_to_be32(x) ((__u32)(x))
-#define __constant_be32_to_cpu(x) ((__u32)(x))
-#define __constant_cpu_to_be16(x) ((__u16)(x))
-#define __constant_be16_to_cpu(x) ((__u16)(x))
-#define __cpu_to_le64(x) __swab64((x))
-#define __le64_to_cpu(x) __swab64((x))
-#define __cpu_to_le32(x) __swab32((x))
-#define __le32_to_cpu(x) __swab32((x))
-#define __cpu_to_le16(x) __swab16((x))
-#define __le16_to_cpu(x) __swab16((x))
-#define __cpu_to_be64(x) ((__u64)(x))
-#define __be64_to_cpu(x) ((__u64)(x))
-#define __cpu_to_be32(x) ((__u32)(x))
-#define __be32_to_cpu(x) ((__u32)(x))
-#define __cpu_to_be16(x) ((__u16)(x))
-#define __be16_to_cpu(x) ((__u16)(x))
-#define __cpu_to_le64p(x) __swab64p((x))
-#define __le64_to_cpup(x) __swab64p((x))
-#define __cpu_to_le32p(x) __swab32p((x))
-#define __le32_to_cpup(x) __swab32p((x))
-#define __cpu_to_le16p(x) __swab16p((x))
-#define __le16_to_cpup(x) __swab16p((x))
-#define __cpu_to_be64p(x) (*(__u64*)(x))
-#define __be64_to_cpup(x) (*(__u64*)(x))
-#define __cpu_to_be32p(x) (*(__u32*)(x))
-#define __be32_to_cpup(x) (*(__u32*)(x))
-#define __cpu_to_be16p(x) (*(__u16*)(x))
-#define __be16_to_cpup(x) (*(__u16*)(x))
+#define __constant_htonl(x) ((__force __be32)(__u32)(x))
+#define __constant_ntohl(x) ((__force __u32)(__be32)(x))
+#define __constant_htons(x) ((__force __be16)(__u16)(x))
+#define __constant_ntohs(x) ((__force __u16)(__be16)(x))
+#define __constant_cpu_to_le64(x) ((__force __le64)___constant_swab64((x)))
+#define __constant_le64_to_cpu(x) ___constant_swab64((__force __u64)(__le64)(x))
+#define __constant_cpu_to_le32(x) ((__force __le32)___constant_swab32((x)))
+#define __constant_le32_to_cpu(x) ___constant_swab32((__force __u32)(__le32)(x))
+#define __constant_cpu_to_le16(x) ((__force __le16)___constant_swab16((x)))
+#define __constant_le16_to_cpu(x) ___constant_swab16((__force __u16)(__le16)(x))
+#define __constant_cpu_to_be64(x) ((__force __be64)(__u64)(x))
+#define __constant_be64_to_cpu(x) ((__force __u64)(__be64)(x))
+#define __constant_cpu_to_be32(x) ((__force __be32)(__u32)(x))
+#define __constant_be32_to_cpu(x) ((__force __u32)(__be32)(x))
+#define __constant_cpu_to_be16(x) ((__force __be16)(__u16)(x))
+#define __constant_be16_to_cpu(x) ((__force __u16)(__be16)(x))
+#define __cpu_to_le64(x) ((__force __le64)__swab64((x)))
+#define __le64_to_cpu(x) __swab64((__force __u64)(__le64)(x))
+#define __cpu_to_le32(x) ((__force __le32)__swab32((x)))
+#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
+#define __cpu_to_le16(x) ((__force __le16)__swab16((x)))
+#define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
+#define __cpu_to_be64(x) ((__force __be64)(__u64)(x))
+#define __be64_to_cpu(x) ((__force __u64)(__be64)(x))
+#define __cpu_to_be32(x) ((__force __be32)(__u32)(x))
+#define __be32_to_cpu(x) ((__force __u32)(__be32)(x))
+#define __cpu_to_be16(x) ((__force __be16)(__u16)(x))
+#define __be16_to_cpu(x) ((__force __u16)(__be16)(x))
+
+static inline __le64 __cpu_to_le64p(const __u64 *p)
+{
+	return (__force __le64)__swab64p(p);
+}
+static inline __u64 __le64_to_cpup(const __le64 *p)
+{
+	return __swab64p((__u64 *)p);
+}
+static inline __le32 __cpu_to_le32p(const __u32 *p)
+{
+	return (__force __le32)__swab32p(p);
+}
+static inline __u32 __le32_to_cpup(const __le32 *p)
+{
+	return __swab32p((__u32 *)p);
+}
+static inline __le16 __cpu_to_le16p(const __u16 *p)
+{
+	return (__force __le16)__swab16p(p);
+}
+static inline __u16 __le16_to_cpup(const __le16 *p)
+{
+	return __swab16p((__u16 *)p);
+}
+static inline __be64 __cpu_to_be64p(const __u64 *p)
+{
+	return (__force __be64)*p;
+}
+static inline __u64 __be64_to_cpup(const __be64 *p)
+{
+	return (__force __u64)*p;
+}
+static inline __be32 __cpu_to_be32p(const __u32 *p)
+{
+	return (__force __be32)*p;
+}
+static inline __u32 __be32_to_cpup(const __be32 *p)
+{
+	return (__force __u32)*p;
+}
+static inline __be16 __cpu_to_be16p(const __u16 *p)
+{
+	return (__force __be16)*p;
+}
+static inline __u16 __be16_to_cpup(const __be16 *p)
+{
+	return (__force __u16)*p;
+}
 #define __cpu_to_le64s(x) __swab64s((x))
 #define __le64_to_cpus(x) __swab64s((x))
 #define __cpu_to_le32s(x) __swab32s((x))
diff --git a/include/linux/byteorder/little_endian.h b/include/linux/byteorder/little_endian.h
index a821b27..dfe9531 100644
--- a/include/linux/byteorder/little_endian.h
+++ b/include/linux/byteorder/little_endian.h
@@ -9,48 +9,86 @@
 #endif
 #define	__BYTE_ORDER	__LITTLE_ENDIAN
 
+#include <linux/types.h>
 #include <linux/swab.h>
 
-#define __constant_htonl(x) ___constant_swab32((x))
-#define __constant_ntohl(x) ___constant_swab32((x))
-#define __constant_htons(x) ___constant_swab16((x))
-#define __constant_ntohs(x) ___constant_swab16((x))
-#define __constant_cpu_to_le64(x) ((__u64)(x))
-#define __constant_le64_to_cpu(x) ((__u64)(x))
-#define __constant_cpu_to_le32(x) ((__u32)(x))
-#define __constant_le32_to_cpu(x) ((__u32)(x))
-#define __constant_cpu_to_le16(x) ((__u16)(x))
-#define __constant_le16_to_cpu(x) ((__u16)(x))
-#define __constant_cpu_to_be64(x) ___constant_swab64((x))
-#define __constant_be64_to_cpu(x) ___constant_swab64((x))
-#define __constant_cpu_to_be32(x) ___constant_swab32((x))
-#define __constant_be32_to_cpu(x) ___constant_swab32((x))
-#define __constant_cpu_to_be16(x) ___constant_swab16((x))
-#define __constant_be16_to_cpu(x) ___constant_swab16((x))
-#define __cpu_to_le64(x) ((__u64)(x))
-#define __le64_to_cpu(x) ((__u64)(x))
-#define __cpu_to_le32(x) ((__u32)(x))
-#define __le32_to_cpu(x) ((__u32)(x))
-#define __cpu_to_le16(x) ((__u16)(x))
-#define __le16_to_cpu(x) ((__u16)(x))
-#define __cpu_to_be64(x) __swab64((x))
-#define __be64_to_cpu(x) __swab64((x))
-#define __cpu_to_be32(x) __swab32((x))
-#define __be32_to_cpu(x) __swab32((x))
-#define __cpu_to_be16(x) __swab16((x))
-#define __be16_to_cpu(x) __swab16((x))
-#define __cpu_to_le64p(x) (*(__u64*)(x))
-#define __le64_to_cpup(x) (*(__u64*)(x))
-#define __cpu_to_le32p(x) (*(__u32*)(x))
-#define __le32_to_cpup(x) (*(__u32*)(x))
-#define __cpu_to_le16p(x) (*(__u16*)(x))
-#define __le16_to_cpup(x) (*(__u16*)(x))
-#define __cpu_to_be64p(x) __swab64p((x))
-#define __be64_to_cpup(x) __swab64p((x))
-#define __cpu_to_be32p(x) __swab32p((x))
-#define __be32_to_cpup(x) __swab32p((x))
-#define __cpu_to_be16p(x) __swab16p((x))
-#define __be16_to_cpup(x) __swab16p((x))
+#define __constant_htonl(x) ((__force __be32)___constant_swab32((x)))
+#define __constant_ntohl(x) ___constant_swab32((__force __be32)(x))
+#define __constant_htons(x) ((__force __be16)___constant_swab16((x)))
+#define __constant_ntohs(x) ___constant_swab16((__force __be16)(x))
+#define __constant_cpu_to_le64(x) ((__force __le64)(__u64)(x))
+#define __constant_le64_to_cpu(x) ((__force __u64)(__le64)(x))
+#define __constant_cpu_to_le32(x) ((__force __le32)(__u32)(x))
+#define __constant_le32_to_cpu(x) ((__force __u32)(__le32)(x))
+#define __constant_cpu_to_le16(x) ((__force __le16)(__u16)(x))
+#define __constant_le16_to_cpu(x) ((__force __u16)(__le16)(x))
+#define __constant_cpu_to_be64(x) ((__force __be64)___constant_swab64((x)))
+#define __constant_be64_to_cpu(x) ___constant_swab64((__force __u64)(__be64)(x))
+#define __constant_cpu_to_be32(x) ((__force __be32)___constant_swab32((x)))
+#define __constant_be32_to_cpu(x) ___constant_swab32((__force __u32)(__be32)(x))
+#define __constant_cpu_to_be16(x) ((__force __be16)___constant_swab16((x)))
+#define __constant_be16_to_cpu(x) ___constant_swab16((__force __u16)(__be16)(x))
+#define __cpu_to_le64(x) ((__force __le64)(__u64)(x))
+#define __le64_to_cpu(x) ((__force __u64)(__le64)(x))
+#define __cpu_to_le32(x) ((__force __le32)(__u32)(x))
+#define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
+#define __cpu_to_le16(x) ((__force __le16)(__u16)(x))
+#define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
+#define __cpu_to_be64(x) ((__force __be64)__swab64((x)))
+#define __be64_to_cpu(x) __swab64((__force __u64)(__be64)(x))
+#define __cpu_to_be32(x) ((__force __be32)__swab32((x)))
+#define __be32_to_cpu(x) __swab32((__force __u32)(__be32)(x))
+#define __cpu_to_be16(x) ((__force __be16)__swab16((x)))
+#define __be16_to_cpu(x) __swab16((__force __u16)(__be16)(x))
+
+static inline __le64 __cpu_to_le64p(const __u64 *p)
+{
+	return (__force __le64)*p;
+}
+static inline __u64 __le64_to_cpup(const __le64 *p)
+{
+	return (__force __u64)*p;
+}
+static inline __le32 __cpu_to_le32p(const __u32 *p)
+{
+	return (__force __le32)*p;
+}
+static inline __u32 __le32_to_cpup(const __le32 *p)
+{
+	return (__force __u32)*p;
+}
+static inline __le16 __cpu_to_le16p(const __u16 *p)
+{
+	return (__force __le16)*p;
+}
+static inline __u16 __le16_to_cpup(const __le16 *p)
+{
+	return (__force __u16)*p;
+}
+static inline __be64 __cpu_to_be64p(const __u64 *p)
+{
+	return (__force __be64)__swab64p(p);
+}
+static inline __u64 __be64_to_cpup(const __be64 *p)
+{
+	return __swab64p((__u64 *)p);
+}
+static inline __be32 __cpu_to_be32p(const __u32 *p)
+{
+	return (__force __be32)__swab32p(p);
+}
+static inline __u32 __be32_to_cpup(const __be32 *p)
+{
+	return __swab32p((__u32 *)p);
+}
+static inline __be16 __cpu_to_be16p(const __u16 *p)
+{
+	return (__force __be16)__swab16p(p);
+}
+static inline __u16 __be16_to_cpup(const __be16 *p)
+{
+	return __swab16p((__u16 *)p);
+}
 #define __cpu_to_le64s(x) do { (void)(x); } while (0)
 #define __le64_to_cpus(x) do { (void)(x); } while (0)
 #define __cpu_to_le32s(x) do { (void)(x); } while (0)
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
