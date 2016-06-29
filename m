Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bICLJ-000558-Fj
 for barebox@lists.infradead.org; Wed, 29 Jun 2016 10:03:39 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B482CA00266
 for <barebox@lists.infradead.org>; Wed, 29 Jun 2016 12:04:23 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Jun 2016 12:01:07 +0200
Message-Id: <1467194468-31049-3-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1467194468-31049-1-git-send-email-t.remmet@phytec.de>
References: <1467194468-31049-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 3/4] OMAP: am33xx_bbu_nand: Extent barebox update handler
To: barebox@lists.infradead.org

Make it possible to write barebox image to multiple partitions
like xload partitions.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/board.c |  7 ++++-
 arch/arm/mach-omap/am33xx_bbu_nand.c      | 50 +++++++++++++++++--------------
 arch/arm/mach-omap/include/mach/bbu.h     |  7 +++--
 3 files changed, 39 insertions(+), 25 deletions(-)

diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
index ca325b5..d5c27e2 100644
--- a/arch/arm/boards/phytec-som-am335x/board.c
+++ b/arch/arm/boards/phytec-som-am335x/board.c
@@ -60,6 +60,10 @@ static char *xloadslots[] = {
 	"/dev/nand0.xload_backup3.bb"
 };
 
+static char *nandslots[] = {
+	"/dev/nand0.barebox.bb",
+};
+
 static int physom_devices_init(void)
 {
 	if (!of_machine_is_compatible("phytec,am335x-som"))
@@ -105,7 +109,8 @@ static int physom_devices_init(void)
 	am33xx_bbu_spi_nor_register_handler("spi", "/dev/m25p0.barebox");
 	am33xx_bbu_nand_xloadslots_register_handler("MLO.nand",
 		xloadslots, ARRAY_SIZE(xloadslots));
-	am33xx_bbu_nand_register_handler("nand", "/dev/nand0.barebox.bb");
+	am33xx_bbu_nand_slots_register_handler("nand", nandslots,
+				ARRAY_SIZE(nandslots));
 
 	if (IS_ENABLED(CONFIG_SHELL_NONE))
 		return am33xx_of_register_bootdevice();
diff --git a/arch/arm/mach-omap/am33xx_bbu_nand.c b/arch/arm/mach-omap/am33xx_bbu_nand.c
index 25f0e79..7785d40 100644
--- a/arch/arm/mach-omap/am33xx_bbu_nand.c
+++ b/arch/arm/mach-omap/am33xx_bbu_nand.c
@@ -62,21 +62,15 @@ static int write_image(const char *devfile, const void *image, size_t size)
 }
 
 /*
- * This handler updates all given xload slots in nand with an image.
+ * Upate given nand partitions with an image
  */
-static int nand_xloadslots_update_handler(struct bbu_handler *handler,
-					struct bbu_data *data)
+static int nand_slot_update_handler(struct bbu_handler *handler,
+						struct bbu_data *data)
 {
-	int ret = 0;
+	int ret, i;
+	struct nand_bbu_handler *nh;
 	const void *image = data->image;
 	size_t size = data->len;
-	struct nand_bbu_handler *nh;
-	int i = 0;
-
-	if (file_detect_type(image, size) != filetype_ch_image) {
-		pr_err("%s is not a valid ch-image\n", data->imagefile);
-		return -EINVAL;
-	}
 
 	nh = container_of(handler, struct nand_bbu_handler, bbu_handler);
 
@@ -100,6 +94,23 @@ static int nand_xloadslots_update_handler(struct bbu_handler *handler,
 	return 0;
 }
 
+/*
+ * This handler updates all given xload slots in nand with an image.
+ */
+static int nand_xloadslots_update_handler(struct bbu_handler *handler,
+					struct bbu_data *data)
+{
+	const void *image = data->image;
+	size_t size = data->len;
+
+	if (file_detect_type(image, size) != filetype_ch_image) {
+		pr_err("%s is not a valid ch-image\n", data->imagefile);
+		return -EINVAL;
+	}
+
+	return nand_slot_update_handler(handler, data);
+}
+
 int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
 						char **devicefile,
 						int num_devicefiles)
@@ -124,32 +135,27 @@ int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
 static int nand_update_handler(struct bbu_handler *handler,
 		struct bbu_data *data)
 {
-	int ret = 0;
 	const void *image = data->image;
 	size_t size = data->len;
-	struct nand_bbu_handler *nh;
 
 	if (file_detect_type(image, size) != filetype_arm_barebox) {
 		pr_err("%s is not a valid barebox image\n", data->imagefile);
 		return -EINVAL;
 	}
 
-	nh = container_of(handler, struct nand_bbu_handler, bbu_handler);
-
-	ret = bbu_confirm(data);
-	if (ret != 0)
-		return ret;
-
-	return write_image(data->devicefile, image, size);
+	return nand_slot_update_handler(handler, data);
 }
 
-int am33xx_bbu_nand_register_handler(const char *name, char *devicefile)
+int am33xx_bbu_nand_slots_register_handler(const char *name, char **devicefile,
+							int num_devicefiles)
 {
 	struct nand_bbu_handler *handler;
 	int ret;
 
 	handler = xzalloc(sizeof(*handler));
-	handler->bbu_handler.devicefile = devicefile;
+	handler->devicefile = devicefile;
+	handler->num_devicefiles = num_devicefiles;
+	handler->bbu_handler.devicefile = devicefile[0];
 	handler->bbu_handler.handler = nand_update_handler;
 	handler->bbu_handler.name = name;
 
diff --git a/arch/arm/mach-omap/include/mach/bbu.h b/arch/arm/mach-omap/include/mach/bbu.h
index 7c5dcbd..c8b0a55 100644
--- a/arch/arm/mach-omap/include/mach/bbu.h
+++ b/arch/arm/mach-omap/include/mach/bbu.h
@@ -21,7 +21,8 @@ static inline int am33xx_bbu_spi_nor_register_handler(const char *name, char *de
 int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
 						char **devicefile,
 						int num_devicefiles);
-int am33xx_bbu_nand_register_handler(const char *name, char *devicefile);
+int am33xx_bbu_nand_slots_register_handler(const char *name, char **devicefile,
+						int num_devicefiles);
 #else
 static inline int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
 							char **devicefile,
@@ -30,7 +31,9 @@ static inline int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
 	return 0;
 }
 
-static inline int am33xx_bbu_nand_register_handler(const char *name, char *devicefile)
+static inline int am33xx_bbu_nand_slots_register_handler(const char *name,
+							 char **devicefile,
+							int num_devicefiles)
 {
 	return 0;
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
