Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvAg-0005Bk-FS
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:34:36 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 17:34:31 +0200
Message-Id: <20200928153431.1095-4-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/4] treewide: replace strerror(-PTR_ERR(errno)) with %pe
 format specifier
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Using %pe instead of PTR_ERR has the benefit of being less verbose and
less error-prone (no negation necessary) while potentially reducing
code size. Make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/fbtest.c                     | 5 ++---
 commands/splash.c                     | 5 ++---
 commands/ubi.c                        | 2 +-
 common/state/state.c                  | 3 +--
 drivers/net/designware_tegra186.c     | 5 ++---
 drivers/usb/imx/chipidea-imx.c        | 5 ++---
 drivers/video/imx-ipu-v3/ipu-common.c | 5 ++---
 lib/cmdlinepart.c                     | 7 +++----
 8 files changed, 15 insertions(+), 22 deletions(-)

diff --git a/commands/fbtest.c b/commands/fbtest.c
index ff24a8252a8c..30d96f6af41f 100644
--- a/commands/fbtest.c
+++ b/commands/fbtest.c
@@ -271,9 +271,8 @@ static int do_fbtest(int argc, char *argv[])
 
 	sc = fb_open(fbdev);
 	if (IS_ERR(sc)) {
-		int ret = -PTR_ERR(sc);
-		printf("fb_open: %s\n", strerror(ret));
-		return ret;
+		printf("fb_open: %pe\n", sc);
+		return COMMAND_ERROR;
 	}
 
 	if (!pattern_name) {
diff --git a/commands/splash.c b/commands/splash.c
index abd82873cb6d..f1cc8c83bd97 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -54,9 +54,8 @@ static int do_splash(int argc, char *argv[])
 
 	sc = fb_open(fbdev);
 	if (IS_ERR(sc)) {
-		int ret = -PTR_ERR(sc);
-		printf("fb_open: %s\n", strerror(ret));
-		return ret;
+		printf("fb_open: %pe\n", sc);
+		return COMMAND_ERROR;
 	}
 
 	buf = gui_screen_render_buffer(sc);
diff --git a/commands/ubi.c b/commands/ubi.c
index f37684102dfc..f866f00160b0 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -304,8 +304,8 @@ static int do_ubirmvol(int argc, char *argv[])
 
 	desc = ubi_open_volume_nm(ubinum, argv[2], UBI_EXCLUSIVE);
 	if (IS_ERR(desc)) {
+		printf("failed to open volume %s: %pe\n", argv[2], desc);
 		ret = PTR_ERR(desc);
-		printf("failed to open volume %s: %s\n", argv[2], strerror(-ret));
 		goto err;
 	}
 
diff --git a/common/state/state.c b/common/state/state.c
index d42920985d14..9d04eab312eb 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -271,9 +271,8 @@ static int state_convert_node_variable(struct state *state,
 	if (conv == STATE_CONVERT_FROM_NODE_CREATE) {
 		sv = vtype->create(state, name, node, vtype);
 		if (IS_ERR(sv)) {
+			dev_err(&state->dev, "failed to create %s: %pe\n", name, sv);
 			ret = PTR_ERR(sv);
-			dev_err(&state->dev, "failed to create %s: %s\n", name,
-				strerror(-ret));
 			goto out_free;
 		}
 
diff --git a/drivers/net/designware_tegra186.c b/drivers/net/designware_tegra186.c
index 5348f65c4146..f3b37be3ce4d 100644
--- a/drivers/net/designware_tegra186.c
+++ b/drivers/net/designware_tegra186.c
@@ -213,9 +213,8 @@ static int eqos_init_tegra186(struct device_d *dev, struct eqos *eqos)
 
 	priv->rst = reset_control_get(dev, "eqos");
 	if (IS_ERR(priv->rst)) {
-		ret = PTR_ERR(priv->rst);
-		dev_err(dev, "reset_get_by_name(rst) failed: %s\n", strerror(-ret));
-		return ret;
+		dev_err(dev, "reset_get_by_name(rst) failed: %pe\n", priv->rst);
+		return PTR_ERR(priv->rst);
 	}
 
 	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 635be02929a5..b1a77a163798 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -277,9 +277,8 @@ static int imx_chipidea_probe(struct device_d *dev)
 	if (of_property_read_bool(dev->device_node, "fsl,usbphy")) {
 		ci->phy = of_phy_get_by_phandle(dev, "fsl,usbphy", 0);
 		if (IS_ERR(ci->phy)) {
-			ret = PTR_ERR(ci->phy);
-			dev_err(dev, "Cannot get phy: %s\n", strerror(-ret));
-			return ret;
+			dev_err(dev, "Cannot get phy: %pe\n", ci->phy);
+			return PTR_ERR(ci->phy);
 		} else {
 			ci->usbphy = phy_to_usbphy(ci->phy);
 			if (IS_ERR(ci->usbphy))
diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
index 1811e50227b6..b31edcdd5561 100644
--- a/drivers/video/imx-ipu-v3/ipu-common.c
+++ b/drivers/video/imx-ipu-v3/ipu-common.c
@@ -804,9 +804,8 @@ static int ipu_probe(struct device_d *dev)
 
 	ipu->clk = clk_get(dev, "bus");
 	if (IS_ERR(ipu->clk)) {
-		ret = PTR_ERR(ipu->clk);
-		dev_err(dev, "clk_get failed: %s\n", strerror(-ret));
-		return ret;
+		dev_err(dev, "clk_get failed: %pe\n", ipu->clk);
+		return PTR_ERR(ipu->clk);
 	}
 
 	dev->priv = ipu;
diff --git a/lib/cmdlinepart.c b/lib/cmdlinepart.c
index 5a164628749f..5e95760bae94 100644
--- a/lib/cmdlinepart.c
+++ b/lib/cmdlinepart.c
@@ -30,7 +30,6 @@ int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 	char *end;
 	char buf[PATH_MAX] = {};
 	unsigned long flags = 0;
-	int ret = 0;
 	struct cdev *cdev;
 
 	memset(buf, 0, PATH_MAX);
@@ -85,11 +84,11 @@ int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 
 	cdev = devfs_add_partition(devname, *offset, size, flags, buf);
 	if (IS_ERR(cdev)) {
-		ret = PTR_ERR(cdev);
-		printf("cannot create %s: %s\n", buf, strerror(-ret));
+		printf("cannot create %s: %pe\n", buf, cdev);
+		return PTR_ERR(cdev);
 	}
 
-	return ret;
+	return 0;
 }
 
 int cmdlinepart_do_parse(const char *devname, const char *parts, loff_t devsize,
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
