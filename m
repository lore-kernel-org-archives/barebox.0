Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkJWL-0007nd-Vx
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 18:32:50 +0000
Received: by mail-lb0-f177.google.com with SMTP id gg6so3506438lbb.36
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2012 11:32:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2012 22:32:32 +0400
Message-Id: <1340908354-17895-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
References: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 3/5] clocksource: move the NSEC_PER_SEC constant to common
 header
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/ppc/mach-mpc85xx/include/mach/clocks.h |    2 --
 include/clock.h                             |    2 ++
 include/linux/time.h                        |    1 +
 3 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/ppc/mach-mpc85xx/include/mach/clocks.h b/arch/ppc/mach-mpc85xx/include/mach/clocks.h
index 9477168..2ab367b 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/clocks.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/clocks.h
@@ -10,8 +10,6 @@ struct sys_info {
 	unsigned long freqLocalBus;
 };
 
-#define NSEC_PER_SEC	1000000000L
-
 unsigned long fsl_get_bus_freq(ulong dummy);
 unsigned long fsl_get_timebase_clock(void);
 void fsl_get_sys_info(struct sys_info *sysInfo);
diff --git a/include/clock.h b/include/clock.h
index 123f874..c01a8d0 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -3,6 +3,8 @@
 #ifndef CLOCK_H
 #define CLOCK_H
 
+#include <linux/time.h>
+
 #define CLOCKSOURCE_MASK(bits) (uint64_t)((bits) < 64 ? ((1ULL<<(bits))-1) : -1)
 
 struct clocksource {
diff --git a/include/linux/time.h b/include/linux/time.h
index bf12b99..a1be8fe 100644
--- a/include/linux/time.h
+++ b/include/linux/time.h
@@ -9,6 +9,7 @@
 
 #define _REENT_ONLY
 
+#define NSEC_PER_SEC	1000000000L
 #define SECSPERMIN	60L
 #define MINSPERHOUR	60L
 #define HOURSPERDAY	24L
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
