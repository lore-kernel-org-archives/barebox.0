Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f178.google.com ([209.85.217.178])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbQEZ-0000XI-7C
 for barebox@lists.infradead.org; Sun, 12 May 2013 06:58:16 +0000
Received: by mail-lb0-f178.google.com with SMTP id p10so1701457lbv.23
 for <barebox@lists.infradead.org>; Sat, 11 May 2013 23:57:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 12 May 2013 10:56:59 +0400
Message-Id: <1368341819-19115-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] ARM: remove unused clkdev.h
To: barebox@lists.infradead.org

See also:

  commit eb84709192f1b616cd141594c34ddbc072c8d6ec
  Author: Sascha Hauer <s.hauer@pengutronix.de>
  Date:   Mon Mar 25 15:18:38 2013 +0100

      clk: remove unused __clk_[get|put]

      This is some unused code resulting from copying stuff from
      the kernel. Remove it.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/mach-tegra/include/mach/clkdev.h |    7 -------
 arch/arm/mach-zynq/include/mach/clkdev.h  |    6 ------
 2 files changed, 13 deletions(-)
 delete mode 100644 arch/arm/mach-tegra/include/mach/clkdev.h
 delete mode 100644 arch/arm/mach-zynq/include/mach/clkdev.h

diff --git a/arch/arm/mach-tegra/include/mach/clkdev.h b/arch/arm/mach-tegra/include/mach/clkdev.h
deleted file mode 100644
index 04b37a8..0000000
--- a/arch/arm/mach-tegra/include/mach/clkdev.h
+++ /dev/null
@@ -1,7 +0,0 @@
-#ifndef __ASM_MACH_CLKDEV_H
-#define __ASM_MACH_CLKDEV_H
-
-#define __clk_get(clk) ({ 1; })
-#define __clk_put(clk) do { } while (0)
-
-#endif
diff --git a/arch/arm/mach-zynq/include/mach/clkdev.h b/arch/arm/mach-zynq/include/mach/clkdev.h
deleted file mode 100644
index 31f7035..0000000
--- a/arch/arm/mach-zynq/include/mach/clkdev.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef __ASM_MACH_CLKDEV_H
-#define __ASM_MACH_CLKDEV_H
-
-#define __clk_get(clk) ({ 1; })
-#define __clk_put(clk) do { } while (0)
-#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
