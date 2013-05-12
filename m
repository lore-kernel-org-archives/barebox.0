Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbUQD-000274-KF
 for barebox@lists.infradead.org; Sun, 12 May 2013 11:26:34 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Sun, 12 May 2013 13:26:09 +0200
Message-Id: <1368357969-21633-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH] arm: mach-mvebu: drop useless clkdev.h
To: barebox@lists.infradead.org

As suggested by Antony Pavlov, get rid of the useless clkdev.h in
arch/arm/mach-mvebu/.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/mach-mvebu/include/mach/clkdev.h |    7 -------
 1 file changed, 7 deletions(-)
 delete mode 100644 arch/arm/mach-mvebu/include/mach/clkdev.h

diff --git a/arch/arm/mach-mvebu/include/mach/clkdev.h b/arch/arm/mach-mvebu/include/mach/clkdev.h
deleted file mode 100644
index 04b37a8..0000000
--- a/arch/arm/mach-mvebu/include/mach/clkdev.h
+++ /dev/null
@@ -1,7 +0,0 @@
-#ifndef __ASM_MACH_CLKDEV_H
-#define __ASM_MACH_CLKDEV_H
-
-#define __clk_get(clk) ({ 1; })
-#define __clk_put(clk) do { } while (0)
-
-#endif
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
