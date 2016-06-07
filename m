Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bANFF-0003pF-78
 for barebox@lists.infradead.org; Tue, 07 Jun 2016 20:05:02 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 7 Jun 2016 20:04:40 +0000
Message-ID: <1465329888.15779.160.camel@rtred1test09.kymeta.local>
References: <1465329688.15779.156.camel@rtred1test09.kymeta.local>
In-Reply-To: <1465329688.15779.156.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <6DE58B853FB35741A1CAFE00E22B0A70@kymetacorp.com>
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
Subject: [PATCH 2/5] rtc: ds1307: Remove unused and unneeded driver code
To: barebox <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There is a bunch of unused stuff in this driver from the Linux Kernel
import.

Get rid of offset in driver state, was always zero.
Get rid of flags, was always zero and never used.
Get rid of pointers to read/write block data functions as they always
point to the single set present in the current code.
Get rid of reg cache.  It was never used as a cache and wasn't always
kept up to date with register modifications.  When ds1337 support was
added it it didn't put the new registers in the correctly location.

Add some macros for register range starts and ends, rather than magic
0s and 7s in various functions.

Decrease stack buffer in read/write block functions from 255 bytes to
16, keyed to register definition, as that's all that's ever needed.

Get rid of switch statement that had only default case.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/rtc/rtc-ds1307.c | 117 ++++++++++++++++++++---------------------------
 1 file changed, 50 insertions(+), 67 deletions(-)

diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index 86cba6e..5ed64bf 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -54,6 +54,10 @@ enum ds_type {
 #	define DS1337_BIT_CENTURY	0x80	/* in REG_MONTH */
 #define DS1307_REG_YEAR		0x06	/* 00-99 */
 
+/* Register block for above time registers */
+#define DS13xx_REG_TIME_START	DS1307_REG_SECS
+#define DS13xx_REG_TIME_COUNT	(DS1307_REG_YEAR - DS13xx_REG_TIME_START + 1)
+
 /*
  * Other registers (control, status, alarms, trickle charge, NVRAM, etc)
  * start at 7, and they differ a LOT. Only control and status matter for
@@ -91,19 +95,14 @@ enum ds_type {
 #	define DS1341_BIT_ECLK		0x04
 #	define DS1337_BIT_A2I		0x02
 #	define DS1337_BIT_A1I		0x01
+/* Most registers for any device */
+#define DS13xx_REG_COUNT	16
 
 
 struct ds1307 {
 	struct rtc_device	rtc;
-	u8			offset; /* register's offset */
-	u8			regs[11];
 	enum ds_type		type;
-	unsigned long		flags;
 	struct i2c_client	*client;
-	s32 (*read_block_data)(const struct i2c_client *client, u8 command,
-			       u8 length, u8 *values);
-	s32 (*write_block_data)(const struct i2c_client *client, u8 command,
-				u8 length, const u8 *values);
 };
 
 static struct platform_device_id ds1307_id[] = {
@@ -137,7 +136,7 @@ static s32 ds1307_read_block_data_once(const struct i2c_client *client,
 static s32 ds1307_read_block_data(const struct i2c_client *client, u8 command,
 				  u8 length, u8 *values)
 {
-	u8 oldvalues[255];
+	u8 oldvalues[DS13xx_REG_COUNT];
 	s32 ret;
 	int tries = 0;
 
@@ -163,7 +162,7 @@ static s32 ds1307_read_block_data(const struct i2c_client *client, u8 command,
 static s32 ds1307_write_block_data(const struct i2c_client *client, u8 command,
 				   u8 length, const u8 *values)
 {
-	u8 currvalues[255];
+	u8 currvalues[DS13xx_REG_COUNT];
 	int tries = 0;
 
 	dev_dbg(&client->dev, "ds1307_write_block_data (length=%d)\n", length);
@@ -198,29 +197,30 @@ static int ds1307_get_time(struct rtc_device *rtcdev, struct rtc_time *t)
 {
 	struct device_d *dev = rtcdev->dev;
 	struct ds1307 *ds1307 = to_ds1307_priv(rtcdev);
+	u8 		buf[DS13xx_REG_TIME_COUNT];
 	int		tmp;
 
 	/* read the RTC date and time registers all at once */
-	tmp = ds1307->read_block_data(ds1307->client,
-		ds1307->offset, 7, ds1307->regs);
-	if (tmp != 7) {
+	tmp = ds1307_read_block_data(ds1307->client, DS13xx_REG_TIME_START,
+	                             DS13xx_REG_TIME_COUNT, buf);
+	if (tmp != DS13xx_REG_TIME_COUNT) {
 		dev_err(dev, "%s error %d\n", "read", tmp);
 		return -EIO;
 	}
 
-	dev_dbg(dev, "%s: %7ph\n", "read", ds1307->regs);
+	dev_dbg(dev, "%s: %7ph\n", "read", buf);
 
-	t->tm_sec = bcd2bin(ds1307->regs[DS1307_REG_SECS] & 0x7f);
-	t->tm_min = bcd2bin(ds1307->regs[DS1307_REG_MIN] & 0x7f);
-	tmp = ds1307->regs[DS1307_REG_HOUR] & 0x3f;
+	t->tm_sec = bcd2bin(buf[DS1307_REG_SECS] & 0x7f);
+	t->tm_min = bcd2bin(buf[DS1307_REG_MIN] & 0x7f);
+	tmp = buf[DS1307_REG_HOUR] & 0x3f;
 	t->tm_hour = bcd2bin(tmp);
-	t->tm_wday = bcd2bin(ds1307->regs[DS1307_REG_WDAY] & 0x07) - 1;
-	t->tm_mday = bcd2bin(ds1307->regs[DS1307_REG_MDAY] & 0x3f);
-	tmp = ds1307->regs[DS1307_REG_MONTH] & 0x1f;
+	t->tm_wday = bcd2bin(buf[DS1307_REG_WDAY] & 0x07) - 1;
+	t->tm_mday = bcd2bin(buf[DS1307_REG_MDAY] & 0x3f);
+	tmp = buf[DS1307_REG_MONTH] & 0x1f;
 	t->tm_mon = bcd2bin(tmp) - 1;
 
 	/* assume 20YY not 19YY, and ignore DS1337_BIT_CENTURY */
-	t->tm_year = bcd2bin(ds1307->regs[DS1307_REG_YEAR]) + 100;
+	t->tm_year = bcd2bin(buf[DS1307_REG_YEAR]) + 100;
 
 	dev_dbg(dev, "%s secs=%d, mins=%d, "
 		"hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
@@ -238,7 +238,7 @@ static int ds1307_set_time(struct rtc_device *rtcdev, struct rtc_time *t)
 	struct ds1307 *ds1307 = to_ds1307_priv(rtcdev);
 	int		result;
 	int		tmp;
-	u8		*buf = ds1307->regs;
+	u8		buf[DS13xx_REG_TIME_COUNT];
 
 	dev_dbg(dev, "%s secs=%d, mins=%d, "
 		"hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
@@ -269,8 +269,8 @@ static int ds1307_set_time(struct rtc_device *rtcdev, struct rtc_time *t)
 
 	dev_dbg(dev, "%s: %7ph\n", "write", buf);
 
-	result = ds1307->write_block_data(ds1307->client,
-		ds1307->offset, 7, buf);
+	result = ds1307_write_block_data(ds1307->client, DS13xx_REG_TIME_START,
+					 DS13xx_REG_TIME_COUNT, buf);
 	if (result < 0) {
 		dev_err(dev, "%s error %d\n", "write", result);
 		return result;
@@ -289,7 +289,7 @@ static int ds1307_probe(struct device_d *dev)
 	struct ds1307		*ds1307;
 	int			err = -ENODEV;
 	int			tmp;
-	unsigned char		*buf;
+	unsigned char		buf[DS13xx_REG_COUNT];
 	unsigned long driver_data;
 	const struct device_node *np = dev->device_node;
 
@@ -302,18 +302,12 @@ static int ds1307_probe(struct device_d *dev)
 	ds1307->client = client;
 	ds1307->type = driver_data;
 
-	buf = ds1307->regs;
-
-	ds1307->read_block_data = ds1307_read_block_data;
-	ds1307->write_block_data = ds1307_write_block_data;
-
-
 	switch (ds1307->type) {
 	case ds_1337:
 	case ds_1341:
 		/* get registers that the "rtc" read below won't read... */
-		tmp = ds1307->read_block_data(ds1307->client,
-					      DS1337_REG_CONTROL, 2, buf);
+		tmp = ds1307_read_block_data(ds1307->client,
+					     DS1337_REG_CONTROL, 2, buf);
 
 		if (tmp != 2) {
 			dev_dbg(&client->dev, "read error %d\n", tmp);
@@ -322,8 +316,8 @@ static int ds1307_probe(struct device_d *dev)
 		}
 
 		/* oscillator off?  turn it on, so clock can tick. */
-		if (ds1307->regs[0] & DS1337_BIT_nEOSC)
-			ds1307->regs[0] &= ~DS1337_BIT_nEOSC;
+		if (buf[0] & DS1337_BIT_nEOSC)
+			buf[0] &= ~DS1337_BIT_nEOSC;
 
 
 		/*
@@ -334,37 +328,37 @@ static int ds1307_probe(struct device_d *dev)
 		  wave generation), but disabling each individual
 		  alarm interrupt source
 		 */
-		ds1307->regs[0] |= DS1337_BIT_INTCN;
-		ds1307->regs[0] &= ~(DS1337_BIT_A2IE | DS1337_BIT_A1IE);
+		buf[0] |= DS1337_BIT_INTCN;
+		buf[0] &= ~(DS1337_BIT_A2IE | DS1337_BIT_A1IE);
 
 		i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
-					  ds1307->regs[0]);
+					  buf[0]);
 
 		if (ds1307->type == ds_1341) {
 			/*
 			 * For the above to be true, DS1341 also has to have
 			 * ECLK bit set to 0
 			 */
-			ds1307->regs[1] &= ~DS1341_BIT_ECLK;
+			buf[1] &= ~DS1341_BIT_ECLK;
 
 			/*
 			 * Let's set additionale RTC bits to
 			 * facilitate maximum power saving.
 			 */
-			ds1307->regs[0] |=  DS1341_BIT_DOSF;
-			ds1307->regs[0] &= ~DS1341_BIT_EGFIL;
+			buf[0] |=  DS1341_BIT_DOSF;
+			buf[0] &= ~DS1341_BIT_EGFIL;
 
 			i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
-						  ds1307->regs[0]);
+						  buf[0]);
 			i2c_smbus_write_byte_data(client, DS1337_REG_STATUS,
-						  ds1307->regs[1]);
+						  buf[1]);
 		}
 
 
 		/* oscillator fault?  clear flag, and warn */
-		if (ds1307->regs[1] & DS1337_BIT_OSF) {
+		if (buf[1] & DS1337_BIT_OSF) {
 			i2c_smbus_write_byte_data(client, DS1337_REG_STATUS,
-				ds1307->regs[1] & ~DS1337_BIT_OSF);
+				buf[1] & ~DS1337_BIT_OSF);
 			dev_warn(&client->dev, "SET TIME!\n");
 		}
 
@@ -374,7 +368,7 @@ static int ds1307_probe(struct device_d *dev)
 
 read_rtc:
 	/* read RTC registers */
-	tmp = ds1307->read_block_data(client, ds1307->offset, 8, buf);
+	tmp = ds1307_read_block_data(client, 0, 8, buf);
 	if (tmp != 8) {
 		dev_dbg(&client->dev, "read error %d\n", tmp);
 		err = -EIO;
@@ -384,7 +378,7 @@ read_rtc:
 	/* Configure clock using OF data if available */
 	if (IS_ENABLED(CONFIG_OFDEVICE) && np &&
 	    ds1307->type != ds_1337 && ds1307->type != ds_1341) {
-		u8 control = ds1307->regs[DS1307_REG_CONTROL];
+		u8 control = buf[DS1307_REG_CONTROL];
 		u32 rate = 0;
 
 		if (of_property_read_bool(np, "ext-clock-input"))
@@ -415,18 +409,14 @@ read_rtc:
 		}
 		dev_dbg(&client->dev, "control reg: 0x%02x\n", control);
 
-		if (ds1307->regs[DS1307_REG_CONTROL] != control) {
+		if (buf[DS1307_REG_CONTROL] != control) {
 			i2c_smbus_write_byte_data(client, DS1307_REG_CONTROL, control);
-			ds1307->regs[DS1307_REG_CONTROL]  = control;
+			buf[DS1307_REG_CONTROL]  = control;
 		}
 	}
 
-	/*
-	 * minimal sanity checking; some chips (like DS1340) don't
-	 * specify the extra bits as must-be-zero, but there are
-	 * still a few values that are clearly out-of-range.
-	 */
-	tmp = ds1307->regs[DS1307_REG_SECS];
+	/* Check for clock halted conditions and start clock */
+	tmp = buf[DS1307_REG_SECS];
 	switch (ds1307->type) {
 	case ds_1307:
 		/* clock halted?  turn it on, so clock can tick. */
@@ -442,9 +432,9 @@ read_rtc:
 			i2c_smbus_write_byte_data(client, DS1307_REG_SECS, 0);
 
 		/* oscillator fault?  clear flag, and warn */
-		if (ds1307->regs[DS1307_REG_CONTROL] & DS1338_BIT_OSF) {
+		if (buf[DS1307_REG_CONTROL] & DS1338_BIT_OSF) {
 			i2c_smbus_write_byte_data(client, DS1307_REG_CONTROL,
-					ds1307->regs[DS1307_REG_CONTROL]
+					buf[DS1307_REG_CONTROL]
 					& ~DS1338_BIT_OSF);
 			dev_warn(&client->dev, "SET TIME!\n");
 			goto read_rtc;
@@ -454,12 +444,7 @@ read_rtc:
 		break;
 	}
 
-	tmp = ds1307->regs[DS1307_REG_HOUR];
-	switch (ds1307->type) {
-	default:
-		if (!(tmp & DS1307_BIT_12HR))
-			break;
-
+	if (buf[DS1307_REG_HOUR] & DS1307_BIT_12HR) {
 		/*
 		 * Be sure we're in 24 hour mode.  Multi-master systems
 		 * take note...
@@ -467,11 +452,9 @@ read_rtc:
 		tmp = bcd2bin(tmp & 0x1f);
 		if (tmp == 12)
 			tmp = 0;
-		if (ds1307->regs[DS1307_REG_HOUR] & DS1307_BIT_PM)
+		if (buf[DS1307_REG_HOUR] & DS1307_BIT_PM)
 			tmp += 12;
-		i2c_smbus_write_byte_data(client,
-				ds1307->offset + DS1307_REG_HOUR,
-				bin2bcd(tmp));
+		i2c_smbus_write_byte_data(client, DS1307_REG_HOUR, bin2bcd(tmp));
 	}
 
 	ds1307->rtc.ops = &ds13xx_rtc_ops;
@@ -486,7 +469,7 @@ exit:
 }
 
 static struct driver_d ds1307_driver = {
-	.name	= "rtc-ds1307",
+	.name		= "rtc-ds1307",
 	.probe		= ds1307_probe,
 	.id_table	= ds1307_id,
 };
-- 
2.7.0.25.gfc10eb5.dirty

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
