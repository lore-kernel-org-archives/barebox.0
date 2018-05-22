Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL9Ii-0003GF-4V
 for barebox@lists.infradead.org; Tue, 22 May 2018 15:34:17 +0000
Received: by mail-wm0-x244.google.com with SMTP id j5-v6so917176wme.5
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 08:34:01 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 May 2018 18:33:36 +0300
Message-Id: <20180522153342.24933-7-pmamonov@gmail.com>
In-Reply-To: <20180522153342.24933-1-pmamonov@gmail.com>
References: <20180522153342.24933-1-pmamonov@gmail.com>
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
Subject: [PATCH v3 06/12] include/common.h: move IOMEM declaration for MIPS to
 arch/mips/include/asm/io.h
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/io.h | 2 ++
 include/common.h           | 7 ++-----
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 5a4cbf564..ee6151693 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -106,6 +106,8 @@ static inline void __raw_writel(u32 b, volatile void __iomem *addr)
 #define out_be16(a, v)	__raw_writew(__cpu_to_be16(v), a)
 #define out_be32(a, v)	__raw_writel(__cpu_to_be32(v), a)
 
+#define IOMEM(addr)	((void __force __iomem *)CKSEG1ADDR(addr))
+
 #include <asm-generic/io.h>
 
 #endif	/* __ASM_MIPS_IO_H */
diff --git a/include/common.h b/include/common.h
index 60e5005b8..f93bd7f5d 100644
--- a/include/common.h
+++ b/include/common.h
@@ -30,6 +30,7 @@
 #include <linux/kernel.h>
 #include <linux/stddef.h>
 #include <asm/common.h>
+#include <asm/io.h>
 #include <printk.h>
 
 /*
@@ -139,11 +140,7 @@ const char *barebox_get_hostname(void);
 void barebox_set_hostname(const char *);
 void barebox_set_hostname_no_overwrite(const char *);
 
-#if defined(CONFIG_MIPS)
-#include <asm/addrspace.h>
-
-#define IOMEM(addr)	((void __force __iomem *)CKSEG1ADDR(addr))
-#else
+#ifndef IOMEM
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 #endif
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
