Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kfp-0006qR-Jo
 for barebox@lists.infradead.org; Sun, 08 Sep 2019 00:03:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id s12so6859737pfe.6
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 17:03:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 17:03:14 -0700
Message-Id: <20190908000314.27078-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] i2c/pca954x: Initialize the mux to disconnected state
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux kernel commit cd823db8b1161ef0d756514d280715a576d65cc3

    pca954x power-on default is channel 0 connected. If multiple pca954x
    muxes are connected to the same physical I2C bus, the parent bus will
    see channel 0 devices behind both muxes by default. This is bad.

    Scenario:
                -- pca954x @ 0x70 -- ch 0 (I2C-bus-101) -- EEPROM @ 0x50
                |
    I2C-bus-1 ---
                |
                -- pca954x @ 0x71 -- ch 0 (I2C-bus-111) -- EEPROM @ 0x50

    1. Load I2C bus driver: creates I2C-bus-1
    2. Load pca954x driver: creates virtual I2C-bus-101 and I2C-bus-111
    3. Load eeprom driver
    4. Try to read EEPROM @ 0x50 on I2C-bus-101. The transaction will also bleed
       onto I2C-bus-111 because pca954x @ 0x71 channel 0 is connected by default.

    Fix: Initialize pca954x to disconnected state in pca954x_probe()

    Signed-off-by: Petri Gynther <pgynther@google.com>
    Signed-off-by: Jean Delvare <khali@linux-fr.org>
    Cc: stable@kernel.org

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/i2c/muxes/i2c-mux-pca954x.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
index bbc4870c3e..b820be0847 100644
--- a/drivers/i2c/muxes/i2c-mux-pca954x.c
+++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
@@ -195,10 +195,11 @@ static int pca954x_probe(struct device_d *dev)
 	if (gpio_is_valid(gpio))
 		gpio_direction_output(gpio, 1);
 
-	/* Read the mux register at addr to verify
-	 * that the mux is in fact present.
-	 */
-	if (i2c_smbus_read_byte(client) < 0) {
+	/* Write the mux register at addr to verify
+	 * that the mux is in fact present. This also
+	 * initializes the mux to disconnected state.
+ 	*/
+	if (i2c_smbus_write_byte(client, 0) < 0) {
 		dev_warn(&client->dev, "probe failed\n");
 		goto exit_free;
 	}
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
