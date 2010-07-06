Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OW1gj-0001Hv-Vp
	for barebox@lists.infradead.org; Tue, 06 Jul 2010 06:31:27 +0000
Date: Tue, 6 Jul 2010 08:31:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100706063121.GG26079@pengutronix.de>
References: <1278335795-16289-3-git-send-email-s.hauer@pengutronix.de>
	<1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
	<20100705152215.GA16489@morgana.i.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100705152215.GA16489@morgana.i.gnudd.com>
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
Subject: Re: [PATCH 02/12] move drivers/nand to drivers/mtd/nand
To: Alessandro Rubini <rubini-list@gnudd.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 05, 2010 at 05:22:15PM +0200, Alessandro Rubini wrote:
> > Subject: [PATCH 02/12] move drivers/nand to drivers/mtd/nand
> > Date: Mon,  5 Jul 2010 15:16:25 +0200
> 
> >  drivers/mtd/nand/nand_base.c      | 2648 +++++++++++++++++++++++++++++++++++++
> >  drivers/nand/nand_base.c          | 2648 -------------------------------------
> 
> Shouldn't this have been generated with "git format-patch -M" ?
> 

For the sake of readability, yes. Here it is:

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/Kconfig                         |    2 +-
 drivers/Makefile                        |    2 +-
 drivers/mtd/Kconfig                     |    8 ++++++++
 drivers/mtd/Makefile                    |    1 +
 drivers/{ => mtd}/nand/Kconfig          |    2 +-
 drivers/{ => mtd}/nand/Makefile         |    0
 drivers/{ => mtd}/nand/atmel_nand.c     |    0
 drivers/{ => mtd}/nand/atmel_nand_ecc.h |    0
 drivers/{ => mtd}/nand/diskonchip.c     |    0
 drivers/{ => mtd}/nand/nand.c           |    0
 drivers/{ => mtd}/nand/nand_base.c      |    0
 drivers/{ => mtd}/nand/nand_bbt.c       |    0
 drivers/{ => mtd}/nand/nand_ecc.c       |    0
 drivers/{ => mtd}/nand/nand_ids.c       |    0
 drivers/{ => mtd}/nand/nand_imx.c       |    0
 drivers/{ => mtd}/nand/nand_omap_gpmc.c |    0
 drivers/{ => mtd}/nand/nand_s3c2410.c   |    0
 drivers/{ => mtd}/nand/nand_util.c      |    0
 18 files changed, 12 insertions(+), 3 deletions(-)
 create mode 100644 drivers/mtd/Kconfig
 create mode 100644 drivers/mtd/Makefile
 rename drivers/{ => mtd}/nand/Kconfig (98%)
 rename drivers/{ => mtd}/nand/Makefile (100%)
 rename drivers/{ => mtd}/nand/atmel_nand.c (100%)
 rename drivers/{ => mtd}/nand/atmel_nand_ecc.h (100%)
 rename drivers/{ => mtd}/nand/diskonchip.c (100%)
 rename drivers/{ => mtd}/nand/nand.c (100%)
 rename drivers/{ => mtd}/nand/nand_base.c (100%)
 rename drivers/{ => mtd}/nand/nand_bbt.c (100%)
 rename drivers/{ => mtd}/nand/nand_ecc.c (100%)
 rename drivers/{ => mtd}/nand/nand_ids.c (100%)
 rename drivers/{ => mtd}/nand/nand_imx.c (100%)
 rename drivers/{ => mtd}/nand/nand_omap_gpmc.c (100%)
 rename drivers/{ => mtd}/nand/nand_s3c2410.c (100%)
 rename drivers/{ => mtd}/nand/nand_util.c (100%)

diff --git a/drivers/Kconfig b/drivers/Kconfig
index bf559c4..ae9efce 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -5,7 +5,7 @@ source "drivers/net/Kconfig"
 source "drivers/spi/Kconfig"
 source "drivers/i2c/Kconfig"
 source "drivers/nor/Kconfig"
-source "drivers/nand/Kconfig"
+source "drivers/mtd/Kconfig"
 source "drivers/ata/Kconfig"
 source "drivers/usb/Kconfig"
 source "drivers/video/Kconfig"
diff --git a/drivers/Makefile b/drivers/Makefile
index 7bae6ff..bce68bc 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -1,6 +1,6 @@
 obj-y	+= net/
 obj-y	+= serial/
-obj-y	+= nand/
+obj-y	+= mtd/
 obj-y	+= nor/
 obj-y	+= usb/
 obj-$(CONFIG_ATA) += ata/
diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
new file mode 100644
index 0000000..53183fc
--- /dev/null
+++ b/drivers/mtd/Kconfig
@@ -0,0 +1,8 @@
+menuconfig MTD
+        bool "Memory Technology Device (MTD) support"
+
+if MTD
+
+source "drivers/mtd/nand/Kconfig"
+
+endif
diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
new file mode 100644
index 0000000..87ee6f4
--- /dev/null
+++ b/drivers/mtd/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_NAND)	+= nand/
diff --git a/drivers/nand/Kconfig b/drivers/mtd/nand/Kconfig
similarity index 98%
rename from drivers/nand/Kconfig
rename to drivers/mtd/nand/Kconfig
index 031b94d..e0d9d0d 100644
--- a/drivers/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -1,5 +1,5 @@
 menuconfig NAND
-	bool "NAND support                  "
+	bool "NAND support              "
 	select MTD_NAND_IDS
 	help
 	  This enables support for accessing all type of NAND flash
diff --git a/drivers/nand/Makefile b/drivers/mtd/nand/Makefile
similarity index 100%
rename from drivers/nand/Makefile
rename to drivers/mtd/nand/Makefile
diff --git a/drivers/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
similarity index 100%
rename from drivers/nand/atmel_nand.c
rename to drivers/mtd/nand/atmel_nand.c
diff --git a/drivers/nand/atmel_nand_ecc.h b/drivers/mtd/nand/atmel_nand_ecc.h
similarity index 100%
rename from drivers/nand/atmel_nand_ecc.h
rename to drivers/mtd/nand/atmel_nand_ecc.h
diff --git a/drivers/nand/diskonchip.c b/drivers/mtd/nand/diskonchip.c
similarity index 100%
rename from drivers/nand/diskonchip.c
rename to drivers/mtd/nand/diskonchip.c
diff --git a/drivers/nand/nand.c b/drivers/mtd/nand/nand.c
similarity index 100%
rename from drivers/nand/nand.c
rename to drivers/mtd/nand/nand.c
diff --git a/drivers/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
similarity index 100%
rename from drivers/nand/nand_base.c
rename to drivers/mtd/nand/nand_base.c
diff --git a/drivers/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
similarity index 100%
rename from drivers/nand/nand_bbt.c
rename to drivers/mtd/nand/nand_bbt.c
diff --git a/drivers/nand/nand_ecc.c b/drivers/mtd/nand/nand_ecc.c
similarity index 100%
rename from drivers/nand/nand_ecc.c
rename to drivers/mtd/nand/nand_ecc.c
diff --git a/drivers/nand/nand_ids.c b/drivers/mtd/nand/nand_ids.c
similarity index 100%
rename from drivers/nand/nand_ids.c
rename to drivers/mtd/nand/nand_ids.c
diff --git a/drivers/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
similarity index 100%
rename from drivers/nand/nand_imx.c
rename to drivers/mtd/nand/nand_imx.c
diff --git a/drivers/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
similarity index 100%
rename from drivers/nand/nand_omap_gpmc.c
rename to drivers/mtd/nand/nand_omap_gpmc.c
diff --git a/drivers/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
similarity index 100%
rename from drivers/nand/nand_s3c2410.c
rename to drivers/mtd/nand/nand_s3c2410.c
diff --git a/drivers/nand/nand_util.c b/drivers/mtd/nand/nand_util.c
similarity index 100%
rename from drivers/nand/nand_util.c
rename to drivers/mtd/nand/nand_util.c
-- 
1.7.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
