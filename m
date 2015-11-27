Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x232.google.com ([2a00:1450:4010:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a2DTw-0004A8-Ne
 for barebox@lists.infradead.org; Fri, 27 Nov 2015 07:30:13 +0000
Received: by lfdl133 with SMTP id l133so118949585lfd.2
 for <barebox@lists.infradead.org>; Thu, 26 Nov 2015 23:29:50 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 27 Nov 2015 10:29:46 +0300
Message-Id: <1448609386-25753-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] at24: get devfs name from dt aliase
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@kymetacorp.com>

At the moment barebox can't work correctly with more
that one at24 eeprom because drivers/eeprom/at24.c
tries to register all eeproms as /dev/eeprom0.

I have tested this on a system with three at24 eeproms,
please see this dts-file fragment:

    &i2c0 {
        status = "okay";
    
        i2c-switch@70 {
            compatible = "nxp,pca9545";
            #address-cells = <1>;
            #size-cells = <0>;
            i2c-parent = <&i2c0>;
            reg = <0x70>;
    
            i2c@1 { /* misc devices */
                reg = <1>;
    
                eeprom: at24@50 {
                    compatible = "at24,24c1024";
                    reg = <0x50>;
                };
            };
    
            i2c@2 { /* SPD */
                reg = <2>;
    
                spd: at24@53 {
                    compatible = "at24,spd";
                    reg = <0x53>;
                };
            };
    
            i2c@3 { /* DVI/HDMI */
                reg = <3>;
    
                ddc: at24@50 {
                    compatible = "at24,24c02";
                    reg = <0x50>;
                };
            };
        };
    };

A possible solution is using aliases for naming devices
under dev/, e.g.:

    / {
        aliases {
            eeprom = &eeprom;
            spd = &spd;
            ddc = &ddc;
        };
    }

So we'll get these files in the /dev directory:

    crw-------            256 /dev/ddc
    crw-------         131072 /dev/eeprom
    cr--------            256 /dev/spd

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/eeprom/at24.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 3c0a7a9..85fb035 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -379,6 +379,7 @@ static int at24_probe(struct device_d *dev)
 	struct at24_data *at24;
 	int err;
 	unsigned i, num_addresses;
+	const char *eeprom_name = NULL;
 
 	if (dev->platform_data) {
 		chip = *(struct at24_platform_data *)dev->platform_data;
@@ -429,7 +430,17 @@ static int at24_probe(struct device_d *dev)
 
 	at24->chip = chip;
 	at24->num_addresses = num_addresses;
-	at24->cdev.name = asprintf("eeprom%d", dev->id);
+
+	if (dev->device_node) {
+		eeprom_name = of_alias_get(dev->device_node);
+	}
+
+	if (!eeprom_name) {
+		at24->cdev.name = asprintf("eeprom%d", dev->id);
+	} else {
+		at24->cdev.name = eeprom_name;
+	}
+
 	at24->cdev.priv = at24;
 	at24->cdev.dev = dev;
 	at24->cdev.ops = &at24->fops;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
