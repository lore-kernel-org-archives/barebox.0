Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X7KjA-0000lx-NI
 for barebox@lists.infradead.org; Wed, 16 Jul 2014 08:38:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 Jul 2014 10:37:50 +0200
Message-Id: <1405499873-6385-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405499873-6385-1-git-send-email-s.hauer@pengutronix.de>
References: <1405499873-6385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] X86: Move BITS_PER_LONG definition to types.h
To: barebox@lists.infradead.org

Because that's where it belongs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/x86/include/asm/bitops.h | 2 --
 arch/x86/include/asm/types.h  | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
index d741e44..e525812 100644
--- a/arch/x86/include/asm/bitops.h
+++ b/arch/x86/include/asm/bitops.h
@@ -23,8 +23,6 @@
 #ifndef _ASM_X86_BITOPS_H_
 #define _ASM_X86_BITOPS_H_
 
-#define BITS_PER_LONG 32
-
 #include <asm-generic/bitops/__fls.h>
 #include <asm-generic/bitops/__ffs.h>
 #include <asm-generic/bitops/fls.h>
diff --git a/arch/x86/include/asm/types.h b/arch/x86/include/asm/types.h
index d473405..b3fd1f6 100644
--- a/arch/x86/include/asm/types.h
+++ b/arch/x86/include/asm/types.h
@@ -41,6 +41,8 @@ typedef unsigned int u32;
 typedef signed long long s64;
 typedef unsigned long long u64;
 
+#define BITS_PER_LONG 32
+
 #endif /* __ASSEMBLY__ */
 
 #endif /* __ASM_X86_TYPES_H */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
