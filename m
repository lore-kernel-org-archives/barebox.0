Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOqC-0001SO-VK
 for barebox@lists.infradead.org; Wed, 07 Aug 2019 16:31:10 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu,  8 Aug 2019 01:30:46 +0900
Message-Id: <20190807163046.6160-2-yamada.masahiro@socionext.com>
In-Reply-To: <20190807163046.6160-1-yamada.masahiro@socionext.com>
References: <20190807163046.6160-1-yamada.masahiro@socionext.com>
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
Subject: [PATCH 2/2] mips: use generic bitsperlong.h
To: barebox@lists.infradead.org

Linux highly depends on the fact that the 'long' and the pointer
have the same width, and so does barebox.

So, we can always use include/asm-generic/bitsperlong.h, which
determines BITS_PER_LONG depending on CONFIG_64BIT.

This is what Linux does (at least in the kernel-space), and barebox
can follow it.

It is true that MIPS Linux references _MIPS_SZLONG
(arch/mips/include/uaspi/asm/bitsperlong.h), but this is bacause
the user-space cannot reference CONFIG options. For the kernel-space,
it uses the generic definition from include/asm-generic/bitsperlong.h.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---
 arch/mips/include/asm/bitsperlong.h | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/mips/include/asm/bitsperlong.h b/arch/mips/include/asm/bitsperlong.h
index 41712161bc..6dc0bb0c13 100644
--- a/arch/mips/include/asm/bitsperlong.h
+++ b/arch/mips/include/asm/bitsperlong.h
@@ -1,6 +1 @@
-#ifndef __ASM_MIPS_BITSPERLONG_H
-#define __ASM_MIPS_BITSPERLONG_H
-
-#define BITS_PER_LONG _MIPS_SZLONG
-
-#endif /* __ASM_MIPS_BITSPERLONG_H */
+#include <asm-generic/bitsperlong.h>
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
