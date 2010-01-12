Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NUdrz-0007Gq-69
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 10:21:04 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrr-0006W8-D4
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:55 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NUdrr-000718-B0
	for barebox@lists.infradead.org; Tue, 12 Jan 2010 11:20:55 +0100
Message-Id: <20100112102055.221848267@pengutronix.de>
References: <20100112101534.868276907@pengutronix.de>
Date: Tue, 12 Jan 2010 11:15:43 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Content-Disposition: inline; filename=add_timer.diff
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
Subject: [PATCHv2 09/14] Bring in the time reference for the x86 platforms
To: barebox@lists.infradead.org

This code uses the always (hopefully) existing PIT device to get the time
reference for barebox.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 arch/x86/mach-i386/Makefile    |    3 +
 arch/x86/mach-i386/pit_timer.c |   71 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 74 insertions(+)

Index: u-boot-2.0.0-rc10/arch/x86/mach-i386/pit_timer.c
===================================================================
--- /dev/null
+++ u-boot-2.0.0-rc10/arch/x86/mach-i386/pit_timer.c
@@ -0,0 +1,71 @@
+/*
+ * Copyright (C) 2009 Juergen Beisert, Pengutronix
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
+ *
+ */
+
+/**
+ * @file
+ * @brief Clocksource based on the 'Programmable Interval Timer' PIT (8253)
+ *
+ * This timer should be available on almost all PCs. It also should be run
+ * at a fixed frequency (1193181.8181 Hz) and not modified to use another
+ * reload value than 0xFFFF. So, it always counts from 0xffff down to 0.
+ *
+ * @note: We can't reprogram the PIT, it will be still used by the BIOS. This
+ * clocksource driver does not touch any PIT settings.
+ */
+
+#include <init.h>
+#include <clock.h>
+#include <asm/io.h>
+
+/** base address of the PIT in a standard PC */
+#define PIT 0x40
+
+static uint64_t pit_clocksource_read(void)
+{
+	uint16_t val1, val2;
+
+	outb(0x00, PIT + 3);	/* latch counter 0 */
+	outb(0x00, 0x80);
+
+	val1 = inb(PIT);
+	outb(0x00, 0x80);
+
+	val2 = inb(PIT);
+	val2 <<= 8;
+
+	/* note: its a down counter */
+	return 0xFFFFU - (val1 | val2);
+}
+
+static struct clocksource cs = {
+	.read	= pit_clocksource_read,
+	.mask	= 0x0000ffff,
+	.shift	= 10,
+};
+
+static int clocksource_init (void)
+{
+	cs.mult = clocksource_hz2mult(1193182, cs.shift);
+	init_clock(&cs);
+
+	return 0;
+}
+
+core_initcall(clocksource_init);
Index: u-boot-2.0.0-rc10/arch/x86/mach-i386/Makefile
===================================================================
--- u-boot-2.0.0-rc10.orig/arch/x86/mach-i386/Makefile
+++ u-boot-2.0.0-rc10/arch/x86/mach-i386/Makefile
@@ -1,2 +1,5 @@
 obj-y += generic.o
 obj-y += reset.o
+
+# reference clocksource
+obj-y += pit_timer.o

-- 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
