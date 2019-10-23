Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJw4-0002uq-VC
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 16:56:38 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 23 Oct 2019 18:55:58 +0200
Message-Id: <20191023165601.16441-3-a.fatoum@pengutronix.de>
In-Reply-To: <20191023165601.16441-1-a.fatoum@pengutronix.de>
References: <20191023165601.16441-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/6] watchdog: efi: bump down priority below default
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The barebox EFI documentation notes:

> Current linux kernel (v5.0) will execute ExitBootServices() during the
> early boot stage and thus will automatically disable the (U)EFI watchdog.
> Since it is the proper behavior according to the (U)EFI specification, it
> is impossible to protect full boot chain by using this watchdog only.
> It is recommended to use an alternative hardware watchdog

Heed the advice and bump down the EFI watchdog priority below the
watchdog priority default.
This ensures the EFI watchdog isn't inadvertently used if other
watchdogs are registered.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/efi_wdt.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/watchdog/efi_wdt.c b/drivers/watchdog/efi_wdt.c
index 8e3e51b7a923..ea1ede13817d 100644
--- a/drivers/watchdog/efi_wdt.c
+++ b/drivers/watchdog/efi_wdt.c
@@ -41,6 +41,7 @@ static int efi_wdt_probe(struct device_d *dev)
 	priv->wd.set_timeout = efi_wdt_set_timeout;
 	priv->wd.hwdev = dev;
 	priv->dev = dev;
+	priv->wd.priority = WATCHDOG_DEFAULT_PRIORITY - 50;
 
 	dev->priv = priv;
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
