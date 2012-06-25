Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj8eq-0007ip-Qo
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 12:44:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 14:44:37 +0200
Message-Id: <1340628281-8774-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340628281-8774-1-git-send-email-s.hauer@pengutronix.de>
References: <1340628281-8774-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] blackfin: add __ashrdi3
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/lib/Makefile  |    1 +
 arch/blackfin/lib/ashrdi3.c |   36 ++++++++++++++++++++++++++++++++++++
 2 files changed, 37 insertions(+)
 create mode 100644 arch/blackfin/lib/ashrdi3.c

diff --git a/arch/blackfin/lib/Makefile b/arch/blackfin/lib/Makefile
index 2f77318..cefb4dc 100644
--- a/arch/blackfin/lib/Makefile
+++ b/arch/blackfin/lib/Makefile
@@ -8,6 +8,7 @@ obj-y += smulsi3_highpart.o
 obj-y += umodsi3.o
 obj-y += lshrdi3.o
 obj-y += ashldi3.o
+obj-y += ashrdi3.o
 obj-y += divsi3.o
 obj-y += modsi3.o
 obj-y += cpu.o
diff --git a/arch/blackfin/lib/ashrdi3.c b/arch/blackfin/lib/ashrdi3.c
new file mode 100644
index 0000000..b5b351e
--- /dev/null
+++ b/arch/blackfin/lib/ashrdi3.c
@@ -0,0 +1,36 @@
+/*
+ * Copyright 2004-2009 Analog Devices Inc.
+ *
+ * Licensed under the GPL-2 or later.
+ */
+
+#include "gcclib.h"
+
+#ifdef CONFIG_ARITHMETIC_OPS_L1
+DItype __ashrdi3(DItype u, word_type b)__attribute__((l1_text));
+#endif
+
+DItype __ashrdi3(DItype u, word_type b)
+{
+	DIunion w;
+	word_type bm;
+	DIunion uu;
+
+	if (b == 0)
+		return u;
+
+	uu.ll = u;
+
+	bm = (sizeof(SItype) * BITS_PER_UNIT) - b;
+	if (bm <= 0) {
+		/* w.s.high = 1..1 or 0..0 */
+		w.s.high = uu.s.high >> (sizeof(SItype) * BITS_PER_UNIT - 1);
+		w.s.low = uu.s.high >> -bm;
+	} else {
+		USItype carries = (USItype) uu.s.high << bm;
+		w.s.high = uu.s.high >> b;
+		w.s.low = ((USItype) uu.s.low >> b) | carries;
+	}
+
+	return w.ll;
+}
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
