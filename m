Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzhQ0-0000D4-Jn
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 07:14:57 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 25 Jun 2014 09:18:18 +0200
Message-Id: <1403680701-10494-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/4] arm: add errata workarounds
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Header only implementation, so they can be pulled
into the individual SoC cpu init functions.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/include/asm/errata.h | 67 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 arch/arm/include/asm/errata.h

diff --git a/arch/arm/include/asm/errata.h b/arch/arm/include/asm/errata.h
new file mode 100644
index 0000000..e2ffd87
--- /dev/null
+++ b/arch/arm/include/asm/errata.h
@@ -0,0 +1,67 @@
+/*
+ * Copyright (C) 2014 Lucas Stach, Pengutronix
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
+ */
+
+static inline void enable_arm_errata_716044_war(void)
+{
+	__asm__ __volatile__ (
+		"mrc	p15, 0, r0, c1, c0, 0\n"
+		"orr	r0, r0, #1 << 11\n"
+		"mcr	p15, 0, r0, c1, c0, 0\n"
+	);
+}
+
+static inline void enable_arm_errata_742230_war(void)
+{
+	__asm__ __volatile__ (
+		"mrc	p15, 0, r0, c15, c0, 1\n"
+		"orr	r0, r0, #1 << 4\n"
+		"mcr	p15, 0, r0, c15, c0, 1\n"
+	);
+}
+
+static inline void enable_arm_errata_743622_war(void)
+{
+	__asm__ __volatile__ (
+		"mrc	p15, 0, r0, c15, c0, 1\n"
+		"orr	r0, r0, #1 << 6\n"
+		"mcr	p15, 0, r0, c15, c0, 1\n"
+	);
+}
+
+static inline void enable_arm_errata_751472_war(void)
+{
+	__asm__ __volatile__ (
+		"mrc	p15, 0, r0, c15, c0, 1\n"
+		"orr	r0, r0, #1 << 11\n"
+		"mcr	p15, 0, r0, c15, c0, 1\n"
+	);
+}
+
+static inline void enable_arm_errata_761320_war(void)
+{
+	__asm__ __volatile__ (
+		"mrc	p15, 0, r0, c15, c0, 1\n"
+		"orr	r0, r0, #1 << 21\n"
+		"mcr	p15, 0, r0, c15, c0, 1\n"
+	);
+}
+
+static inline void enable_arm_errata_794072_war(void)
+{
+	__asm__ __volatile__ (
+		"mrc	p15, 0, r0, c15, c0, 1\n"
+		"orr	r0, r0, #1 << 4\n"
+		"mcr	p15, 0, r0, c15, c0, 1\n"
+	);
+}
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
