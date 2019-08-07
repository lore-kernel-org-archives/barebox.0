Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOqC-0001SP-VL
 for barebox@lists.infradead.org; Wed, 07 Aug 2019 16:31:10 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu,  8 Aug 2019 01:30:45 +0900
Message-Id: <20190807163046.6160-1-yamada.masahiro@socionext.com>
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
Subject: [PATCH 1/2] riscv: use generic bitsperlong.h
To: barebox@lists.infradead.org

Linux highly depends on the fact that the 'long' and the pointer
have the same width, and so does barebox.

So, we can always use include/asm-generic/bitsperlong.h, which
determines BITS_PER_LONG depending on CONFIG_64BIT.

This is what Linux does (at least in the kernel-space), and barebox
can follow it.

Currently, barebox only supports 32-bit riscv, but this should work
when it supports 64-bit by adding CONFIG_64BIT to arch/riscv/Kconfig.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---
 arch/riscv/include/asm/bitsperlong.h | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/arch/riscv/include/asm/bitsperlong.h b/arch/riscv/include/asm/bitsperlong.h
index 4641e7e485..6dc0bb0c13 100644
--- a/arch/riscv/include/asm/bitsperlong.h
+++ b/arch/riscv/include/asm/bitsperlong.h
@@ -1,10 +1 @@
-#ifndef __ASM_BITSPERLONG_H
-#define __ASM_BITSPERLONG_H
-
-#ifdef __riscv64
-#define BITS_PER_LONG 64
-#else
-#define BITS_PER_LONG 32
-#endif
-
-#endif /* __ASM_BITSPERLONG_H */
+#include <asm-generic/bitsperlong.h>
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
