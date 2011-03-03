Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHU8-0003Ml-Jx
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:08 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1675998wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:04 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:26 +0100
Message-Id: <4d701d37.9009d80a.2cd3.5e7c@mx.google.com>
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
Subject: [PATCH 12/54] Add arch/nios2/lib/clock.c
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/lib/clock.c

---
 arch/nios2/lib/clock.c |   57 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 57 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/lib/clock.c

diff --git a/arch/nios2/lib/clock.c b/arch/nios2/lib/clock.c
new file mode 100644
index 0000000..dd08be7
--- /dev/null
+++ b/arch/nios2/lib/clock.c
@@ -0,0 +1,57 @@
+/*
+ * (C) Copyright 2011 - Franck JULLIEN <elec4fun@gmail.com>
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
+#include <common.h>
+#include <clock.h>
+#include <init.h>
+#include <asm/nios2-io.h>
+
+static nios_timer_t *timer = (nios_timer_t *) NIOS_SOPC_TIMER_BASE;
+
+static uint64_t nios_clocksource_read(void)
+{
+        timer->snapl = 0x55;             /* Dummy value*/
+	return (uint64_t)(~((((uint64_t)timer->snaph) << (uint64_t)16) + (uint64_t)timer->snapl));
+}
+
+static struct clocksource cs = {
+	.read	= nios_clocksource_read,
+	.mask	= CLOCKSOURCE_MASK(32),
+	.shift	= 12,
+};
+
+static int clocksource_init (void)
+{      
+        timer->control = 0;
+        timer->periodl = 0xFFFF;
+        timer->periodh = 0xFFFF;       
+        timer->control = NIOS_TIMER_CONT | NIOS_TIMER_START;
+
+        cs.mult = clocksource_hz2mult(NIOS_SOPC_TIMER_FREQ, cs.shift);
+
+        init_clock(&cs);
+
+	return 0;
+}
+
+core_initcall(clocksource_init);
+
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
