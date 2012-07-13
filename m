Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Spl77-0002el-Ml
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 19:01:27 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0008Es-Sp
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Spl72-0005MT-O0
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 21:01:12 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 13 Jul 2012 21:01:05 +0200
Message-Id: <1342206070-29698-14-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
References: <1342206070-29698-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 13/18] ARM/Samsung: adapt the generic timer driver to support
 the S3C6410 SoC
To: barebox@lists.infradead.org

The S3C64XX SoC has a real 32 bit counter, but almost the same style of
registers. It's enough to change the parameters, to get the routines work on
this SoC.

TODO: what about the S5P SoCs?

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-samsung/s3c-timer.c |   17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-samsung/s3c-timer.c b/arch/arm/mach-samsung/s3c-timer.c
index 6665c8c..271f97d 100644
--- a/arch/arm/mach-samsung/s3c-timer.c
+++ b/arch/arm/mach-samsung/s3c-timer.c
@@ -37,11 +37,20 @@
 #define S3C_TCNTB4 (S3C_TIMER_BASE + 0x3c)
 #define S3C_TCNTO4 (S3C_TIMER_BASE + 0x40)
 
-#define TIMER_WIDTH 16
-#define TIMER_SHIFT 10
-#define PRE_MUX 3
-#define PRE_MUX_ADD 1
+#ifdef CONFIG_ARCH_S3C24xx
+# define TIMER_WIDTH 16
+# define TIMER_SHIFT 10
+# define PRE_MUX 3
+# define PRE_MUX_ADD 1
 static const uint32_t max = 0x0000ffff;
+#endif
+#ifdef CONFIG_ARCH_S3C64xx
+# define TIMER_WIDTH 32
+# define TIMER_SHIFT 10
+# define PRE_MUX 4
+# define PRE_MUX_ADD 0
+static const uint32_t max = ~0;
+#endif
 
 static void s3c_init_t4_clk_source(void)
 {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
