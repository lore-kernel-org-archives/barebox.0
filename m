Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a10jd-0001mL-Eh
 for barebox@lists.infradead.org; Mon, 23 Nov 2015 23:41:26 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Mon, 23 Nov 2015 23:40:53 +0000
Message-ID: <1448322055.4553.195.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <D390D92CCFBE324292D0F050748EFA5E@kymetacorp.com>
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
Subject: [PATCH] eeprom: Add support for 24c1025 EEPROM
To: barebox <barebox@lists.infradead.org>

This is the Microchip version of the Atmel 24c1024, which is already
supported.  The key difference between them is that the I2C address
bit used to select between the two banks is bit 2 for the 1025 and not
bit 0 as in the 1024.

Add a flag to describe this difference.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/eeprom/at24.c | 8 ++++++--
 include/i2c/at24.h    | 1 +
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index bb2dd53..9c322a9 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -80,7 +80,9 @@ static unsigned io_limit = 128;
  */
 static unsigned write_timeout = 25;
 
+/* number of bits in driver_data reserved for eeprom byte length */
 #define AT24_SIZE_BYTELEN 5
+/* number of bits in driver_data reserved for flags */
 #define AT24_SIZE_FLAGS 8
 
 #define AT24_BITMASK(x) (BIT(x) - 1)
@@ -109,6 +111,7 @@ static struct platform_device_id at24_ids[] = {
 	{ "24c256", AT24_DEVICE_MAGIC(262144 / 8, AT24_FLAG_ADDR16) },
 	{ "24c512", AT24_DEVICE_MAGIC(524288 / 8, AT24_FLAG_ADDR16) },
 	{ "24c1024", AT24_DEVICE_MAGIC(1048576 / 8, AT24_FLAG_ADDR16) },
+	{ "24c1025", AT24_DEVICE_MAGIC(1048576 / 8, AT24_FLAG_ADDR16 | AT24_FLAG_BANK_BIT_2) },
 	{ "at24", 0 },
 	{ /* END OF LIST */ }
 };
@@ -423,11 +426,12 @@ static int at24_probe(struct device_d *dev)
 
 	/* use dummy devices for multiple-address chips */
 	for (i = 1; i < num_addresses; i++) {
+		const int shift = (chip.flags & AT24_FLAG_BANK_BIT_2) ? 2 : 0;
 		at24->client[i] = i2c_new_dummy(client->adapter,
-					client->addr + i);
+					client->addr + (i << shift));
 		if (!at24->client[i]) {
 			dev_err(&client->dev, "address 0x%02x unavailable\n",
-					client->addr + i);
+					client->addr + (i << shift));
 			err = -EADDRINUSE;
 			goto err_clients;
 		}
diff --git a/include/i2c/at24.h b/include/i2c/at24.h
index 1013308..44a64a0 100644
--- a/include/i2c/at24.h
+++ b/include/i2c/at24.h
@@ -30,6 +30,7 @@ struct at24_platform_data {
 #define AT24_FLAG_READONLY	0x40	/* sysfs-entry will be read-only */
 #define AT24_FLAG_IRUGO		0x20	/* sysfs-entry will be world-readable */
 #define AT24_FLAG_TAKE8ADDR	0x10	/* take always 8 addresses (24c00) */
+#define AT24_FLAG_BANK_BIT_2	0x08	/* blank select at bit 2 (vs lsb) */
 };
 
 #endif /* _LINUX_AT24_H */
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
