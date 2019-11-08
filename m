Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT23G-0000Si-8u
 for barebox@lists.infradead.org; Fri, 08 Nov 2019 11:03:39 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  8 Nov 2019 12:03:32 +0100
Message-Id: <20191108110332.32010-4-a.fatoum@pengutronix.de>
In-Reply-To: <20191108110332.32010-1-a.fatoum@pengutronix.de>
References: <20191108110332.32010-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 4/4] watchdog: f71808e: support .running device parameter
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The American Megatrends BIOS I am using can be configured to start the
Fintek watchdog prior to the UEFI payloads. To avoid BIOS updates that reset
this functionality going unnoticed, implement support for WDOG_HW_RUNNING.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  Use new enum wdog_hw_running
v1 -> v2:
  Use new WDOG_HW_RUNNING_SUPPORTED
---
 drivers/watchdog/f71808e_wdt.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/f71808e_wdt.c b/drivers/watchdog/f71808e_wdt.c
index 4f881a1d02bc..5307ab0b3ead 100644
--- a/drivers/watchdog/f71808e_wdt.c
+++ b/drivers/watchdog/f71808e_wdt.c
@@ -222,7 +222,7 @@ static int f71808e_wdt_init(struct f71808e_wdt *wd, struct device_d *dev)
 {
 	struct watchdog *wdd = &wd->wdd;
 	const char * const *names = pulse_width_names;
-	int wdt_conf;
+	unsigned long wdt_conf;
 	int ret;
 
 	superio_enter(wd->sioaddr);
@@ -262,6 +262,11 @@ static int f71808e_wdt_init(struct f71808e_wdt *wd, struct device_d *dev)
 
 	dev_info(dev, "reset reason: %s\n", reset_source_name());
 
+	if (test_bit(F71808FG_FLAG_WD_EN, &wdt_conf))
+		wdd->running = WDOG_HW_RUNNING;
+	else
+		wdd->running = WDOG_HW_NOT_RUNNING;
+
 	ret = watchdog_register(wdd);
 	if (ret)
 		return ret;
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
