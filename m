Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zw3v5-0002qS-CG
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 08:04:48 +0000
Date: Tue, 10 Nov 2015 09:04:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151110080423.GE8526@pengutronix.de>
References: <1447065171-31571-1-git-send-email-pmamonov@gmail.com>
 <1447094995.4553.50.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447094995.4553.50.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] common: filetype: do not redetect MBR-type devices as a
 FAT-type
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Peter Mamonov <pmamonov@gmail.com>

On Mon, Nov 09, 2015 at 06:49:53PM +0000, Trent Piepho wrote:
> On Mon, 2015-11-09 at 13:32 +0300, Peter Mamonov wrote:
> > Deleted pieces of code detect MBR-containig device as a FAT-type device,
> > if it's first partition contains a FAT filesystem. This behaviour enabled one
> > to mount the FAT FS which is either directly on the device (disk0) or on
> > the first partition (disk0.0) using the same command:
> >     mount /dev/disk0 /fat
> > However, the desired behaviour can be reached with a:
> >     mount /dev/disk0 /fat || mount /dev/disk0.0 /fat || echo "Mounting failed"
> 
> The in flash env for omap is found by mounting a FAT filesystem and
> reading an env file from it.  The code that does this uses the disk as
> the device, rather than the partition.  Which I thought was odd and
> wondered why/if that worked correctly....
> 
> Anyway, this change would break that code.  I suspect than instead of
> coding the disk0 || disk0.0 method it could just mount disk0.0.  Because
> the code does this (edited):
> 
> partname = asprintf("/dev/%s.0", diskdev);
> ret = stat(partname, &s);
> if (ret) {
>   pr_err("Failed to load environment: no device '%s'\n", diskdev);
>   return 0;
> }
> ret = mount(diskdev, "fat", "/boot", NULL);

This is really odd. The code first tests if the partition exists and
tries to mount the whole disk afterwards. git blame points to:

commit be322768f04603df371c9c1f08b9621690dd74c6
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Sat Aug 24 12:48:50 2013 +0200

    ARM: omap: Allow to set mmc devname used for booting

I think what we should do here is in the following patch. With this
Trents patch can be applied as-is. Thanks for noting, Peter.

Sascha

---------------------------8<---------------------------

From 98fb34f2aa271138eab28a36aec733fe6572339c Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 Nov 2015 08:58:16 +0100
Subject: [PATCH] ARM: omap: Use correct device to mount on /boot

The current code tests if a partition (i.e. disk0.0) exists and instead
of mounting boot from this partition it uses the whole device (disk0).
This only works because the the FAT code accepts a MBR as input and
automatically skips it.

Let the code use the partition to mount /boot instead as it was
intended. We don't have to stat() the partition device, since this
error will be caught by mount() anyway, so remove the unnecessary
stat().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/omap_generic.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 071a1bf..4e26c6b 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -111,7 +111,6 @@ const char *omap_get_bootmmc_devname(void)
 #define ENV_PATH "/boot/barebox.env"
 static int omap_env_init(void)
 {
-	struct stat s;
 	char *partname;
 	const char *diskdev;
 	int ret;
@@ -128,25 +127,19 @@ static int omap_env_init(void)
 
 	partname = asprintf("/dev/%s.0", diskdev);
 
-	ret = stat(partname, &s);
-
-	free(partname);
-
-	if (ret) {
-		pr_err("Failed to load environment: no device '%s'\n", diskdev);
-		return 0;
-	}
-
 	mkdir("/boot", 0666);
-	ret = mount(diskdev, "fat", "/boot", NULL);
+	ret = mount(partname, "fat", "/boot", NULL);
 	if (ret) {
-		pr_err("Failed to load environment: mount %s failed (%d)\n", diskdev, ret);
-		return 0;
+		pr_err("Failed to load environment: mount %s failed (%d)\n", partname, ret);
+		goto out;
 	}
 
-	pr_debug("Loading default env from %s on device %s\n", ENV_PATH, diskdev);
+	pr_debug("Loading default env from %s on device %s\n", ENV_PATH, partname);
 	default_environment_path_set(ENV_PATH);
 
+out:
+	free(partname);
+
 	return 0;
 }
 late_initcall(omap_env_init);
-- 
2.6.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
