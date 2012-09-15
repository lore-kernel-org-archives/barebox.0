Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCrRc-00061l-Rk
 for barebox@lists.infradead.org; Sat, 15 Sep 2012 12:25:58 +0000
Date: Sat, 15 Sep 2012 14:24:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120915122428.GV24458@pengutronix.de>
References: <20120914073755.GD20834@game.jcrosoft.org>
 <1347609426-21286-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347609426-21286-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] net: introduce phylib
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 14, 2012 at 09:57:04AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> Adapt phylib from linux
> 
> switch all the driver to it
> 
> This will allow to have
>  - phy drivers
>  - to only connect the phy at then opening of the device
>  - if the phy is not ready fail on open
> 
> Same behaviour as in linux and will allow to share code and simplify porting.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---

Had to squash the following in to fix compile breakage on i.MX6 boards.

Overall it seems there is enough room for cleanup still. We used to have
a struct mii_device which was a combination of a mii_bus and a
phy_device. Now we have a dedicated phy_device, but struct mii_device
still has a single phy and a single cdev. I think we should move the
struct cdev to struct phy_device and make the struct phy_device member
of struct mii_device a list of phy_devices. Anyway, this can be done
later.

For now I merged this series with the below changes.

Sascha


diff --git a/arch/arm/boards/freescale-mx6-arm2/board.c b/arch/arm/boards/freescale-mx6-arm2/board.c
index e4a9a49..7b08106 100644
--- a/arch/arm/boards/freescale-mx6-arm2/board.c
+++ b/arch/arm/boards/freescale-mx6-arm2/board.c
@@ -31,6 +31,7 @@
 #include <asm/mmu.h>
 #include <mach/generic.h>
 #include <sizes.h>
+#include <phy.h>
 #include <mach/imx6.h>
 #include <mach/devices-imx6.h>
 #include <mach/iomux-mx6.h>
@@ -112,7 +113,9 @@ static struct fec_platform_data fec_info = {
 static int mx6_rgmii_rework(void)
 {
 	struct mii_device *mdev;
+	struct phy_device *pdev;
 	u16 val;
+	int ret;
 
 	mdev = mii_open("phy0");
 	if (!mdev) {
@@ -120,26 +123,35 @@ static int mx6_rgmii_rework(void)
 		return -ENODEV;
 	}
 
+	pdev = mdev->phydev;
+	if (!pdev) {
+		printf("phy0 has no phydev\n");
+		ret = -ENODEV;
+		goto out;
+	}
+
 	/* To enable AR8031 ouput a 125MHz clk from CLK_25M */
-	mii_write(mdev, mdev->address, 0xd, 0x7);
-	mii_write(mdev, mdev->address, 0xe, 0x8016);
-	mii_write(mdev, mdev->address, 0xd, 0x4007);
+	phy_write(pdev, 0xd, 0x7);
+	phy_write(pdev, 0xe, 0x8016);
+	phy_write(pdev, 0xd, 0x4007);
 
-	val = mii_read(mdev, mdev->address, 0xe);
+	val = phy_read(pdev, 0xe);
 	val &= 0xffe3;
 	val |= 0x18;
-	mii_write(mdev, mdev->address, 0xe, val);
+	phy_write(pdev, 0xe, val);
 
 	/* introduce tx clock delay */
-	mii_write(mdev, mdev->address, 0x1d, 0x5);
+	phy_write(pdev, 0x1d, 0x5);
 
-	val = mii_read(mdev, mdev->address, 0x1e);
+	val = phy_read(pdev, 0x1e);
 	val |= 0x0100;
-	mii_write(mdev, mdev->address, 0x1e, val);
+	phy_write(pdev, 0x1e, val);
 
+	ret = 0;
+out:
 	mii_close(mdev);
 
-	return 0;
+	return ret;
 }
 
 static int arm2_devices_init(void)
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 1ac401e..aded4ec 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -40,6 +40,7 @@
 #include <mach/gpio.h>
 #include <spi/spi.h>
 #include <mach/spi.h>
+#include <phy.h>
 
 #define SABRELITE_SD3_WP	IMX_GPIO_NR(7, 1)
 #define SABRELITE_SD3_CD	IMX_GPIO_NR(7, 0)
@@ -143,6 +144,8 @@ static struct fec_platform_data fec_info = {
 int mx6_rgmii_rework(void)
 {
 	struct mii_device *mdev;
+	struct phy_device *pdev;
+	int ret;
 
 	mdev = mii_open("phy0");
 	if (!mdev) {
@@ -150,21 +153,30 @@ int mx6_rgmii_rework(void)
 		return -ENODEV;
 	}
 
-	mii_write(mdev, mdev->address, 0x09, 0x0f00);
+	pdev = mdev->phydev;
+	if (!pdev) {
+		printf("phy0 has no phydev\n");
+		ret = -ENODEV;
+		goto out;
+	}
+
+	phy_write(pdev, 0x09, 0x0f00);
 
 	/* do same as linux kernel */
 	/* min rx data delay */
-	mii_write(mdev, mdev->address, 0x0b, 0x8105);
-	mii_write(mdev, mdev->address, 0x0c, 0x0000);
+	phy_write(pdev, 0x0b, 0x8105);
+	phy_write(pdev, 0x0c, 0x0000);
 
 	/* max rx/tx clock delay, min rx/tx control delay */
-	mii_write(mdev, mdev->address, 0x0b, 0x8104);
-	mii_write(mdev, mdev->address, 0x0c, 0xf0f0);
-	mii_write(mdev, mdev->address, 0x0b, 0x104);
+	phy_write(pdev, 0x0b, 0x8104);
+	phy_write(pdev, 0x0c, 0xf0f0);
+	phy_write(pdev, 0x0b, 0x104);
 
+	ret = 0;
+out:
 	mii_close(mdev);
 
-	return 0;
+	return ret;
 }
 
 static int sabrelite_ksz9021rn_setup(void)

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
