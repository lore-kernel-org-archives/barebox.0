Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OrFg8-0004yG-He
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 19:42:34 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  2 Sep 2010 21:41:49 +0200
Message-Id: <1283456510-28086-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100902194046.GA21449@game.jcrosoft.org>
References: <20100902194046.GA21449@game.jcrosoft.org>
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
Subject: [PATCH 8/9 V2] use %W instead of size_human_readable and use IEEE
	1541 format
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c      |    7 ++---
 common/startup.c      |    9 +++----
 include/common.h      |    1 -
 lib/Makefile          |    1 -
 lib/display_options.c |   60 -------------------------------------------------
 5 files changed, 7 insertions(+), 71 deletions(-)
 delete mode 100644 lib/display_options.c

diff --git a/commands/bootm.c b/commands/bootm.c
index 11325dc..cbdf55f 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -552,11 +552,11 @@ print_image_hdr (image_header_t *hdr)
 	printf ("   Image Type:   %s %s %s (%s)\n", image_arch(hdr), image_os(hdr),
 			image_type(hdr), image_compression(hdr));
 #endif
-	printf ("   Data Size:    %d Bytes = %s\n"
+	printf ("   Data Size:    %d Bytes = %WB\n"
 		"   Load Address: %08x\n"
 		"   Entry Point:  %08x\n",
 			ntohl(hdr->ih_size),
-			size_human_readable(ntohl(hdr->ih_size)),
+			ntohl(hdr->ih_size),
 			ntohl(hdr->ih_load),
 			ntohl(hdr->ih_ep));
 
@@ -567,8 +567,7 @@ print_image_hdr (image_header_t *hdr)
 
 		puts ("   Contents:\n");
 		for (i=0; (len = ntohl(*len_ptr)); ++i, ++len_ptr) {
-			printf ("   Image %d: %8ld Bytes = %s", i, len,
-				size_human_readable (len));
+			printf ("   Image %d: %8ld Bytes = %WB", i, len, len);
 		}
 	}
 }
diff --git a/common/startup.c b/common/startup.c
index 2ed16fe..8e49bd2 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -52,12 +52,11 @@ static void display_meminfo(void)
 
 	debug("barebox code : 0x%08lX -> 0x%08lX  BSS: -> 0x%08lX\n",
 	       _barebox_start, _bss_start, _bss_end);
-	printf("Malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
-		mstart, mend, size_human_readable(msize));
+	printf("Malloc space: 0x%08lx -> 0x%08lx (size %WB)\n",
+		mstart, mend, msize);
 #ifdef CONFIG_ARM
-	printf("Stack space : 0x%08lx -> 0x%08lx (size %s)\n",
-		STACK_BASE, STACK_BASE + STACK_SIZE,
-		size_human_readable(STACK_SIZE));
+	printf("Stack space : 0x%08lx -> 0x%08lx (size %WB)\n",
+		STACK_BASE, STACK_BASE + STACK_SIZE, STACK_SIZE);
 #endif
 }
 
diff --git a/include/common.h b/include/common.h
index 64f49db..fda04d4 100644
--- a/include/common.h
+++ b/include/common.h
@@ -95,7 +95,6 @@ void __noreturn panic(const char *fmt, ...);
 
 /* */
 long int initdram (int);
-char *size_human_readable(ulong size);
 
 /* common/main.c */
 int	run_command	(const char *cmd, int flag);
diff --git a/lib/Makefile b/lib/Makefile
index 8c5df08..e5a82fc 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -1,6 +1,5 @@
 obj-y			+= ctype.o
 obj-y			+= rbtree.o
-obj-y			+= display_options.o
 obj-y			+= ldiv.o
 obj-y			+= string.o
 obj-y			+= vsprintf.o
diff --git a/lib/display_options.c b/lib/display_options.c
deleted file mode 100644
index 03f4f22..0000000
--- a/lib/display_options.c
+++ /dev/null
@@ -1,60 +0,0 @@
-/*
- * (C) Copyright 2000-2002
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
-/*
- * return a pointer to a string containing the size
- * as "xxx kB", "xxx.y kB", "xxx MB" or "xxx.y MB" as needed;
- */
-char *size_human_readable(ulong size)
-{
-	static char buf[20];
-	ulong m, n;
-	ulong d = 1 << 20;		/* 1 MB */
-	char  c = 'M';
-	char *ptr = buf;
-
-	if (size < d) {			/* print in kB */
-		c = 'k';
-		d = 1 << 10;
-	}
-
-	n = size / d;
-
-	m = (10 * (size - (n * d)) + (d / 2) ) / d;
-
-	if (m >= 10) {
-		m -= 10;
-		n += 1;
-	}
-
-	ptr += sprintf(buf, "%2ld", n);
-	if (m) {
-		ptr += sprintf (ptr,".%ld", m);
-	}
-	sprintf(ptr, " %cB", c);
-
-	return buf;
-}
-EXPORT_SYMBOL(size_human_readable);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
