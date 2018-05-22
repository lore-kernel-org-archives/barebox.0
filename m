Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL9Ij-0003GJ-46
 for barebox@lists.infradead.org; Tue, 22 May 2018 15:34:18 +0000
Received: by mail-wm0-x242.google.com with SMTP id w194-v6so935273wmf.2
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 08:34:02 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 May 2018 18:33:37 +0300
Message-Id: <20180522153342.24933-8-pmamonov@gmail.com>
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
Subject: [PATCH v3 07/12] MIPS: add proper IOMEM() declaration for MIPS64
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/io.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index ee6151693..c15519943 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -106,7 +106,11 @@ static inline void __raw_writel(u32 b, volatile void __iomem *addr)
 #define out_be16(a, v)	__raw_writew(__cpu_to_be16(v), a)
 #define out_be32(a, v)	__raw_writel(__cpu_to_be32(v), a)
 
+#ifdef CONFIG_64BIT
+#define IOMEM(addr)	((void __force __iomem *)PHYS_TO_XKSEG_UNCACHED(addr))
+#else
 #define IOMEM(addr)	((void __force __iomem *)CKSEG1ADDR(addr))
+#endif
 
 #include <asm-generic/io.h>
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
