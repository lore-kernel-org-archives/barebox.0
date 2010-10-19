Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj8-0000sh-MX
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:27 +0200
Message-Id: <1287492930-15716-40-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 39/42] remove strange flush_cache functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/Makefile    |    1 -
 arch/arm/lib/cache.c     |   36 ---------------------------------
 arch/ppc/lib/Makefile    |    1 -
 arch/ppc/lib/cache.c     |   50 ----------------------------------------------
 arch/sandbox/os/common.c |    5 ----
 commands/loadb.c         |    1 -
 commands/loads.c         |    1 -
 include/cache.h          |    1 -
 8 files changed, 0 insertions(+), 96 deletions(-)
 delete mode 100644 arch/arm/lib/cache.c
 delete mode 100644 arch/ppc/lib/cache.c

diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index c1ac1aa..1d7f15a 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -1,7 +1,6 @@
 obj-y	+= armlinux.o
 obj-y	+= _ashldi3.o
 obj-y	+= _ashrdi3.o
-obj-y	+= cache.o
 obj-y	+= div0.o
 obj-y	+= _divsi3.o
 obj-y	+= _modsi3.o
diff --git a/arch/arm/lib/cache.c b/arch/arm/lib/cache.c
deleted file mode 100644
index 61ee9d3..0000000
--- a/arch/arm/lib/cache.c
+++ /dev/null
@@ -1,36 +0,0 @@
-/*
- * (C) Copyright 2002
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-/* for now: just dummy functions to satisfy the linker */
-
-#include <common.h>
-
-void  flush_cache (unsigned long dummy1, unsigned long dummy2)
-{
-#ifdef CONFIG_OMAP2420
-	void arm1136_cache_flush(void);
-
-	arm1136_cache_flush();
-#endif
-	return;
-}
diff --git a/arch/ppc/lib/Makefile b/arch/ppc/lib/Makefile
index 400b1e1..0844d56 100644
--- a/arch/ppc/lib/Makefile
+++ b/arch/ppc/lib/Makefile
@@ -1,6 +1,5 @@
 obj-y += bat_rw.o
 obj-y += board.o
-obj-y += cache.o
 obj-y += extable.o
 obj-$(CONFIG_USE_IRQ) += interrupts.o
 obj-y += kgdb.o
diff --git a/arch/ppc/lib/cache.c b/arch/ppc/lib/cache.c
deleted file mode 100644
index 3d863b3..0000000
--- a/arch/ppc/lib/cache.c
+++ /dev/null
@@ -1,50 +0,0 @@
-/*
- * (C) Copyright 2002
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- *
- * See file CREDITS for list of people who contributed to this
- * project.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <common.h>
-
-
-void flush_cache (ulong start_addr, ulong size)
-{
-#ifndef CONFIG_5xx
-	ulong addr, end_addr = start_addr + size;
-
-	if (CONFIG_CACHELINE_SIZE) {
-		addr = start_addr & (CONFIG_CACHELINE_SIZE - 1);
-		for (addr = start_addr;
-		     addr < end_addr;
-		     addr += CONFIG_CACHELINE_SIZE) {
-			asm ("dcbst 0,%0": :"r" (addr));
-		}
-		asm ("sync");	/* Wait for all dcbst to complete on bus */
-
-		for (addr = start_addr;
-		     addr < end_addr;
-		     addr += CONFIG_CACHELINE_SIZE) {
-			asm ("icbi 0,%0": :"r" (addr));
-		}
-	}
-	asm ("sync");		/* Always flush prefetch queue in any case */
-	asm ("isync");
-#endif
-}
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index c73aa79..89b2e5c 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -213,11 +213,6 @@ off_t linux_lseek(int fd, off_t offset)
 	return lseek(fd, offset, SEEK_SET);
 }
 
-void  flush_cache(unsigned long dummy1, unsigned long dummy2)
-{
-	/* why should we? */
-}
-
 extern void start_barebox(void);
 extern void mem_malloc_init(void *start, void *end);
 
diff --git a/commands/loadb.c b/commands/loadb.c
index acfb94f..faf4a97 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -636,7 +636,6 @@ static ulong load_serial_ymodem(void)
 				0) {
 			size += res;
 			addr += res;
-			flush_cache((ulong) yModemBuf, res);
 			wr = write(ofd, ymodemBuf, res);
 			if (res != wr) {
 				perror("ymodem");
diff --git a/commands/loads.c b/commands/loads.c
index 8269af1..6e0dc7f 100644
--- a/commands/loads.c
+++ b/commands/loads.c
@@ -175,7 +175,6 @@ load_serial (ulong offset)
 			    "## Total Size      = 0x%08lX = %ld Bytes\n",
 			    start_addr, end_addr, size, size
 		    );
-		    flush_cache (start_addr, size);
 		    sprintf(buf, "%lX", size);
 		    setenv("filesize", buf);
 		    return (addr);
diff --git a/include/cache.h b/include/cache.h
index 5968da9..23841dc 100644
--- a/include/cache.h
+++ b/include/cache.h
@@ -1,7 +1,6 @@
 #ifndef __CACHE_H
 #define __CACHE_H
 
-void	flush_cache   (unsigned long, unsigned long);
 int	icache_status (void);
 void	icache_enable (void);
 void	icache_disable(void);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
