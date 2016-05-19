Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3XVy-0006BM-Cm
 for barebox@lists.infradead.org; Thu, 19 May 2016 23:38:03 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 19 May 2016 23:37:38 +0000
Message-ID: <1463701062.15779.31.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <21F33C9B2B944344A24155DD79EE8ABF@kymetacorp.com>
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
Subject: [PATCH 1/2] rtc: ds1307: Add ds1308 to driver's ID list
To: barebox <barebox@lists.infradead.org>

As far as the driver is concerned, it's the same as a 1338.  It's too
bad the i2c drivers can't make use of OF compatible properties with a
list of compatible devices.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/rtc/rtc-ds1307.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index 726586a..ca630ea 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -106,6 +106,7 @@ struct ds1307 {
 static struct platform_device_id ds1307_id[] = {
 	{ "ds1307", ds_1307 },
 	{ "ds1337", ds_1337 },
+	{ "ds1308", ds_1338 }, /* Difference 1308 to 1338 irrelevant */
 	{ "ds1338", ds_1338 },
 	{ "ds1341", ds_1341 },
 	{ "pt7c4338", ds_1307 },
-- 
2.7.0.25.gfc10eb5.dirty


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
