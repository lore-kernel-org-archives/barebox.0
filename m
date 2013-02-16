Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo1.mail-out.ovh.net ([46.105.76.26]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6mRT-0006fN-Ud
 for barebox@lists.infradead.org; Sat, 16 Feb 2013 18:24:56 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 6D76BFFA627
 for <barebox@lists.infradead.org>; Sat, 16 Feb 2013 19:40:25 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 16 Feb 2013 19:23:45 +0100
Message-Id: <1361039026-26015-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130216182202.GI19322@game.jcrosoft.org>
References: <20130216182202.GI19322@game.jcrosoft.org>
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
Subject: [PATCH 1/2] highbank: move register value to include/mach
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

so the board can use it

Cc: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-highbank/core.c                       |    7 +++----
 arch/arm/mach-highbank/include/mach/hardware.h      |   14 ++++++++++++++
 arch/arm/mach-highbank/{ => include/mach}/sysregs.h |    0
 arch/arm/mach-highbank/reset.c                      |    3 +--
 4 files changed, 18 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/mach-highbank/include/mach/hardware.h
 rename arch/arm/mach-highbank/{ => include/mach}/sysregs.h (100%)

diff --git a/arch/arm/mach-highbank/core.c b/arch/arm/mach-highbank/core.c
index 3423c55..967d13f 100644
--- a/arch/arm/mach-highbank/core.c
+++ b/arch/arm/mach-highbank/core.c
@@ -15,11 +15,10 @@
 #include <asm/hardware/arm_timer.h>
 
 #include <mach/devices.h>
+#include <mach/hardware.h>
+#include <mach/sysregs.h>
 
-#include "sysregs.h"
-
-void __iomem *sregs_base = IOMEM(0xfff3c00);
-
+void __iomem *sregs_base = IOMEM(HB_SREG_A9_BASE);
 
 static void highbank_clk_init(void)
 {
diff --git a/arch/arm/mach-highbank/include/mach/hardware.h b/arch/arm/mach-highbank/include/mach/hardware.h
new file mode 100644
index 0000000..db7fff2
--- /dev/null
+++ b/arch/arm/mach-highbank/include/mach/hardware.h
@@ -0,0 +1,14 @@
+/*
+ * Copyright (C) 2010-2011 Calxeda, Inc
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * GPLv2 only
+ */
+
+#ifndef __MACH_HARDWARE_H__
+#define __MACH_HARDWARE_H__
+
+#define HB_SREG_A9_BASE			0xfff3c000
+#define HB_SYSRAM_OPP_TABLE_BASE	0xfff8f000
+
+#endif /* __MACH_HARDWARE_H__ */
diff --git a/arch/arm/mach-highbank/sysregs.h b/arch/arm/mach-highbank/include/mach/sysregs.h
similarity index 100%
rename from arch/arm/mach-highbank/sysregs.h
rename to arch/arm/mach-highbank/include/mach/sysregs.h
diff --git a/arch/arm/mach-highbank/reset.c b/arch/arm/mach-highbank/reset.c
index eb1d115..41418b2 100644
--- a/arch/arm/mach-highbank/reset.c
+++ b/arch/arm/mach-highbank/reset.c
@@ -8,8 +8,7 @@
 #include <io.h>
 
 #include <mach/devices.h>
-
-#include "sysregs.h"
+#include <mach/sysregs.h>
 
 void __noreturn reset_cpu(ulong addr)
 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
