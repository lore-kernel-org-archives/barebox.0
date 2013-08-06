Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6eYW-0001RE-3l
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 10:31:57 +0000
Date: Tue, 6 Aug 2013 12:31:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130806103133.GB26614@pengutronix.de>
References: <20130806064229.GY26614@pengutronix.de>
 <1375783954.988213993@f361.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1375783954.988213993@f361.mail.ru>
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
Subject: Re: v2013.08.0
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Aug 06, 2013 at 02:12:35PM +0400, Alexander Shiyan wrote:
> > Finally we have an August release!
> > 
> > Here are the patches that went in between this and the last release:
> 
> Here is a first result of compile:
> 
> drivers/built-in.o: In function `ubi_volume_notify':
> :(.text.ubi_volume_notify+0x14): undefined reference to `ubi_do_get_device_info'
> :(.text.ubi_volume_notify+0x24): undefined reference to `ubi_do_get_volume_info'
> make: *** [barebox] Error 1

Fortunately this is in current master and not the release. The following
should fix this. It the patch adding ubi_volume_notify depended on
another patch which I have locally and I didn't notice that.

Sascha

8<----------------------------------------------------------------

From 68c50d4cabaf2d8fa2fc6d450c36150c8f07998c Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 6 Aug 2013 12:28:45 +0200
Subject: [PATCH] mtd: ubi: remove calls to nonexisting functions

We do not have ubi_do_get_volume_info and ubi_do_get_device_info
and do not need them yet, so remove calls to these functions to fix
compilation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/build.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index c4bffae..202b046 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -75,11 +75,6 @@ struct ubi_device *ubi_devices[UBI_MAX_DEVICES];
  */
 int ubi_volume_notify(struct ubi_device *ubi, struct ubi_volume *vol, int ntype)
 {
-	struct ubi_notification nt;
-
-	ubi_do_get_device_info(ubi, &nt.di);
-	ubi_do_get_volume_info(ubi, vol, &nt.vi);
-
 #ifdef CONFIG_MTD_UBI_FASTMAP
 	switch (ntype) {
 	case UBI_VOLUME_ADDED:
-- 
1.8.4.rc1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
