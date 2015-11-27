Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a2EXw-0000hO-Ih
 for barebox@lists.infradead.org; Fri, 27 Nov 2015 08:38:25 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 27 Nov 2015 08:37:02 +0000
Message-ID: <9f78f663546849718c1a3bb80d0cbaad@srred1mail01.kymeta.local>
References: <1448609386-25753-1-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1448609386-25753-1-git-send-email-antonynpavlov@gmail.com>
Content-Language: en-US
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
Subject: RE: [RFC] at24: get devfs name from dt aliase
To: Antony Pavlov <antonynpavlov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Antony Pavlov [mailto:antonynpavlov@gmail.com]
> 
> At the moment barebox can't work correctly with more that one at24
> eeprom because drivers/eeprom/at24.c tries to register all eeproms as
> /dev/eeprom0.

I had this same problem with my system.  It is because different types of EEPROMs have different names and the IDs are assigned sequentially for each different name.  So if you have two 24c02 and one 24c1025, they would have the ids 0, 1, and 0.  The code that produces the IDs for the i2c devices (24c020, 24c021, 2401250) does not know that the eeprom driver will try to make cdevs with the same name pattern from all of them.

I did a different solution, see below, but didn't send it out as I'm not happy with it.  I thought also of an alias like this, but feel like there are also problems with that approach.

1. It seems like it should not be necessary to add aliases to get the system to work at all.
2. My system also has <64 kB xloader which does not use OF to save space.  So alias will not work.  I don't know of an alternative to the alias system when using i2c_register_board_info().

Subject: [PATCH] eeprom: Number eeproms sequentially

eeprom cdevs were being enumerated using the id of the underlying
device.  The problem with this is that the I2C core assigns IDs
separately for each different type of device.  So if one has two
different types of eeprom both will start with IDs of zero.  This
results in cdev names that conflict.

So just assign IDs sequentially to eeproms as they are probed.
---
 drivers/eeprom/at24.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 23c3faa..8121b79 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -356,6 +356,7 @@ static int at24_probe(struct device_d *dev)
        struct at24_data *at24;
        int err;
        unsigned i, num_addresses;
+       static int eeprom_id = 0;

        if (dev->platform_data) {
                chip = *(struct at24_platform_data *)dev->platform_data;
@@ -406,7 +407,7 @@ static int at24_probe(struct device_d *dev)

        at24->chip = chip;
        at24->num_addresses = num_addresses;
-       at24->cdev.name = asprintf("eeprom%d", dev->id);
+       at24->cdev.name = asprintf("eeprom%d", eeprom_id++);
        at24->cdev.priv = at24;
        at24->cdev.dev = dev;
        at24->cdev.ops = &at24->fops;
--
1.8.3.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
