Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22e.google.com ([2607:f8b0:400e:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1amszG-0007O9-2Q
 for barebox@lists.infradead.org; Mon, 04 Apr 2016 01:07:27 +0000
Received: by mail-pa0-x22e.google.com with SMTP id td3so131890530pab.2
 for <barebox@lists.infradead.org>; Sun, 03 Apr 2016 18:07:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  3 Apr 2016 18:06:33 -0700
Message-Id: <1459731993-14807-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1459731993-14807-1-git-send-email-andrew.smirnov@gmail.com>
References: <1459731993-14807-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] ds1307: Configure ds1341 for lowest power mode
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Empirical observations show that configuring INTCN=1, ECLK=0, EGFIL=0,
DOSF=1 on DS1341 put the chip in the mode where it draws the least
amount fo current.

Add code to configure DS1341 in such a way in case Barebox is the last
code that runs on the processor before being shut down.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/rtc/rtc-ds1307.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index a1cfed6..4720964 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -68,6 +68,7 @@ enum ds_type {
 #define DS1337_REG_CONTROL	0x0e
 #	define DS1337_BIT_nEOSC		0x80
 #	define DS1339_BIT_BBSQI		0x20
+#	define DS1341_BIT_EGFIL		0x20
 #	define DS3231_BIT_BBSQW		0x40 /* same as BBSQI */
 #	define DS1337_BIT_RS2		0x10
 #	define DS1337_BIT_RS1		0x08
@@ -83,6 +84,7 @@ enum ds_type {
 #	define DS1340_BIT_OSF		0x80
 #define DS1337_REG_STATUS	0x0f
 #	define DS1337_BIT_OSF		0x80
+#	define DS1341_BIT_DOSF		0x40
 #	define DS1341_BIT_ECLK		0x04
 #	define DS1337_BIT_A2I		0x02
 #	define DS1337_BIT_A1I		0x01
@@ -333,12 +335,22 @@ static int ds1307_probe(struct device_d *dev)
 		i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
 					  ds1307->regs[0]);
 
-		/*
-		  For the above to be true, DS1341 also has to have
-		  ECLK bit set to 0
-		 */
 		if (ds1307->type == ds_1341) {
+			/*
+			  For the above to be true, DS1341 also has to have
+			  ECLK bit set to 0
+			*/
 			ds1307->regs[1] &= ~DS1341_BIT_ECLK;
+
+			/*
+			 * Let's set additionale RTC bits to
+			 * facilitate maximum power saving.
+			 */
+			ds1307->regs[0] |=  DS1341_BIT_DOSF;
+			ds1307->regs[0] &= ~DS1341_BIT_EGFIL;
+
+			i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
+						  ds1307->regs[0]);
 			i2c_smbus_write_byte_data(client, DS1337_REG_STATUS,
 						  ds1307->regs[1]);
 		}
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
