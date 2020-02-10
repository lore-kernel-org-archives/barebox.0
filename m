Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1DTP-0005rH-3t
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 18:07:56 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Feb 2020 19:07:51 +0100
Message-Id: <20200210180751.31108-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200210180751.31108-1-a.fatoum@pengutronix.de>
References: <20200210180751.31108-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] watchdog: dw_wdt: populate driver_d.name
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Apparently, somewhere between v2017.01.0 and v2020.01.0, barebox became
dependent on drivers having a name as having this driver enabled in
v2020.01.0 has barebox crash due to a null pointer dereference in the
device_match's second strcmp.

A previous commit introduced a palatable warning for this case.
Now in order to be able to use the driver again, give it a name.

Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/dw_wdt.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/watchdog/dw_wdt.c b/drivers/watchdog/dw_wdt.c
index a029da2b2f4a..cb0d17e3610b 100644
--- a/drivers/watchdog/dw_wdt.c
+++ b/drivers/watchdog/dw_wdt.c
@@ -189,6 +189,7 @@ static struct of_device_id dw_wdt_of_match[] = {
 };
 
 static struct driver_d dw_wdt_driver = {
+	.name		= "dw-wdt",
 	.probe		= dw_wdt_drv_probe,
 	.of_compatible	= DRV_OF_COMPAT(dw_wdt_of_match),
 };
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
