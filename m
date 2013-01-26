Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tz3rA-0004Ux-Ss
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 11:23:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 26 Jan 2013 12:23:21 +0100
Message-Id: <1359199403-27664-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359199403-27664-1-git-send-email-s.hauer@pengutronix.de>
References: <1359199403-27664-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM bcm2835: Fix noreturn function does return
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-bcm2835/core.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-bcm2835/core.c b/arch/arm/mach-bcm2835/core.c
index b0fec8b..f44ecd5 100644
--- a/arch/arm/mach-bcm2835/core.c
+++ b/arch/arm/mach-bcm2835/core.c
@@ -97,5 +97,7 @@ void __noreturn reset_cpu (unsigned long addr)
 	rstc |= PM_RSTC_WRCFG_FULL_RESET;
 	writel(PM_PASSWORD | RESET_TIMEOUT, PM_WDOG);
 	writel(PM_PASSWORD | rstc, PM_RSTC);
+
+	while (1);
 }
 EXPORT_SYMBOL(reset_cpu);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
