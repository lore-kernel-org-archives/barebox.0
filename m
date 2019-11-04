Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRkc9-0007Ju-DQ
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 22:14:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Nov 2019 23:14:07 +0100
Message-Id: <20191104221407.14791-4-a.fatoum@pengutronix.de>
In-Reply-To: <20191104221407.14791-1-a.fatoum@pengutronix.de>
References: <20191104221407.14791-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 4/4] watchdog: f71808e: support .running device parameter
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The American Megatrends BIOS I am using can be configured to start the
Fintek watchdog prior to the UEFI payloads. To avoid BIOS updates that reset
this functionality going unnoticed, implement support for WDOG_HW_RUNNING.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  Use new WDOG_HW_RUNNING_SUPPORTED
---
 drivers/watchdog/f71808e_wdt.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/f71808e_wdt.c b/drivers/watchdog/f71808e_wdt.c
index 4f881a1d02bc..bc17264619d2 100644
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
@@ -262,6 +262,10 @@ static int f71808e_wdt_init(struct f71808e_wdt *wd, struct device_d *dev)
 
 	dev_info(dev, "reset reason: %s\n", reset_source_name());
 
+	set_bit(WDOG_HW_RUNNING_SUPPORTED, &wdd->status);
+	if (test_bit(F71808FG_FLAG_WD_EN, &wdt_conf))
+		set_bit(WDOG_HW_RUNNING, &wdd->status);
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
