Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXDT5-00068C-Bg
 for barebox@lists.infradead.org; Sun, 24 Jun 2018 22:26:56 +0000
Received: by mail-pl0-x243.google.com with SMTP id 6-v6so5874553plb.0
 for <barebox@lists.infradead.org>; Sun, 24 Jun 2018 15:26:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 24 Jun 2018 15:26:20 -0700
Message-Id: <20180624222623.30564-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180624222623.30564-1-andrew.smirnov@gmail.com>
References: <20180624222623.30564-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/6] watchdog: rave-sp-wdt: Remove bogus leftover code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This code should've been removed when the driver was rebased against
latest watchdog plumbing in Barebox.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/watchdog/rave-sp-wdt.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/watchdog/rave-sp-wdt.c b/drivers/watchdog/rave-sp-wdt.c
index 164316785..bd1c43b0f 100644
--- a/drivers/watchdog/rave-sp-wdt.c
+++ b/drivers/watchdog/rave-sp-wdt.c
@@ -75,7 +75,6 @@ struct rave_sp_wdt {
 	struct restart_handler restart;
 	unsigned int timeout;
 	unsigned int boot_source;
-	struct device_d dev;
 };
 
 static struct rave_sp_wdt *to_rave_sp_wdt(struct watchdog *wdd)
@@ -357,10 +356,8 @@ static int rave_sp_wdt_probe(struct device_d *dev)
 			      rave_sp_wdt_set_boot_source,
 			      rave_sp_wdt_get_boot_source,
 			      &sp_wd->boot_source, "%u", sp_wd);
-	if (IS_ERR(p)) {
-		unregister_device(&sp_wd->dev);
+	if (IS_ERR(p))
 		return PTR_ERR(p);
-	}
 
 	ret = sp_wd->variant->reset_reason(wdd);
 	if (ret < 0) {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
