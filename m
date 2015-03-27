Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YbZqz-0008JE-LI
 for barebox@lists.infradead.org; Fri, 27 Mar 2015 19:23:39 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri, 27 Mar 2015 20:23:11 +0100
Message-Id: <1427484192-5410-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/2] ARM/MXS/i.MX28: recognize watchdog reset
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, sha@pengutronix.de

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

When a watchdog timeout is set in the linux kernel, the FORCE_UPDATE bit is set.
Use this to recognize a system reset that was triggered by the watchdog.
Since only the wdt part of the kernel driver sets this bit, this is a safe
distinguishing feature.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/watchdog/im28wd.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index 3e73ecd62e7c..a9093a7b51c9 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -176,6 +176,13 @@ static void __maybe_unused imx28_detect_reset_source(const struct imx28_wd *p)
 		reset_source_set(RESET_RST);
 		return;
 	}
+	reg = readl(p->regs + MXS_RTC_PERSISTENT1);
+	if (reg & MXS_RTC_PERSISTENT1_FORCE_UPDATER) {
+		writel(MXS_RTC_PERSISTENT1_FORCE_UPDATER,
+			p->regs + MXS_RTC_PERSISTENT1 + MXS_RTC_CLR_ADDR);
+		reset_source_set(RESET_WDG);
+		return;
+	}
 
 	reset_source_set(RESET_RST);
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
