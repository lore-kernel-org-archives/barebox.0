Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUT-0003XT-L8
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:33 +0000
Received: by wyf23 with SMTP id 23so1676366wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:24 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:54 +0100
Message-Id: <4d701d4b.9009d80a.2cd3.5e9d@mx.google.com>
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
Subject: [PATCH 40/54] Add arch/nios2/include/asm/nios2.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/nios2.h

---
 arch/nios2/include/asm/nios2.h |   63 ++++++++++++++++++++++++++++++++++++++++
 1 files changed, 63 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/nios2.h

diff --git a/arch/nios2/include/asm/nios2.h b/arch/nios2/include/asm/nios2.h
new file mode 100644
index 0000000..54954e3
--- /dev/null
+++ b/arch/nios2/include/asm/nios2.h
@@ -0,0 +1,63 @@
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
+#ifndef __NIOS2_H__
+#define __NIOS2_H__
+
+/*------------------------------------------------------------------------
+ * Control registers -- use with wrctl() & rdctl()
+ *----------------------------------------------------------------------*/
+#define CTL_STATUS	0		/* Processor status reg		*/
+#define CTL_ESTATUS	1		/* Exception status reg		*/
+#define CTL_BSTATUS	2		/* Break status reg		*/
+#define CTL_IENABLE	3		/* Interrut enable reg		*/
+#define CTL_IPENDING	4		/* Interrut pending reg		*/
+
+/*------------------------------------------------------------------------
+ * Access to control regs
+ *----------------------------------------------------------------------*/
+#define _str_(x) #x
+
+#define rdctl(reg)\
+	({unsigned int val;\
+	asm volatile( "rdctl %0, ctl" _str_(reg)\
+		: "=r" (val) ); val;})
+
+#define wrctl(reg,val)\
+	asm volatile( "wrctl ctl" _str_(reg) ",%0"\
+		: : "r" (val))
+
+/*------------------------------------------------------------------------
+ * Control reg bit masks
+ *----------------------------------------------------------------------*/
+#define STATUS_IE	(1<<0)		/* Interrupt enable		*/
+#define STATUS_U	(1<<1)		/* User-mode			*/
+
+/*------------------------------------------------------------------------
+ * Bit-31 Cache bypass -- only valid for data access. When data cache
+ * is not implemented, bit 31 is ignored for compatibility.
+ *----------------------------------------------------------------------*/
+#define CACHE_BYPASS(a) ((a) | 0x80000000)
+#define CACHE_NO_BYPASS(a) ((a) & ~0x80000000)
+
+#endif /* __NIOS2_H__ */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
