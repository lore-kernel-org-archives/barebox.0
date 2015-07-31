Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZL6Ek-0005aQ-Bm
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 09:04:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1ZL4N8-0007NL-Iq
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 09:04:50 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.86_RC4)
 (envelope-from <jbe@pengutronix.de>) id 1ZL6EN-0004J9-Ia
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 11:03:55 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 31 Jul 2015 11:03:50 +0200
Message-Id: <1438333432-10118-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1438333432-10118-1-git-send-email-jbe@pengutronix.de>
References: <1438333432-10118-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/6] PPC/MPC52xx: unify header file name for clock API
To: barebox@lists.infradead.org

In preparation to re-use the i.MX I2C driver for the MPC5200 SoC use
clock.h instead of clocks.h for the clock API.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/cpu.c                              | 2 +-
 arch/ppc/mach-mpc5xxx/include/mach/{clocks.h => clock.h} | 0
 arch/ppc/mach-mpc5xxx/time.c                             | 2 +-
 drivers/net/fec_mpc5200.c                                | 2 +-
 drivers/serial/serial_mpc5xxx.c                          | 2 +-
 5 files changed, 4 insertions(+), 4 deletions(-)
 rename arch/ppc/mach-mpc5xxx/include/mach/{clocks.h => clock.h} (100%)

diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index a53af63..3f826e4 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -31,7 +31,7 @@
 #include <types.h>
 #include <errno.h>
 #include <of.h>
-#include <mach/clocks.h>
+#include <mach/clock.h>
 
 int checkcpu (void)
 {
diff --git a/arch/ppc/mach-mpc5xxx/include/mach/clocks.h b/arch/ppc/mach-mpc5xxx/include/mach/clock.h
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/include/mach/clocks.h
rename to arch/ppc/mach-mpc5xxx/include/mach/clock.h
diff --git a/arch/ppc/mach-mpc5xxx/time.c b/arch/ppc/mach-mpc5xxx/time.c
index 699a66d..aaa4573 100644
--- a/arch/ppc/mach-mpc5xxx/time.c
+++ b/arch/ppc/mach-mpc5xxx/time.c
@@ -20,7 +20,7 @@
 #include <common.h>
 #include <clock.h>
 #include <init.h>
-#include <mach/clocks.h>
+#include <mach/clock.h>
 #include <asm/common.h>
 
 uint64_t ppc_clocksource_read(void)
diff --git a/drivers/net/fec_mpc5200.c b/drivers/net/fec_mpc5200.c
index 14ef872..30be8f7 100644
--- a/drivers/net/fec_mpc5200.c
+++ b/drivers/net/fec_mpc5200.c
@@ -14,7 +14,7 @@
 #include <init.h>
 #include <driver.h>
 #include <mach/sdma.h>
-#include <mach/clocks.h>
+#include <mach/clock.h>
 #include <linux/phy.h>
 #include <linux/err.h>
 #include "fec_mpc5200.h"
diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index f48255b..711163c 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -35,7 +35,7 @@
 #include <init.h>
 #include <console.h>
 #include <xfuncs.h>
-#include <mach/clocks.h>
+#include <mach/clock.h>
 #include <linux/err.h>
 
 static int __mpc5xxx_serial_setbaudrate(struct mpc5xxx_psc *psc, int baudrate)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
