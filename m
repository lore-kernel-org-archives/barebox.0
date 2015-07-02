Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAYFp-0005wz-NX
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 06:45:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Jul 2015 08:45:23 +0200
Message-Id: <1435819524-13516-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435819524-13516-1-git-send-email-s.hauer@pengutronix.de>
References: <1435819524-13516-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] blackfin: replace extern inline with static inline
To: Barebox List <barebox@lists.infradead.org>

Replaced in the kernel a long time ago, not compatible with gcc5.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/include/asm/io.h        | 8 ++++----
 arch/blackfin/include/asm/processor.h | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/blackfin/include/asm/io.h b/arch/blackfin/include/asm/io.h
index 2837b6a..703104e 100644
--- a/arch/blackfin/include/asm/io.h
+++ b/arch/blackfin/include/asm/io.h
@@ -90,21 +90,21 @@ extern void *__ioremap(unsigned long physaddr, unsigned long size,
 		       int cacheflag);
 extern void __iounmap(void *addr, unsigned long size);
 
-extern inline void *ioremap(unsigned long physaddr, unsigned long size)
+static inline void *ioremap(unsigned long physaddr, unsigned long size)
 {
 	return __ioremap(physaddr, size, IOMAP_NOCACHE_SER);
 }
-extern inline void *ioremap_nocache(unsigned long physaddr,
+static inline void *ioremap_nocache(unsigned long physaddr,
 				    unsigned long size)
 {
 	return __ioremap(physaddr, size, IOMAP_NOCACHE_SER);
 }
-extern inline void *ioremap_writethrough(unsigned long physaddr,
+static inline void *ioremap_writethrough(unsigned long physaddr,
 					 unsigned long size)
 {
 	return __ioremap(physaddr, size, IOMAP_WRITETHROUGH);
 }
-extern inline void *ioremap_fullcache(unsigned long physaddr,
+static inline void *ioremap_fullcache(unsigned long physaddr,
 				      unsigned long size)
 {
 	return __ioremap(physaddr, size, IOMAP_FULL_CACHING);
diff --git a/arch/blackfin/include/asm/processor.h b/arch/blackfin/include/asm/processor.h
index eaa1e4a..f463637 100644
--- a/arch/blackfin/include/asm/processor.h
+++ b/arch/blackfin/include/asm/processor.h
@@ -36,7 +36,7 @@
 #include <asm/ptrace.h>
 #include <asm/current.h>
 
-extern inline unsigned long rdusp(void)
+static inline unsigned long rdusp(void)
 {
 	unsigned long usp;
 
@@ -44,7 +44,7 @@ extern inline unsigned long rdusp(void)
 	return usp;
 }
 
-extern inline void wrusp(unsigned long usp)
+static inline void wrusp(unsigned long usp)
 {
 	__asm__ __volatile__("usp = %0;\n\t"::"da"(usp));
 }
@@ -130,7 +130,7 @@ static inline void exit_thread(void)
 /*
  * Return saved PC of a blocked thread.
  */
-extern inline unsigned long thread_saved_pc(struct thread_struct *t)
+static inline unsigned long thread_saved_pc(struct thread_struct *t)
 {
 	extern void scheduling_functions_start_here(void);
 	extern void scheduling_functions_end_here(void);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
