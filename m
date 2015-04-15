Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YiFrs-0005zA-W6
 for barebox@lists.infradead.org; Wed, 15 Apr 2015 05:28:09 +0000
Date: Wed, 15 Apr 2015 07:27:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150415052746.GJ9742@pengutronix.de>
References: <1429041383-18927-1-git-send-email-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1429041383-18927-1-git-send-email-uwe@kleine-koenig.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH] pci: Improve handling of constant id_table pointer
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Tue, Apr 14, 2015 at 09:56:23PM +0200, Uwe Kleine-K=F6nig wrote:
> From: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> =

> This makes it more obvious why the cast is needed. Still looks ugly thoug=
h.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/pci/bus.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
> index 866ab08..fca4f5c 100644
> --- a/drivers/pci/bus.c
> +++ b/drivers/pci/bus.c
> @@ -27,11 +27,11 @@ static int pci_match(struct device_d *dev, struct dri=
ver_d *drv)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(dev);
>  	struct pci_driver *pdrv =3D to_pci_driver(drv);
> -	struct pci_device_id *id;
> +	const struct pci_device_id *id;
>  =

> -	for (id =3D (struct pci_device_id *)pdrv->id_table; id->vendor; id++)
> +	for (id =3D pdrv->id_table; id->vendor; id++)
>  		if (pci_match_one_device(id, pdev)) {
> -			dev->priv =3D id;
> +			dev->priv =3D (/* non-const */ void *)id;

dev->priv shouldn't be used here, it's for private use of the device
driver. The following should fix it (untested).

Sascha

---------------------8<----------------------------

From 7977a32035787b500aa52e4a4241101e5aae7ad7 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Apr 2015 07:25:41 +0200
Subject: [PATCH] pci: Do not abuse dev->priv for storing data

dev->priv is for private use of the device driver, so do not
use it in the pci core. Instead, introduce a id field in struct
pci_device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/bus.c   | 6 +++---
 include/linux/pci.h | 1 +
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
index d6c5496..9fec4d7 100644
--- a/drivers/pci/bus.c
+++ b/drivers/pci/bus.c
@@ -27,11 +27,11 @@ static int pci_match(struct device_d *dev, struct drive=
r_d *drv)
 {
 	struct pci_dev *pdev =3D to_pci_dev(dev);
 	struct pci_driver *pdrv =3D to_pci_driver(drv);
-	struct pci_device_id *id;
+	const struct pci_device_id *id;
 =

 	for (id =3D (struct pci_device_id *)pdrv->id_table; id->vendor; id++)
 		if (pci_match_one_device(id, pdev)) {
-			dev->priv =3D id;
+			pdev->id =3D id;
 			return 0;
 		}
 =

@@ -43,7 +43,7 @@ static int pci_probe(struct device_d *dev)
 	struct pci_dev *pdev =3D to_pci_dev(dev);
 	struct pci_driver *pdrv =3D to_pci_driver(dev->driver);
 =

-	return pdrv->probe(pdev, dev->priv);
+	return pdrv->probe(pdev, pdev->id);
 }
 =

 static void pci_remove(struct device_d *dev)
diff --git a/include/linux/pci.h b/include/linux/pci.h
index e422055..152ba10 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -92,6 +92,7 @@ struct pci_dev {
 	struct pci_bus	*bus;		/* bus this device is on */
 	struct pci_bus	*subordinate;	/* bus this device bridges to */
 	struct pci_slot	*slot;		/* Physical slot this device is in */
+	const struct pci_device_id *id;	/* the id this device matches */
 =

 	struct device_d dev;
 =

-- =

2.1.4

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
