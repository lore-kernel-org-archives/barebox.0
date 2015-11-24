Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a1JgK-0000xz-3T
 for barebox@lists.infradead.org; Tue, 24 Nov 2015 19:55:16 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 24 Nov 2015 19:53:56 +0000
Message-ID: <1448394839.4553.203.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <248FC6C32615234882942AC18AF2220A@kymetacorp.com>
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
Subject: [PATCH] eeprom: Support pagesize OF device tree property
To: barebox <barebox@lists.infradead.org>

Allows specifying the page size when the eeproms are in the device
tree.  Same as the Linux kernel device-tree bindings for at24.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/eeprom/at24.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 76f30e7..d025db8 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -381,6 +381,7 @@ static int at24_probe(struct device_d *dev)
 		chip = *(struct at24_platform_data *)dev->platform_data;
 	} else {
 		unsigned long magic;
+		u32 page_size;
 
 		err = dev_get_drvdata(dev, (const void **)&magic);
 		if (err)
@@ -389,12 +390,17 @@ static int at24_probe(struct device_d *dev)
 		chip.byte_len = BIT(magic & AT24_BITMASK(AT24_SIZE_BYTELEN));
 		magic >>= AT24_SIZE_BYTELEN;
 		chip.flags = magic & AT24_BITMASK(AT24_SIZE_FLAGS);
-		/*
-		 * This is slow, but we can't know all eeproms, so we better
-		 * play safe. Specifying custom eeprom-types via platform_data
-		 * is recommended anyhow.
-		 */
-		chip.page_size = 1;
+		if (dev->device_node &&
+		    !of_property_read_u32(dev->device_node, "pagesize", &page_size))
+			chip.page_size = page_size;
+		else {
+			/*
+			 * This is slow, but we can't know all eeproms, so we better
+			 * play safe. Specifying custom eeprom-types via platform_data
+			 * is recommended anyhow.
+			 */
+			chip.page_size = 1;
+		}
 	}
 
 	if (!is_power_of_2(chip.byte_len))
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
