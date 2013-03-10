Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEZwz-0005t3-VQ
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 06:41:44 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 10 Mar 2013 10:41:33 +0400
Message-Id: <1362897695-3936-4-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 4/6] SPI: Rename spi_register_driver() for using with
 register_driver_macro()
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/eeprom/at25.c               | 2 +-
 drivers/mci/mci_spi.c               | 2 +-
 drivers/mfd/mc13xxx.c               | 2 +-
 drivers/mfd/mc34708.c               | 2 +-
 drivers/mtd/devices/m25p80.c        | 2 +-
 drivers/mtd/devices/mtd_dataflash.c | 2 +-
 drivers/net/ksz8864rmn.c            | 2 +-
 include/spi/spi.h                   | 2 +-
 8 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 9bd7748..e2e6ef4 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -307,7 +307,7 @@ static struct driver_d at25_driver = {
 
 static int at25_init(void)
 {
-	spi_register_driver(&at25_driver);
+	spi_driver_register(&at25_driver);
 	return 0;
 }
 
diff --git a/drivers/mci/mci_spi.c b/drivers/mci/mci_spi.c
index 679a0e1..022e260 100644
--- a/drivers/mci/mci_spi.c
+++ b/drivers/mci/mci_spi.c
@@ -446,7 +446,7 @@ static struct driver_d spi_mci_driver = {
 
 static int spi_mci_init_driver(void)
 {
-	spi_register_driver(&spi_mci_driver);
+	spi_driver_register(&spi_mci_driver);
 	return 0;
 }
 
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index d6cf73c..359b118 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -375,7 +375,7 @@ static struct driver_d mc_spi_driver = {
 
 static int mc_spi_init(void)
 {
-	return spi_register_driver(&mc_spi_driver);
+	return spi_driver_register(&mc_spi_driver);
 }
 
 device_initcall(mc_spi_init);
diff --git a/drivers/mfd/mc34708.c b/drivers/mfd/mc34708.c
index b1166de..fbd6891 100644
--- a/drivers/mfd/mc34708.c
+++ b/drivers/mfd/mc34708.c
@@ -294,7 +294,7 @@ static struct driver_d mc_spi_driver = {
 
 static int mc_spi_init(void)
 {
-	return spi_register_driver(&mc_spi_driver);
+	return spi_driver_register(&mc_spi_driver);
 }
 
 device_initcall(mc_spi_init);
diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 2db6fff..3293491 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -954,7 +954,7 @@ static struct driver_d m25p80_driver = {
 
 static int m25p80_init(void)
 {
-	return spi_register_driver(&m25p80_driver);
+	return spi_driver_register(&m25p80_driver);
 }
 device_initcall(m25p80_init);
 
diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index 3b7b9c6..cfad8b1 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -878,7 +878,7 @@ static struct driver_d dataflash_driver = {
 
 static int dataflash_init(void)
 {
-	spi_register_driver(&dataflash_driver);
+	spi_driver_register(&dataflash_driver);
 	return 0;
 }
 device_initcall(dataflash_init);
diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
index 5845960..99274ec 100644
--- a/drivers/net/ksz8864rmn.c
+++ b/drivers/net/ksz8864rmn.c
@@ -185,7 +185,7 @@ static struct driver_d micrel_switch_driver = {
 
 static int micrel_switch_init(void)
 {
-	spi_register_driver(&micrel_switch_driver);
+	spi_driver_register(&micrel_switch_driver);
 	return 0;
 }
 device_initcall(micrel_switch_init);
diff --git a/include/spi/spi.h b/include/spi/spi.h
index fa76e9b..9bec566 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -436,7 +436,7 @@ extern struct bus_type spi_bus;
 
 struct spi_master *spi_get_master(int bus);
 
-static inline int spi_register_driver(struct driver_d *drv)
+static inline int spi_driver_register(struct driver_d *drv)
 {
 	drv->bus = &spi_bus;
 	return register_driver(drv);
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
