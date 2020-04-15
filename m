Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOcxe-00030A-Sf
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 07:59:56 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 15 Apr 2020 16:59:17 +0900
Message-Id: <20200415075917.54999-1-masahiroy@kernel.org>
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
Subject: [PATCH] libfdt: update <linux/libfdt.h> and <linux/libfdt_env.h> to
 Linux 5.7-rc1
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Fix the relative include path in <linux/libfdt.h>

Including <linux/kernel.h> is too much. <linux/limits.h> is enough
for INT_MAX.

Define INT32_MAX and UINT32_MAX in the same way as Linux does.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 include/linux/libfdt.h     | 2 +-
 include/linux/libfdt_env.h | 7 ++++---
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/include/linux/libfdt.h b/include/linux/libfdt.h
index ef2467213..90ed4ebfa 100644
--- a/include/linux/libfdt.h
+++ b/include/linux/libfdt.h
@@ -3,6 +3,6 @@
 #define _INCLUDE_LIBFDT_H_
 
 #include <linux/libfdt_env.h>
-#include "../scripts/dtc/libfdt/libfdt.h"
+#include "../../scripts/dtc/libfdt/libfdt.h"
 
 #endif /* _INCLUDE_LIBFDT_H_ */
diff --git a/include/linux/libfdt_env.h b/include/linux/libfdt_env.h
index bac4670d6..cea8574a2 100644
--- a/include/linux/libfdt_env.h
+++ b/include/linux/libfdt_env.h
@@ -2,11 +2,14 @@
 #ifndef LIBFDT_ENV_H
 #define LIBFDT_ENV_H
 
-#include <linux/kernel.h>	/* For INT_MAX */
+#include <linux/limits.h>	/* For INT_MAX */
 #include <linux/string.h>
 
 #include <asm/byteorder.h>
 
+#define INT32_MAX	S32_MAX
+#define UINT32_MAX	U32_MAX
+
 typedef __be16 fdt16_t;
 typedef __be32 fdt32_t;
 typedef __be64 fdt64_t;
@@ -16,6 +19,4 @@ typedef __be64 fdt64_t;
 #define fdt64_to_cpu(x) be64_to_cpu(x)
 #define cpu_to_fdt64(x) cpu_to_be64(x)
 
-#define INT32_MAX	2147483647
-
 #endif /* LIBFDT_ENV_H */
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
