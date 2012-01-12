Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arroyo.ext.ti.com ([192.94.94.40])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RlMMo-0004a4-NK
 for barebox@lists.infradead.org; Thu, 12 Jan 2012 15:15:03 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Thu, 12 Jan 2012 15:14:56 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A89317F3531@DBDE01.ent.ti.com>
References: <20120111132914.GB958@game.jcrosoft.org>
In-Reply-To: <20120111132914.GB958@game.jcrosoft.org>
Content-Language: en-US
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: [PATCH 0/6] code size reduction for xloader
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: barebox-bounces@lists.infradead.org 
> [mailto:barebox-bounces@lists.infradead.org] On Behalf Of 
> Jean-Christophe PLAGNIOL-VILLARD
> Sent: Wednesday, January 11, 2012 6:59 PM
> To: barebox@lists.infradead.org
> Subject: [PATCH 0/6] code size reduction for xloader
> 
> HI,
> 
> 	this patch serie wrok on disble non needed code to 
> optimize the size
> 	of barebox specially in the case of non interactive 
> version suc as
> 	xloader for TI and late bootstrap for at91
> 
> 	tis will also iclude a sync of the kconfig need for this

I manually pulled all the patches in this series against latest
"master" except (didn't seemed related to size reduction):
      kconfig: sync to linux 3.2-rc4

I encountered compile error in this patch:
    param: add config to disable it

  CC      drivers/mtd/core.o
drivers/mtd/core.c: In function 'add_mtd_device':
drivers/mtd/core.c:230:2: warning: implicit declaration of function 'IS_ENABLED'
drivers/mtd/core.c:230:17: error: 'CONFIG_PARAMETER' undeclared (first use in this function)
drivers/mtd/core.c:230:17: note: each undeclared identifier is reported only once for each function it appears in
make[2]: *** [drivers/mtd/core.o] Error 1
make[1]: *** [drivers/mtd] Error 2
make: *** [drivers] Error 2

I am not sure whether IS_ENABLED is implemented in yet-to-be merged patch;
so, continued testing after applying the temp patch at bottom of
this mail.

With the modification, tested all working fine on OMAP3EVM.

I had to apply these patches from the series I posted yesterday,
otherwise, barebox doesn't boot:
   [PATCH 3/5] ARM omap3evm: Allow building first stage
   [PATCH 4/5] ARM omap3evm: Enable HSMMC device

You may add Tested-by: Sanjeev Premi<premi@ti.com> to these:
      banner: add config to disable it
      uncompress: add config to disable it
      filetype: add config to disable it
      driver: switch driver_d name to const char*

~sanjeev

From bbe95b44869d63d991bb26a9098c5f123f3c757e Mon Sep 17 00:00:00 2001
From: Sanjeev Premi <premi@ti.com>
Date: Thu, 12 Jan 2012 20:16:15 +0530
Subject: [PATCH] temp: fix failure due to a portion of prev patch


Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 drivers/mtd/core.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index ccc5c26..dc0d5b0 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -227,6 +227,7 @@ int add_mtd_device(struct mtd_info *mtd, char *devname)
        mtd->cdev.dev = &mtd->class_dev;
        mtd->cdev.mtd = mtd;

+#ifdef CONFIG_PARAMETER
        if (IS_ENABLED(CONFIG_PARAMETER)) {
                sprintf(str, "%u", mtd->size);
                dev_add_param_fixed(&mtd->class_dev, "size", str);
@@ -237,7 +238,7 @@ int add_mtd_device(struct mtd_info *mtd, char *devname)
                sprintf(str, "%u", mtd->oobsize);
                dev_add_param_fixed(&mtd->class_dev, "oobsize", str);
        }
-
+#endif
        devfs_create(&mtd->cdev);

        list_for_each_entry(hook, &mtd_register_hooks, hook)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
