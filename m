Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x233.google.com ([2a00:1450:400c:c09::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJJRh-0002jK-Hb
 for barebox@lists.infradead.org; Thu, 17 May 2018 13:59:54 +0000
Received: by mail-wm0-x233.google.com with SMTP id a67-v6so8565101wmf.3
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 06:59:43 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 17 May 2018 16:58:53 +0300
Message-Id: <20180517135858.16202-11-pmamonov@gmail.com>
In-Reply-To: <20180517135858.16202-1-pmamonov@gmail.com>
References: <20180517135858.16202-1-pmamonov@gmail.com>
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
Subject: [RFC PATCH 10/15] common.h: fix IOMEM() for MIPS64
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 include/common.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/common.h b/include/common.h
index 60e5005b8..4b3bcae40 100644
--- a/include/common.h
+++ b/include/common.h
@@ -142,7 +142,11 @@ void barebox_set_hostname_no_overwrite(const char *);
 #if defined(CONFIG_MIPS)
 #include <asm/addrspace.h>
 
+#ifdef CONFIG_64BIT
+#define IOMEM(addr)	((void __force __iomem *)PHYS_TO_XKSEG_UNCACHED(addr))
+#else
 #define IOMEM(addr)	((void __force __iomem *)CKSEG1ADDR(addr))
+#endif
 #else
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 #endif
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
