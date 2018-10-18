Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD6lz-0000bi-Lc
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 11:47:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>) id 1gD6lo-0006tN-8s
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 13:47:16 +0200
Received: from mfe by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <mfe@pengutronix.de>) id 1gD6lo-00059R-1U
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 13:47:16 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 18 Oct 2018 13:47:08 +0200
Message-Id: <20181018114708.19506-1-m.felsch@pengutronix.de>
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
Subject: [PATCH] rtc: ds1307: Add ds3231 to driver's ID list
To: barebox@lists.infradead.org

In contrast to the ds1337 the ds3231 has a built-in temperature
compensated crystal oscillator. The register map seems the same as the
one from the ds1337, so using it's driver_data is okay.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/rtc/rtc-ds1307.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index 73d88ba6f2..fed3afb7bf 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -112,6 +112,7 @@ static struct platform_device_id ds1307_id[] = {
 	{ "ds1308", ds_1338 }, /* Difference 1308 to 1338 irrelevant */
 	{ "ds1338", ds_1338 },
 	{ "ds1341", ds_1341 },
+	{ "ds3231", ds_1337 },
 	{ "pt7c4338", ds_1307 },
 	{ }
 };
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
