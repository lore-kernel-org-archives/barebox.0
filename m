Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUZ-0003Ml-8K
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:40 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1675998wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:30 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:59:04 +0100
Message-Id: <4d701d52.9009d80a.2cd3.5ea9@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 50/54] Add arch/nios2/include/asm/string.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/string.h

---
 arch/nios2/include/asm/string.h |   47 +++++++++++++++++++++++++++++++++++++++
 1 files changed, 47 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/string.h

diff --git a/arch/nios2/include/asm/string.h b/arch/nios2/include/asm/string.h
new file mode 100644
index 0000000..39e78a6
--- /dev/null
+++ b/arch/nios2/include/asm/string.h
@@ -0,0 +1,47 @@
+/*
+ * (C) Copyright 2004, Psyent Corporation <www.psyent.com>
+ * Scott McNutt <smcnutt@psyent.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+#ifndef __ASM_NIOS2_STRING_H_
+#define __ASM_NIOS2_STRING_H_
+/*
+#undef __HAVE_ARCH_STRRCHR
+extern char * strrchr(const char * s, int c);
+
+#undef __HAVE_ARCH_STRCHR
+extern char * strchr(const char * s, int c);
+*/
+#undef __HAVE_ARCH_MEMCPY
+extern void * memcpy(void *, const void *, __kernel_size_t);
+
+#undef __HAVE_ARCH_MEMMOVE
+extern void * memmove(void *, const void *, __kernel_size_t);
+
+#undef __HAVE_ARCH_MEMCHR
+extern void * memchr(const void *, int, __kernel_size_t);
+
+#undef __HAVE_ARCH_MEMSET
+extern void * memset(void *, int, __kernel_size_t);
+
+#undef __HAVE_ARCH_MEMZERO
+extern void memzero(void *ptr, __kernel_size_t n);
+
+#endif /* __ASM_NIOS2_STRING_H_ */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
