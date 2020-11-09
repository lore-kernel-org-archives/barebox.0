Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc7TK-0004wp-3H
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 13:44:38 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  9 Nov 2020 14:44:25 +0100
Message-Id: <20201109134430.21156-4-r.czerwinski@pengutronix.de>
In-Reply-To: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
References: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 3/8] amba: add *_amba_driver helper macros
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Reuse the flexible register_driver_macro() to add
{device,coredevice,console}_amba_driver to get rid of the init
boilerplate code used within the amba drivers.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/clocksource/amba-sp804.c | 2 +-
 drivers/mci/mmci.c               | 7 +------
 drivers/serial/amba-pl011.c      | 8 +-------
 include/linux/amba/bus.h         | 7 +++++++
 4 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/clocksource/amba-sp804.c b/drivers/clocksource/amba-sp804.c
index 8ed5ae4be0..0c0ecaa83a 100644
--- a/drivers/clocksource/amba-sp804.c
+++ b/drivers/clocksource/amba-sp804.c
@@ -85,4 +85,4 @@ struct amba_driver sp804_driver = {
 	.id_table	= sp804_ids,
 };
 
-coredevice_platform_driver(sp804_driver);
+coredevice_amba_driver(sp804_driver);
diff --git a/drivers/mci/mmci.c b/drivers/mci/mmci.c
index f45557d4f7..53f25dff96 100644
--- a/drivers/mci/mmci.c
+++ b/drivers/mci/mmci.c
@@ -709,9 +709,4 @@ static struct amba_driver mmci_driver = {
 	.id_table	= mmci_ids,
 };
 
-static int mmci_init(void)
-{
-	amba_driver_register(&mmci_driver);
-	return 0;
-}
-device_initcall(mmci_init);
+device_amba_driver(mmci_driver);
diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 865ecdddb2..9261d20f2a 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -237,10 +237,4 @@ struct amba_driver pl011_driver = {
 	.id_table	= pl011_ids,
 };
 
-static int pl011_init(void)
-{
-	amba_driver_register(&pl011_driver);
-	return 0;
-}
-
-console_initcall(pl011_init);
+console_amba_driver(pl011_driver);
diff --git a/include/linux/amba/bus.h b/include/linux/amba/bus.h
index 7b3e603322..390220a3de 100644
--- a/include/linux/amba/bus.h
+++ b/include/linux/amba/bus.h
@@ -60,6 +60,13 @@ extern struct bus_type amba_bustype;
 
 #define to_amba_device(d)	container_of(d, struct amba_device, dev)
 
+#define device_amba_driver(drv)	\
+	register_driver_macro(device,amba,drv)
+#define coredevice_amba_driver(drv)	\
+	register_driver_macro(coredevice,amba,drv)
+#define console_amba_driver(drv)	\
+	register_driver_macro(console,amba,drv)
+
 int amba_driver_register(struct amba_driver *);
 void amba_driver_unregister(struct amba_driver *);
 struct amba_device *amba_device_alloc(const char *, int id, resource_size_t, size_t);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
