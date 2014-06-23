Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wz12a-0004YI-5D
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 10:00:00 +0000
Date: Mon, 23 Jun 2014 11:59:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140623095931.GW15686@pengutronix.de>
References: <CAOpc7mF_bAvNVebmS7F2ow4fj6peFgjxyY=1F-NQyvfb88XqHg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mF_bAvNVebmS7F2ow4fj6peFgjxyY=1F-NQyvfb88XqHg@mail.gmail.com>
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
Subject: Re: SFI NOR sizes totally off ?!?
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jun 23, 2014 at 11:28:09AM +0200, Holger Schurig wrote:
> Seems like "ls -l" is right, but "devinfo" is wrong:
> 
> barebox:/ ls -l /dev/m25p0
> crw-------   67108864 /dev/m25p0
> barebox:/ devinfo m25p0
> Parameters:
>   size: 5468012149590870304
>   erasesize: 4096
>   writesize: 1
>   oobsize: 0

This should be fixed with the following Commit.

Grumpf. We really need some stable strategy.

Sascha

commit 3ee907d89eaeaee5f75bd73eb89d2b4b3d05f6d4
Author: Herve Codina <Herve.CODINA@celad.com>
Date:   Thu Jun 12 11:37:38 2014 +0200

    mtd: use long long dev param for size
    
    Signed-off-by: Herve Codina <Herve.CODINA@celad.com>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index d3e7763..82fb5f7 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -401,7 +401,7 @@ int add_mtd_device(struct mtd_info *mtd, char *devname, int device_id)
        mtd->cdev.mtd = mtd;
 
        if (IS_ENABLED(CONFIG_PARAMETER)) {
-               dev_add_param_int_ro(&mtd->class_dev, "size", mtd->size, "%llu");
+               dev_add_param_llint_ro(&mtd->class_dev, "size", mtd->size, "%llu");
                dev_add_param_int_ro(&mtd->class_dev, "erasesize", mtd->erasesize, "%u");
                dev_add_param_int_ro(&mtd->class_dev, "writesize", mtd->writesize, "%u");
                dev_add_param_int_ro(&mtd->class_dev, "oobsize", mtd->oobsize, "%u");


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
