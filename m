Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss63J-0005X5-RN
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 05:47:21 +0000
Received: by lbbgg6 with SMTP id gg6so4766248lbb.36
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2012 22:46:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 20 Jul 2012 09:46:49 +0400
Message-Id: <1342763209-28029-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] serial_ns16550: change the driver's name
To: barebox@lists.infradead.org

The name "serial_ns16550" is not handy because the devices
will have the names like "serial_ns165500", "serial_ns165501",
"serial_ns165502" etc.

The names like "ns16550_serial0" and "ns16550_serial1" look
much better.

Also it is reasonable to make serial driver's names unification.
E.g. see the names for drivers in drivers/serial directory:
 "netx_serial",
 "mpc5xxx_serial",
 "altera_serial",
 "s3c_serial",
 "imx_serial",
 "pxa_serial",
 "blackfin_serial",
 "stm_serial",
 "pl010_serial",
and even "g_serial" in ./drivers/usb/gadget/serial.c

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c |    2 +-
 include/driver.h                |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 820aac5..1248bd6 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -263,7 +263,7 @@ static int ns16550_probe(struct device_d *dev)
  * @brief Driver registration structure
  */
 static struct driver_d ns16550_serial_driver = {
-	.name = "serial_ns16550",
+	.name = "ns16550_serial",
 	.probe = ns16550_probe,
 };
 
diff --git a/include/driver.h b/include/driver.h
index 7d597b4..0a8dc8e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -226,7 +226,7 @@ struct NS16550_plat;
 static inline struct device_d *add_ns16550_device(int id, resource_size_t start,
 		resource_size_t size, int flags, struct NS16550_plat *pdata)
 {
-	return add_generic_device("serial_ns16550", id, NULL, start, size,
+	return add_generic_device("ns16550_serial", id, NULL, start, size,
 				  IORESOURCE_MEM | flags, pdata);
 }
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
