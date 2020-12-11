Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knfBv-0002ge-GP
 for barebox@lists.infradead.org; Fri, 11 Dec 2020 09:58:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Dec 2020 10:58:21 +0100
Message-Id: <20201211095821.22202-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] spi: store names in struct spi_device_id as pointers
To: Barebox List <barebox@lists.infradead.org>

Instead of putting an array for the names into struct spi_device_id
use pointers. This saves around 3000 bytes of binary space in a ARM32
barebox build.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/mod_devicetable.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/mod_devicetable.h b/include/linux/mod_devicetable.h
index 1fbb3dc5c1..2c04454260 100644
--- a/include/linux/mod_devicetable.h
+++ b/include/linux/mod_devicetable.h
@@ -21,7 +21,7 @@ struct pci_device_id {
 #define SPI_NAME_SIZE 32
 
 struct spi_device_id {
-	char name[SPI_NAME_SIZE];
+	const char *name;
 	unsigned long driver_data;
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
