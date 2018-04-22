Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [84.19.187.99] (helo=lah-a2.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fAJki-0008WO-JB
 for barebox@lists.infradead.org; Sun, 22 Apr 2018 18:30:22 +0000
Received: from localhost (p50851871.dip0.t-ipconnect.de [80.133.24.113])
 by lah-a2.de (Postfix) with ESMTPSA id 7264B408CC69
 for <barebox@lists.infradead.org>; Sun, 22 Apr 2018 20:27:28 +0200 (CEST)
From: Andreas Schmidt <mail@schmidt-andreas.de>
Date: Sun, 22 Apr 2018 20:30:07 +0200
Message-Id: <20180422183007.23235-1-mail@schmidt-andreas.de>
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
Subject: [PATCH] watchdog: omap: set hwdev before call watchdog_register
To: barebox@lists.infradead.org

Since watchdog_register access to hwdev (see
commit 65a644388e845bde01215bf378d4df2a6a260a6a)
hwdev has to be initiate/set before calling watchdog_register.

Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>
---
 drivers/watchdog/omap_wdt.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/watchdog/omap_wdt.c b/drivers/watchdog/omap_wdt.c
index 27fdfd13a..c8a7ccf60 100644
--- a/drivers/watchdog/omap_wdt.c
+++ b/drivers/watchdog/omap_wdt.c
@@ -160,6 +160,7 @@ static int omap_wdt_probe(struct device_d *dev)
 
 	wdev = xzalloc(sizeof(*wdev));
 	wdev->wdog.set_timeout	= omap_wdt_set_timeout;
+	wdev->wdog.hwdev = dev;
 	wdev->wdt_trgr_pattern	= 0x1234;
 
 	/* reserve static register mappings */
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
