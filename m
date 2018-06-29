Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYr6u-0004HT-TR
 for barebox@lists.infradead.org; Fri, 29 Jun 2018 10:58:42 +0000
Received: by mail-lj1-x241.google.com with SMTP id g3-v6so6975711ljk.12
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 03:58:29 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 29 Jun 2018 13:58:23 +0300
Message-Id: <20180629105823.16181-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: don't include generated header files into MIPS asm files
To: barebox@lists.infradead.org

This patch came out of discussions in the 'MIPS parallel build breakage' e-mail thread:

    http://lists.infradead.org/pipermail/barebox/2018-March/032251.html

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index 18115c8489..bb3182cda9 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -25,8 +25,6 @@
 #include <asm/mipsregs.h>
 #include <asm/asm.h>
 #include <asm-generic/memory_layout.h>
-#include <generated/compile.h>
-#include <generated/utsrelease.h>
 #include <asm/addrspace.h>
 #include <asm/cacheops.h>
 
@@ -174,7 +172,7 @@ copy_loop_exit:
 	 nop
 
 	.org	0x10
-	.ascii	"barebox " UTS_RELEASE " " UTS_VERSION
+	.ascii	"barebox"
 	.byte	0
 
 	.align	4
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
