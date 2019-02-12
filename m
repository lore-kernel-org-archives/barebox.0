Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtRea-00042x-H5
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 06:34:49 +0000
Received: by mail-lj1-x243.google.com with SMTP id f24-v6so1241664ljk.0
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2019 22:34:46 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 12 Feb 2019 09:34:39 +0300
Message-Id: <20190212063439.29866-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] nvmem: eeprom_93xx46: fix whitespaces
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/nvmem/eeprom_93xx46.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/nvmem/eeprom_93xx46.c b/drivers/nvmem/eeprom_93xx46.c
index d96ba32d07..49ed396dc2 100644
--- a/drivers/nvmem/eeprom_93xx46.c
+++ b/drivers/nvmem/eeprom_93xx46.c
@@ -339,7 +339,7 @@ static int eeprom_93xx46_probe_dt(struct spi_device *spi)
 	if (of_property_read_bool(np, "read-only"))
 		pd->flags |= EE_READONLY;
 
-	pd->select =of_get_named_gpio_flags(np, "select", 0, &of_flags);
+	pd->select = of_get_named_gpio_flags(np, "select", 0, &of_flags);
 	if (gpio_is_valid(pd->select)) {
 		char *name;
 
@@ -441,6 +441,3 @@ static struct driver_d eeprom_93xx46_driver = {
 	.of_compatible = DRV_OF_COMPAT(eeprom_93xx46_of_table),
 };
 device_spi_driver(eeprom_93xx46_driver);
-
-
-
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
