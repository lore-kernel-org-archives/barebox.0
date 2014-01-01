Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-x22a.google.com ([2607:f8b0:400e:c01::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VyErh-0003J1-57
 for barebox@lists.infradead.org; Wed, 01 Jan 2014 06:01:13 +0000
Received: by mail-pb0-f42.google.com with SMTP id uo5so13352693pbc.29
 for <barebox@lists.infradead.org>; Tue, 31 Dec 2013 22:00:49 -0800 (PST)
From: u74147@gmail.com
Date: Wed,  1 Jan 2014 14:00:40 +0800
Message-Id: <1388556040-4208-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH] mips asm/types.h: add #ifndef to fix compile error
To: barebox@lists.infradead.org

From: Du Huanpeng <u74147@gmail.com>

without "#ifndef __ASSEMBLY__ #endif", an assembly file
including this file will break compilation.

Signed-off-by: Du Huanpeng <u74147@gmail.com>
---
 arch/mips/include/asm/types.h |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/mips/include/asm/types.h b/arch/mips/include/asm/types.h
index f5373cc..b63687d 100644
--- a/arch/mips/include/asm/types.h
+++ b/arch/mips/include/asm/types.h
@@ -13,6 +13,8 @@
 
 #include <asm-generic/int-ll64.h>
 
+#ifndef __ASSEMBLY__
+
 #if (defined(CONFIG_HIGHMEM) && defined(CONFIG_64BIT_PHYS_ADDR)) \
     || defined(CONFIG_64BIT)
 typedef u64 dma_addr_t;
@@ -21,6 +23,8 @@ typedef u32 dma_addr_t;
 #endif
 typedef u64 dma64_addr_t;
 
+#endif /* __ASSEMBLY__ */
+
 /*
  * We don't use int-l64.h for the kernel anymore but still use it for
  * userspace to avoid code changes.
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
