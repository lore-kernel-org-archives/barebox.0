Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bANKI-00060l-IY
 for barebox@lists.infradead.org; Tue, 07 Jun 2016 20:10:15 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 7 Jun 2016 20:09:53 +0000
Message-ID: <1465330201.15779.165.camel@rtred1test09.kymeta.local>
References: <1465329688.15779.156.camel@rtred1test09.kymeta.local>
In-Reply-To: <1465329688.15779.156.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <75724A5AF67679429FDEBDA5F4E8B65B@kymetacorp.com>
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
Subject: [PATCH 5/5] rtc: ds1307: Limit clock starting retries
To: barebox <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

If the driver detects the clock is stopped, via clock halted control
bit or oscillator stopped status flag, it will try to start the clock
and then reread the control registers and retry the probe process.

It will continue to retry until the clock starts, possibly forever if
the clock crystal is not installed.  While the driver's dogged
determination to start the clock is admirable, at some point you have
to say enough is enough, this clock won't go, and get one with more
important things, like booting.

This limits the number of tries to start the clock to three.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/rtc/rtc-ds1307.c | 101 ++++++++++++++++++++++++-----------------------
 1 file changed, 51 insertions(+), 50 deletions(-)

diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index b772ca3..34f24ed 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -365,7 +365,7 @@ static int ds1307_probe(struct device_d *dev)
 	struct ds1307		*ds1307;
 	int			err = -ENODEV;
 	int			tmp;
-	int			fault;
+	int			fault, retries;
 	int			nreg;
 	unsigned char		buf[DS13xx_REG_COUNT];
 	unsigned long driver_data;
@@ -400,60 +400,61 @@ static int ds1307_probe(struct device_d *dev)
 		goto exit;
 	}
 
-read_rtc:
-	/* read RTC registers */
-	tmp = ds1307_read_block_data(client, 0, nreg, buf);
-	if (tmp != nreg) {
-		dev_dbg(&client->dev, "read error %d\n", tmp);
-		err = -EIO;
-		goto exit;
-	}
-
-	/* Check for clock halted conditions and start clock */
-	fault = 0;
-
-	/* clock halted?  turn it on, so clock can tick. */
-	if (ds1307->has_alarms) {
-		if (buf[DS1337_REG_CONTROL] & DS1337_BIT_nEOSC) {
-			buf[DS1337_REG_CONTROL] &= ~DS1337_BIT_nEOSC;
-			i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
-						  buf[DS1337_REG_CONTROL]);
-			fault = 1;
-		}
-	} else {
-		if (buf[DS1307_REG_SECS] & DS1307_BIT_CH) {
-			buf[DS1307_REG_SECS] = 0;
-			i2c_smbus_write_byte_data(client, DS1307_REG_SECS,
-			                          buf[DS1307_REG_SECS]);
-			fault = 1;
+	retries = 3;
+	do {
+		/* read RTC registers */
+		tmp = ds1307_read_block_data(client, 0, nreg, buf);
+		if (tmp != nreg) {
+			dev_dbg(&client->dev, "read error %d\n", tmp);
+			err = -EIO;
+			goto exit;
 		}
-	}
 
-	/* Oscillator fault?  clear flag and print warning */
-	switch (ds1307->osf) {
-	case OSF_1338:
-		if (buf[DS1307_REG_CONTROL] & DS1338_BIT_OSF) {
-			buf[DS1307_REG_CONTROL] &= ~DS1338_BIT_OSF;
-			i2c_smbus_write_byte_data(client, DS1307_REG_CONTROL,
-				                  buf[DS1307_REG_CONTROL]);
-			fault = 1;
+		fault = 0;
+		/* clock halted?  turn it on, so clock can tick. */
+		if (ds1307->has_alarms) {
+			if (buf[DS1337_REG_CONTROL] & DS1337_BIT_nEOSC) {
+				buf[DS1337_REG_CONTROL] &= ~DS1337_BIT_nEOSC;
+				i2c_smbus_write_byte_data(client, DS1337_REG_CONTROL,
+							  buf[DS1337_REG_CONTROL]);
+				fault = 1;
+			}
+		} else {
+			if (buf[DS1307_REG_SECS] & DS1307_BIT_CH) {
+				buf[DS1307_REG_SECS] = 0;
+				i2c_smbus_write_byte_data(client, DS1307_REG_SECS,
+							  buf[DS1307_REG_SECS]);
+				fault = 1;
+			}
 		}
-		break;
-	case OSF_1337:
-		if (buf[DS1337_REG_STATUS] & DS1337_BIT_OSF) {
-			buf[DS1337_REG_STATUS] &= ~DS1337_BIT_OSF;
-			i2c_smbus_write_byte_data(client, DS1337_REG_STATUS,
-				                  buf[DS1337_REG_STATUS]);
-			fault = 1;
+
+		/* Oscillator fault?  clear flag and print warning */
+		switch (ds1307->osf) {
+		case OSF_1338:
+			if (buf[DS1307_REG_CONTROL] & DS1338_BIT_OSF) {
+				buf[DS1307_REG_CONTROL] &= ~DS1338_BIT_OSF;
+				i2c_smbus_write_byte_data(client, DS1307_REG_CONTROL,
+							  buf[DS1307_REG_CONTROL]);
+				fault = 1;
+			}
+			break;
+		case OSF_1337:
+			if (buf[DS1337_REG_STATUS] & DS1337_BIT_OSF) {
+				buf[DS1337_REG_STATUS] &= ~DS1337_BIT_OSF;
+				i2c_smbus_write_byte_data(client, DS1337_REG_STATUS,
+							  buf[DS1337_REG_STATUS]);
+				fault = 1;
+			}
+			break;
+		default: ;
 		}
-		break;
-	default: ;
-	}
 
-	if (fault) {
-		dev_warn(&client->dev, "SET TIME!\n");
-		goto read_rtc;
-	}
+		if (fault)
+			dev_warn(&client->dev, "SET TIME!\n");
+	} while (fault && retries--);
+
+	if (fault)
+		dev_err(&client->dev, "Failed to start clock, placing in correct once per day mode!\n");
 
 	/* Configure clock using OF data if available */
 	if (IS_ENABLED(CONFIG_OFDEVICE) && np) {
-- 
2.7.0.25.gfc10eb5.dirty


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
