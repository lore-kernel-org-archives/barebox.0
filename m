Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj8VV-0006yJ-OG
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 20:06:51 +0000
Received: by mail-lf1-x142.google.com with SMTP id a16so231568lfg.3
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2019 12:06:49 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 14 Jan 2019 23:06:39 +0300
Message-Id: <20190114200641.4242-2-antonynpavlov@gmail.com>
In-Reply-To: <20190114200641.4242-1-antonynpavlov@gmail.com>
References: <20190114200641.4242-1-antonynpavlov@gmail.com>
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
Subject: [PATCH-for-next 1/2] MIPS: asm/types.h: drop unused stuff
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/types.h | 29 -----------------------------
 1 file changed, 29 deletions(-)

diff --git a/arch/mips/include/asm/types.h b/arch/mips/include/asm/types.h
index cd76f53b50..78068e4113 100644
--- a/arch/mips/include/asm/types.h
+++ b/arch/mips/include/asm/types.h
@@ -10,39 +10,10 @@
 
 #include <asm-generic/int-ll64.h>
 
-/*
- * We don't use int-l64.h for the kernel anymore but still use it for
- * userspace to avoid code changes.
- */
-#if (_MIPS_SZLONG == 64) && !defined(__KERNEL__)
-# include <asm-generic/int-l64.h>
-#else
-# include <asm-generic/int-ll64.h>
-#endif
-
 #ifndef __ASSEMBLY__
 
 typedef unsigned short umode_t;
 
 #endif /* __ASSEMBLY__ */
 
-/*
- * These aren't exported outside the kernel to avoid name space clashes
- */
-#ifdef __KERNEL__
-#ifndef __ASSEMBLY__
-
-/*
- * Don't use phys_t.  You've been warned.
- */
-#ifdef CONFIG_64BIT_PHYS_ADDR
-typedef unsigned long long phys_t;
-#else
-typedef unsigned long phys_t;
-#endif
-
-#endif /* __ASSEMBLY__ */
-
-#endif /* __KERNEL__ */
-
 #endif /* _ASM_TYPES_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
