Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x232.google.com ([2607:f8b0:400e:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aH3uu-00076G-Je
 for barebox@lists.infradead.org; Thu, 07 Jan 2016 06:19:25 +0000
Received: by mail-pa0-x232.google.com with SMTP id yy13so157986103pab.3
 for <barebox@lists.infradead.org>; Wed, 06 Jan 2016 22:19:03 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jan 2016 22:17:30 -0800
Message-Id: <1452147455-26524-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/6] rtc: ds1307: Add code to support ds1337/1341
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port DS1337 specific bits from corresponding Linux driver and add
small changes needed for DS1341.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/rtc/rtc-ds1307.c | 91 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 91 insertions(+)

diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index d78faa8..2b46ae5 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -31,7 +31,9 @@
  */
 enum ds_type {
 	ds_1307,
+	ds_1337,
 	ds_1338,
+	ds_1341,
 	last_ds_type /* always last */
 };

@@ -62,6 +64,28 @@ enum ds_type {
 #	define DS1307_BIT_SQWE		0x10
 #	define DS1307_BIT_RS1		0x02
 #	define DS1307_BIT_RS0		0x01
+#define DS1337_REG_CONTROL	0x0e
+#	define DS1337_BIT_nEOSC		0x80
+#	define DS1339_BIT_BBSQI		0x20
+#	define DS3231_BIT_BBSQW		0x40 /* same as BBSQI */
+#	define DS1337_BIT_RS2		0x10
+#	define DS1337_BIT_RS1		0x08
+#	define DS1337_BIT_INTCN		0x04
+#	define DS1337_BIT_A2IE		0x02
+#	define DS1337_BIT_A1IE		0x01
+#define DS1340_REG_CONTROL	0x07
+#	define DS1340_BIT_OUT		0x80
+#	define DS1340_BIT_FT		0x40
+#	define DS1340_BIT_CALIB_SIGN	0x20
+#	define DS1340_M_CALIBRATION	0x1f
+#define DS1340_REG_FLAG		0x09
+#	define DS1340_BIT_OSF		0x80
+#define DS1337_REG_STATUS	0x0f
+#	define DS1337_BIT_OSF		0x80
+#	define DS1341_BIT_ECLK		0x04
+#	define DS1337_BIT_A2I		0x02
+#	define DS1337_BIT_A1I		0x01
+

 struct ds1307 {
 	struct rtc_device	rtc;
@@ -78,7 +102,9 @@ struct ds1307 {

 static struct platform_device_id ds1307_id[] = {
 	{ "ds1307", ds_1307 },
+	{ "ds1337", ds_1337 },
 	{ "ds1338", ds_1338 },
+	{ "ds1341", ds_1341 },
 	{ "pt7c4338", ds_1307 },
 	{ }
 };
@@ -224,6 +250,16 @@ static int ds1307_set_time(struct rtc_device *rtcdev, struct rtc_time *t)
 	tmp = t->tm_year - 100;
 	buf[DS1307_REG_YEAR] = bin2bcd(tmp);

+	switch (ds1307->type) {
+	case ds_1337:
+	case ds_1341:
+		buf[DS1307_REG_MONTH] |= DS1337_BIT_CENTURY;
+		break;
+	default:
+		break;
+	}
+
+
 	dev_dbg(dev, "%s: %7ph\n", "write", buf);

 	result = ds1307->write_block_data(ds1307->client,
@@ -263,6 +299,61 @@ static int ds1307_probe(struct device_d *dev)
 	ds1307->read_block_data = ds1307_read_block_data;
 	ds1307->write_block_data = ds1307_write_block_data;

+
+	switch (ds1307->type) {
+	case ds_1337:
+	case ds_1341:
+		/* get registers that the "rtc" read below won't read... */
+		tmp = ds1307->read_block_data(ds1307->client,
+					      DS1337_REG_CONTROL, 2, buf);
+
+		if (tmp != 2) {
+			dev_dbg(&client->dev, "read error %d\n", tmp);
+			err = -EIO;
+			goto exit;
+		}
+
+		/* oscillator off?  turn it on, so clock can tick. */
+		if (ds1307->regs[0] & DS1337_BIT_nEOSC)
+			ds1307->regs[0] &= ~DS1337_BIT_nEOSC;
+
+
+		/*
+		  Make sure no alarm interrupts or square wave signals
+		  are produced by the chip while we are in
+		  bootloader. We do this by configuring the RTC to
+		  generate alarm interrupts (thus disabling square
+		  wave generation), but disabling each individual
+		  alarm interrupt source
+		 */
+		ds1307->regs[0] |= DS1337_BIT_INTCN;
+		ds1307->regs[0] &= ~(DS1337_BIT_A2IE | DS1337_BIT_A1IE);
+
+		i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
+					  ds1307->regs[0]);
+
+		/*
+		  For the above to be true, DS1341 also has to have
+		  ECLK bit set to 0
+		 */
+		if (ds1307->type == ds_1341) {
+			ds1307->regs[1] &= DS1341_BIT_ECLK;
+			i2c_smbus_write_byte_data(client, DS1337_REG_STATUS,
+						  ds1307->regs[1]);
+		}
+
+
+		/* oscillator fault?  clear flag, and warn */
+		if (ds1307->regs[1] & DS1337_BIT_OSF) {
+			i2c_smbus_write_byte_data(client, DS1337_REG_STATUS,
+				ds1307->regs[1] & ~DS1337_BIT_OSF);
+			dev_warn(&client->dev, "SET TIME!\n");
+		}
+
+	default:
+		break;
+	}
+
 read_rtc:
 	/* read RTC registers */
 	tmp = ds1307->read_block_data(client, ds1307->offset, 8, buf);
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
