Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEZx1-0005tf-K2
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 06:41:47 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 10 Mar 2013 10:41:35 +0400
Message-Id: <1362897695-3936-6-git-send-email-shc_work@mail.ru>
In-Reply-To: <1362897695-3936-1-git-send-email-shc_work@mail.ru>
References: <1362897695-3936-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 6/6] Introduce device_spi_driver() macro and use it for SPI
 drivers
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/eeprom/at25.c               | 9 +--------
 drivers/mci/mci_spi.c               | 9 +--------
 drivers/mfd/mc13xxx.c               | 8 +-------
 drivers/mfd/mc34708.c               | 8 +-------
 drivers/mtd/devices/m25p80.c        | 7 +------
 drivers/mtd/devices/mtd_dataflash.c | 8 +-------
 drivers/net/ksz8864rmn.c            | 8 +-------
 include/spi/spi.h                   | 3 +++
 8 files changed, 10 insertions(+), 50 deletions(-)

diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index e2e6ef4..68b4710 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -304,11 +304,4 @@ static struct driver_d at25_driver = {
 	.name  = DRIVERNAME,
 	.probe = at25_probe,
 };
-
-static int at25_init(void)
-{
-	spi_driver_register(&at25_driver);
-	return 0;
-}
-
-device_initcall(at25_init);
+device_spi_driver(at25_driver);
diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 022e260..011947c 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -443,11 +443,4 @@ static struct driver_d spi_mci_driver = {
 	.name	= "spi_mci",
 	.probe	= spi_mci_probe,
 };
-
-static int spi_mci_init_driver(void)
-{
-	spi_driver_register(&spi_mci_driver);
-	return 0;
-}
-
-device_initcall(spi_mci_init_driver);
+device_spi_driver(spi_mci_driver);
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 91c874f..466a11c 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -372,11 +372,5 @@ static struct driver_d mc_spi_driver = {
 	.probe = mc_spi_probe,
 	.of_compatible = DRV_OF_COMPAT(mc13892_dt_ids),
 };
-
-static int mc_spi_init(void)
-{
-	return spi_driver_register(&mc_spi_driver);
-}
-
-device_initcall(mc_spi_init);
+device_spi_driver(mc_spi_driver);
 #endif
diff --git a/drivers/mfd/mc34708.c b/drivers/mfd/mc34708.c
index 63db1e1..6fea2e2 100644
--- a/drivers/mfd/mc34708.c
+++ b/drivers/mfd/mc34708.c
@@ -291,11 +291,5 @@ static struct driver_d mc_spi_driver = {
 	.name  = "mc34708-spi",
 	.probe = mc_spi_probe,
 };
-
-static int mc_spi_init(void)
-{
-	return spi_driver_register(&mc_spi_driver);
-}
-
-device_initcall(mc_spi_init);
+device_spi_driver(mc_spi_driver);
 #endif
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 3293491..048d178 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -951,12 +951,7 @@ static struct driver_d m25p80_driver = {
 	.name	= "m25p80",
 	.probe	= m25p_probe,
 };
-
-static int m25p80_init(void)
-{
-	return spi_driver_register(&m25p80_driver);
-}
-device_initcall(m25p80_init);
+device_spi_driver(m25p80_driver);
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Mike Lavender");
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index cfad8b1..ddab6bb 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -875,13 +875,7 @@ static struct driver_d dataflash_driver = {
 	.name  = "mtd_dataflash",
 	.probe = dataflash_probe,
 };
-
-static int dataflash_init(void)
-{
-	spi_driver_register(&dataflash_driver);
-	return 0;
-}
-device_initcall(dataflash_init);
+device_spi_driver(dataflash_driver);
 
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Andrew Victor, David Brownell");
diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
index 99274ec..af3c124 100644
--- a/drivers/net/ksz8864rmn.c
+++ b/drivers/net/ksz8864rmn.c
@@ -182,10 +182,4 @@ static struct driver_d micrel_switch_driver = {
 	.name  = "ksz8864rmn",
 	.probe = micrel_switch_probe,
 };
-
-static int micrel_switch_init(void)
-{
-	spi_driver_register(&micrel_switch_driver);
-	return 0;
-}
-device_initcall(micrel_switch_init);
+device_spi_driver(micrel_switch_driver);
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 9bec566..3da13e8 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -442,6 +442,9 @@ static inline int spi_driver_register(struct driver_d *drv)
 	return register_driver(drv);
 }
 
+#define device_spi_driver(drv)	\
+	register_driver_macro(device,spi,drv)
+
 void spi_of_register_slaves(struct spi_master *master, struct device_node *node);
 
 #endif /* __INCLUDE_SPI_H */
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
