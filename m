Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHWL-0003la-6n
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 23:01:21 +0000
Received: by wwj40 with SMTP id 40so1441730wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 15:01:20 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:25 +0100
Message-Id: <4d701d37.9009d80a.2cd3.5e7b@mx.google.com>
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
Subject: [PATCH 11/54] Add arch/nios2/lib/cache.S
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/lib/cache.S

---
 arch/nios2/lib/cache.S |   74 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 74 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/lib/cache.S

diff --git a/arch/nios2/lib/cache.S b/arch/nios2/lib/cache.S
new file mode 100644
index 0000000..e3014d0
--- /dev/null
+++ b/arch/nios2/lib/cache.S
@@ -0,0 +1,74 @@
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
+
+#include <config.h>
+
+	.text
+
+	.global flush_dcache
+
+flush_dcache:
+	add	r5, r5, r4
+	movhi	r8, %hi(DCACHE_LINE_SIZE)
+	ori	r8, r8, %lo(DCACHE_LINE_SIZE)
+0:	flushd	0(r4)
+	add	r4, r4, r8
+	bltu	r4, r5, 0b
+	ret
+
+
+	.global flush_icache
+
+flush_icache:
+	add	r5, r5, r4
+	movhi	r8, %hi(ICACHE_LINE_SIZE)
+	ori	r8, r8, %lo(ICACHE_LINE_SIZE)
+1:	flushi	r4
+	add	r4, r4, r8
+	bltu	r4, r5, 1b
+	ret
+
+	.global flush_cache
+
+flush_cache:
+	add	r5, r5, r4
+	mov	r9, r4
+	mov	r10, r5
+
+	movhi	r8, %hi(DCACHE_LINE_SIZE)
+	ori	r8, r8, %lo(DCACHE_LINE_SIZE)
+0:	flushd	0(r4)
+	add	r4, r4, r8
+	bltu	r4, r5, 0b
+
+	mov	r4, r9
+	mov	r5, r10
+	movhi	r8, %hi(ICACHE_LINE_SIZE)
+	ori	r8, r8, %lo(ICACHE_LINE_SIZE)
+1:	flushi	r4
+	add	r4, r4, r8
+	bltu	r4, r5, 1b
+
+	sync
+	flushp
+	ret
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
