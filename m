Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvAg-0005Bj-FQ
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:34:36 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 17:34:30 +0200
Message-Id: <20200928153431.1095-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200928153431.1095-1-a.fatoum@pengutronix.de>
References: <20200928153431.1095-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/4] vsprintf: retire strerrorp in favor of %pe
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

strerrorp() is only used along with printf. We now have a format
specifier for printing error pointers directly, so use that and
remove strerrorp.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-layerscape/ppa.c     | 5 ++---
 commands/of_diff.c                 | 4 ++--
 common/bootm.c                     | 3 +--
 common/usbgadget.c                 | 3 +--
 drivers/clk/clk-qoric.c            | 2 +-
 drivers/mfd/superio.c              | 3 +--
 drivers/misc/acpi-test.c           | 2 +-
 drivers/usb/imx/imx-usb-phy.c      | 2 +-
 drivers/video/imx-ipu-v3/imx-ldb.c | 8 ++++----
 fs/ubifs/ubifs.c                   | 3 +--
 include/errno.h                    | 5 -----
 lib/vsprintf.c                     | 2 +-
 12 files changed, 16 insertions(+), 26 deletions(-)

diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index 6ab7659be730..f38220dbc1e7 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -69,14 +69,13 @@ static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
 
 	fit = fit_open_buf(ppa, ppa_size, false, BOOTM_VERIFY_AVAILABLE);
 	if (IS_ERR(fit)) {
-		pr_err("Cannot open ppa FIT image: %s\n", strerrorp(fit));
+		pr_err("Cannot open ppa FIT image: %pe\n", fit);
 		return PTR_ERR(fit);
 	}
 
 	conf = fit_open_configuration(fit, NULL);
 	if (IS_ERR(conf)) {
-		pr_err("Cannot open default config in ppa FIT image: %s\n",
-		       strerrorp(conf));
+		pr_err("Cannot open default config in ppa FIT image: %pe\n", conf);
 		ret = PTR_ERR(fit);
 		goto err;
 	}
diff --git a/commands/of_diff.c b/commands/of_diff.c
index 8acfd42a6b88..ec039776cf34 100644
--- a/commands/of_diff.c
+++ b/commands/of_diff.c
@@ -64,14 +64,14 @@ static int do_of_diff(int argc, char *argv[])
 	b = get_tree(argv[2], root);
 
 	if (IS_ERR(a)) {
-		printf("Cannot read %s: %s\n", argv[1], strerrorp(a));
+		printf("Cannot read %s: %pe\n", argv[1], a);
 		ret = COMMAND_ERROR;
 		a = NULL;
 		goto out;
 	}
 
 	if (IS_ERR(b)) {
-		printf("Cannot read %s: %s\n", argv[2], strerrorp(b));
+		printf("Cannot read %s: %pe\n", argv[2], b);
 		ret = COMMAND_ERROR;
 		b = NULL;
 		goto out;
diff --git a/common/bootm.c b/common/bootm.c
index 60b8bf10a864..5da78ce379e1 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -648,8 +648,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 
 		fit = fit_open(data->os_file, data->verbose, data->verify);
 		if (IS_ERR(fit)) {
-			printf("Loading FIT image %s failed with: %s\n", data->os_file,
-			       strerrorp(fit));
+			printf("Loading FIT image %s failed with: %pe\n", data->os_file, fit);
 			ret = PTR_ERR(fit);
 			goto err_out;
 		}
diff --git a/common/usbgadget.c b/common/usbgadget.c
index b4f4ba04ca8c..042fbb8f6d51 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -35,8 +35,7 @@ static struct file_list *parse(const char *files)
 {
 	struct file_list *list = file_list_parse(files);
 	if (IS_ERR(list)) {
-		pr_err("Parsing file list \"%s\" failed: %s\n", files,
-		       strerrorp(list));
+		pr_err("Parsing file list \"%s\" failed: %pe\n", files, list);
 		return NULL;
 	}
 	return list;
diff --git a/drivers/clk/clk-qoric.c b/drivers/clk/clk-qoric.c
index 2ffc7613fa53..b3e0780bc816 100644
--- a/drivers/clk/clk-qoric.c
+++ b/drivers/clk/clk-qoric.c
@@ -589,7 +589,7 @@ static void __init clockgen_init(struct device_node *np,
 
 	clockgen.sysclk = of_clk_get(clockgen.node, 0);
 	if (IS_ERR(clockgen.sysclk)) {
-		pr_err("sysclk not found: %s\n", strerrorp(clockgen.sysclk));
+		pr_err("sysclk not found: %pe\n", clockgen.sysclk);
 		return;
 	}
 	
diff --git a/drivers/mfd/superio.c b/drivers/mfd/superio.c
index ab94a4fa8f75..fff26968ea29 100644
--- a/drivers/mfd/superio.c
+++ b/drivers/mfd/superio.c
@@ -87,8 +87,7 @@ void superio_chip_add(struct superio_chip *siochip)
 	regmap = regmap_init(siochip->dev, &superio_regmap_bus, siochip,
 			     &superio_regmap_config);
 	if (IS_ERR(regmap))
-		pr_warn("creating %s regmap failed: %s\n",
-			chipname, strerrorp(regmap));
+		pr_warn("creating %s regmap failed: %pe\n", chipname, regmap);
 
 	ret = regmap_register_cdev(regmap, chipname);
 	if (ret)
diff --git a/drivers/misc/acpi-test.c b/drivers/misc/acpi-test.c
index 970b435a0eec..1d6814ebcf27 100644
--- a/drivers/misc/acpi-test.c
+++ b/drivers/misc/acpi-test.c
@@ -29,7 +29,7 @@ static int acpi_test_probe(struct device_d *dev)
 
 	sdt = (u8 __force *)dev_request_mem_region_by_name(dev, "SDT");
 	if (IS_ERR(sdt)) {
-		dev_err(dev, "no SDT resource available: %s\n", strerrorp(sdt));
+		dev_err(dev, "no SDT resource available: %pe\n", sdt);
 		return PTR_ERR(sdt);
 	}
 
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index c23a747d0b1e..e3f3bb3612fe 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -165,7 +165,7 @@ static int imx_usbphy_probe(struct device_d *dev)
 
 	imxphy->clk = clk_get(dev, NULL);
 	if (IS_ERR(imxphy->clk)) {
-		dev_err(dev, "could not get clk: %s\n", strerrorp(imxphy->clk));
+		dev_err(dev, "could not get clk: %pe\n", imxphy->clk);
 		ret = PTR_ERR(imxphy->clk);
 		goto err_clk;
 	}
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 9b4524274c4e..d7793bdc0e3f 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -162,7 +162,7 @@ static int imx6q_set_clock(struct imx_ldb *ldb, int ipuno, int dino, int chno, u
 	diclk = clk_lookup(clkname);
 	free(clkname);
 	if (IS_ERR(diclk)) {
-		dev_err(ldb->dev, "failed to get di clk: %s\n", strerrorp(diclk));
+		dev_err(ldb->dev, "failed to get di clk: %pe\n", diclk);
 		return PTR_ERR(diclk);
 	}
 
@@ -170,7 +170,7 @@ static int imx6q_set_clock(struct imx_ldb *ldb, int ipuno, int dino, int chno, u
 	ldbclk = clk_lookup(clkname);
 	free(clkname);
 	if (IS_ERR(ldbclk)) {
-		dev_err(ldb->dev, "failed to get ldb clk: %s\n", strerrorp(ldbclk));
+		dev_err(ldb->dev, "failed to get ldb clk: %pe\n", ldbclk);
 		return PTR_ERR(ldbclk);
 	}
 
@@ -233,7 +233,7 @@ static int imx53_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
 	diclk = clk_lookup(clkname);
 	free(clkname);
 	if (IS_ERR(diclk)) {
-		dev_err(ldb->dev, "failed to get di clk: %s\n", strerrorp(diclk));
+		dev_err(ldb->dev, "failed to get di clk: %pe\n", diclk);
 		return PTR_ERR(diclk);
 	}
 
@@ -241,7 +241,7 @@ static int imx53_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
 	ldbclk = clk_lookup(clkname);
 	free(clkname);
 	if (IS_ERR(ldbclk)) {
-		dev_err(ldb->dev, "failed to get ldb clk: %s\n", strerrorp(ldbclk));
+		dev_err(ldb->dev, "failed to get ldb clk: %pe\n", ldbclk);
 		return PTR_ERR(ldbclk);
 	}
 
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index fd3561924657..6434cc61c55f 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -430,8 +430,7 @@ static int ubifs_probe(struct device_d *dev)
 
 	priv->ubi = ubi_open_volume_cdev(priv->cdev, UBI_READONLY);
 	if (IS_ERR(priv->ubi)) {
-		dev_err(dev, "failed to open ubi volume: %s\n",
-				strerrorp(priv->ubi));
+		dev_err(dev, "failed to open ubi volume: %pe\n", priv->ubi);
 		ret = PTR_ERR(priv->ubi);
 		goto err_free;
 	}
diff --git a/include/errno.h b/include/errno.h
index 50f00de5d636..262c9fc3eb1c 100644
--- a/include/errno.h
+++ b/include/errno.h
@@ -11,9 +11,4 @@ void perror(const char *s);
 const char *errno_str(void);
 const char *strerror(int errnum);
 
-static inline const char *strerrorp(const void *errp)
-{
-	return strerror(-PTR_ERR(errp));
-}
-
 #endif /* __ERRNO_H */
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 3fccfa7a56ba..4834501ff124 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -232,7 +232,7 @@ char *error_string(char *buf, const char *end, const u8 *errptr, int field_width
     if (!IS_ERR(errptr))
 	    return raw_pointer(buf, end, errptr, field_width, precision, flags);
 
-    return string(buf, end, strerrorp(errptr), field_width, precision, flags);
+    return string(buf, end, strerror(-PTR_ERR(errptr)), field_width, precision, flags);
 }
 
 static noinline_for_stack
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
