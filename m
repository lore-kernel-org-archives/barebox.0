Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrPuJ-0004G6-67
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 08:46:57 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SrPuG-0003IX-C3
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 10:46:52 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1SrPuG-0004gc-9u
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 10:46:52 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 18 Jul 2012 10:46:50 +0200
Message-Id: <1342601210-17849-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1342601210-17849-1-git-send-email-jbe@pengutronix.de>
References: <1342601210-17849-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/4] ARM/MXS: add reset cause detection
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/watchdog/im28wd.c |   25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
index b016910..1f987de 100644
--- a/drivers/watchdog/im28wd.c
+++ b/drivers/watchdog/im28wd.c
@@ -21,6 +21,7 @@
 #include <errno.h>
 #include <malloc.h>
 #include <watchdog.h>
+#include <reset_source.h>
 
 #define MXS_RTC_CTRL 0x0
 #define MXS_RTC_SET_ADDR 0x4
@@ -73,6 +74,27 @@ static int imx28_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
 	return 0;
 }
 
+static void __maybe_unused imx28_detect_reset_source(const struct imx28_wd *p)
+{
+	u32 reg;
+
+	reg = readl(p->regs + MXS_RTC_PERSISTENT0);
+	if (reg & MXS_RTC_PERSISTENT0_EXT_RST) {
+		writel(MXS_RTC_PERSISTENT0_EXT_RST,
+			p->regs + MXS_RTC_PERSISTENT0 + MXS_RTC_CLR_ADDR);
+		set_reset_source(RESET_POR);
+		return;
+	}
+	if (reg & MXS_RTC_PERSISTENT0_THM_RST) {
+		writel(MXS_RTC_PERSISTENT0_THM_RST,
+			p->regs + MXS_RTC_PERSISTENT0 + MXS_RTC_CLR_ADDR);
+		set_reset_source(RESET_RST);
+		return;
+	}
+
+	set_reset_source(RESET_RST);
+}
+
 static int imx28_wd_probe(struct device_d *dev)
 {
 	struct imx28_wd *priv;
@@ -94,6 +116,9 @@ static int imx28_wd_probe(struct device_d *dev)
 	if (rc != 0)
 		goto on_error;
 
+	if (IS_ENABLED(CONFIG_RESET_SOURCE))
+		imx28_detect_reset_source(priv);
+
 	dev->priv = priv;
 	return 0;
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
