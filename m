Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og108.obsmtp.com ([64.18.0.186])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7Rvs-0005B9-2w
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 14:10:48 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 31 Aug 2012 15:10:32 +0100
Message-Id: <1346422235-3949-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
References: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 3/6] mpc85xx: header update
To: barebox@lists.infradead.org

In order to use the IMX i2c driver on the mpc85xx SOC, the file mach/clocks.h
is renamed mach/clock.h. Files using this header are updated accordingly.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c      |    2 +-
 .../include/mach/{clocks.h => clock.h}             |    0
 arch/ppc/mach-mpc85xx/speed.c                      |    2 +-
 arch/ppc/mach-mpc85xx/time.c                       |    2 +-
 4 files changed, 3 insertions(+), 3 deletions(-)
 rename arch/ppc/mach-mpc85xx/include/mach/{clocks.h => clock.h} (100%)

diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index 734fef9..23d752d 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -34,7 +34,7 @@
 #include <mach/mpc85xx.h>
 #include <mach/mmu.h>
 #include <mach/immap_85xx.h>
-#include <mach/clocks.h>
+#include <mach/clock.h>
 #include <mach/gianfar.h>
 #include <mach/early_udelay.h>
 
diff --git a/arch/ppc/mach-mpc85xx/include/mach/clocks.h b/arch/ppc/mach-mpc85xx/include/mach/clock.h
similarity index 100%
rename from arch/ppc/mach-mpc85xx/include/mach/clocks.h
rename to arch/ppc/mach-mpc85xx/include/mach/clock.h
diff --git a/arch/ppc/mach-mpc85xx/speed.c b/arch/ppc/mach-mpc85xx/speed.c
index fff2d22..6778d57 100644
--- a/arch/ppc/mach-mpc85xx/speed.c
+++ b/arch/ppc/mach-mpc85xx/speed.c
@@ -30,7 +30,7 @@
 
 #include <common.h>
 #include <asm/processor.h>
-#include <mach/clocks.h>
+#include <mach/clock.h>
 #include <mach/immap_85xx.h>
 #include <mach/mpc85xx.h>
 
diff --git a/arch/ppc/mach-mpc85xx/time.c b/arch/ppc/mach-mpc85xx/time.c
index 408a28a..c50591c 100644
--- a/arch/ppc/mach-mpc85xx/time.c
+++ b/arch/ppc/mach-mpc85xx/time.c
@@ -25,7 +25,7 @@
 #include <common.h>
 #include <clock.h>
 #include <init.h>
-#include <mach/clocks.h>
+#include <mach/clock.h>
 
 uint64_t ppc_clocksource_read(void)
 {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
