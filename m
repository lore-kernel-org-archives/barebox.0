Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXkxR-0006Br-QW
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 06:26:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Mar 2015 07:25:53 +0100
Message-Id: <1426573554-14478-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1426573554-14478-1-git-send-email-s.hauer@pengutronix.de>
References: <1426573554-14478-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] driver: Call remove function only when available
To: Barebox List <barebox@lists.infradead.org>

The bus implementations currently call the drivers remove
hook unconditionally, but this hook is seldomly populated. Only call
it when it's actually populated.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/efi/efi/efi-device.c | 3 ++-
 drivers/base/platform.c   | 3 ++-
 drivers/i2c/i2c.c         | 3 ++-
 drivers/pci/bus.c         | 3 ++-
 drivers/spi/spi.c         | 3 ++-
 drivers/w1/w1.c           | 3 ++-
 6 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/efi/efi/efi-device.c b/arch/efi/efi/efi-device.c
index 788bb71..7db8e48 100644
--- a/arch/efi/efi/efi-device.c
+++ b/arch/efi/efi/efi-device.c
@@ -328,7 +328,8 @@ static void efi_bus_remove(struct device_d *dev)
 	struct efi_driver *efidrv = to_efi_driver(dev->driver);
 	struct efi_device *efidev = to_efi_device(dev);
 
-	return efidrv->remove(efidev);
+	if (efidrv->remove)
+		efidrv->remove(efidev);
 }
 
 struct bus_type efi_bus = {
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index e053ec7..85bdfb0 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -29,7 +29,8 @@ static int platform_probe(struct device_d *dev)
 
 static void platform_remove(struct device_d *dev)
 {
-	dev->driver->remove(dev);
+	if (dev->driver->remove)
+		dev->driver->remove(dev);
 }
 
 int platform_driver_register(struct driver_d *drv)
diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 9873957..7a6bde0 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -472,7 +472,8 @@ static int i2c_probe(struct device_d *dev)
 
 static void i2c_remove(struct device_d *dev)
 {
-	dev->driver->remove(dev);
+	if (dev->driver->remove)
+		dev->driver->remove(dev);
 }
 
 struct bus_type i2c_bus = {
diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
index 866ab08..d6c5496 100644
--- a/drivers/pci/bus.c
+++ b/drivers/pci/bus.c
@@ -51,7 +51,8 @@ static void pci_remove(struct device_d *dev)
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct pci_driver *pdrv = to_pci_driver(dev->driver);
 
-	pdrv->remove(pdev);
+	if (pdrv->remove)
+		pdrv->remove(pdev);
 }
 
 struct bus_type pci_bus = {
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 8bddd98..ba23cf7 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -311,7 +311,8 @@ static int spi_probe(struct device_d *dev)
 
 static void spi_remove(struct device_d *dev)
 {
-	dev->driver->remove(dev);
+	if (dev->driver->remove)
+		dev->driver->remove(dev);
 }
 
 struct bus_type spi_bus = {
diff --git a/drivers/w1/w1.c b/drivers/w1/w1.c
index bbef470..ff57386 100644
--- a/drivers/w1/w1.c
+++ b/drivers/w1/w1.c
@@ -392,7 +392,8 @@ static void w1_bus_remove(struct device_d *_dev)
 	struct w1_driver *drv = to_w1_driver(_dev->driver);
 	struct w1_device *dev = to_w1_device(_dev);
 
-	return drv->remove(dev);
+	if (drv->remove)
+		drv->remove(dev);
 }
 
 struct bus_type w1_bustype= {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
