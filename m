Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0XWC-0002U9-JO
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 12:43:45 +0000
Date: Sun, 12 Aug 2012 14:43:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120812124343.GK1451@pengutronix.de>
References: <20120812114647.GF6271@game.jcrosoft.org>
 <1344772179-13591-1-git-send-email-plagnioj@jcrosoft.com>
 <1344772179-13591-4-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344772179-13591-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 4/4] command/mount: add autodetection support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Aug 12, 2012 at 01:49:39PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  .../boards/crystalfontz-cfa10036/env/init/automount  |    2 +-
>  arch/arm/boards/mioa701/env/bin/sdcard_override      |    2 +-
>  arch/arm/boards/pcm049/env/bin/nand_bootstrap        |    2 +-
>  arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap |    2 +-
>  commands/mount.c                                     |   18 +++++++++++++++---
>  5 files changed, 19 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/automount b/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
> index fe67e55..668775d 100644
> --- a/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
> +++ b/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
> @@ -6,4 +6,4 @@ if [ "$1" = menu ]; then
>  fi
>  
>  mkdir -p /mnt/disk0.1
> -automount -d /mnt/disk0.1 '[ -e /dev/disk0.1 ] && mount /dev/disk0.1 fat /mnt/disk0.1'
> +automount -d /mnt/disk0.1 '[ -e /dev/disk0.1 ] && mount /dev/disk0.1 /mnt/disk0.1'
> diff --git a/arch/arm/boards/mioa701/env/bin/sdcard_override b/arch/arm/boards/mioa701/env/bin/sdcard_override
> index 4b2ad51..ab83534 100644
> --- a/arch/arm/boards/mioa701/env/bin/sdcard_override
> +++ b/arch/arm/boards/mioa701/env/bin/sdcard_override
> @@ -8,7 +8,7 @@
>  mci0.probe=1
>  if [ $mci0.probe = 1 ]; then
>  	mkdir /sdcard
> -	mount /dev/disk0.0 fat /sdcard
> +	mount /dev/disk0.0 /sdcard
>  	if [ -f /sdcard/barebox.env ]; then
>  		loadenv /sdcard/barebox.env /env.sd
>  		/env.sd/bin/init
> diff --git a/arch/arm/boards/pcm049/env/bin/nand_bootstrap b/arch/arm/boards/pcm049/env/bin/nand_bootstrap
> index acd00dc..f8873fa 100644
> --- a/arch/arm/boards/pcm049/env/bin/nand_bootstrap
> +++ b/arch/arm/boards/pcm049/env/bin/nand_bootstrap
> @@ -4,7 +4,7 @@ echo "copying barebox to nand..."
>  mci0.probe=1
>  mkdir mnt
>  
> -mount /dev/disk0.0 fat /mnt
> +mount /dev/disk0.0 /mnt
>  if [ $? != 0 ]; then
>  	echo "failed to mount mmc card"
>  	exit 1
> diff --git a/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap b/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
> index acd00dc..f8873fa 100644
> --- a/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
> +++ b/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
> @@ -4,7 +4,7 @@ echo "copying barebox to nand..."
>  mci0.probe=1
>  mkdir mnt
>  
> -mount /dev/disk0.0 fat /mnt
> +mount /dev/disk0.0 /mnt
>  if [ $? != 0 ]; then
>  	echo "failed to mount mmc card"
>  	exit 1
> diff --git a/commands/mount.c b/commands/mount.c
> index b32faef..ab49b6c 100644
> --- a/commands/mount.c
> +++ b/commands/mount.c
> @@ -29,11 +29,14 @@
>  #include <command.h>
>  #include <fs.h>
>  #include <errno.h>
> +#include <getopt.h>
>  
>  static int do_mount(int argc, char *argv[])
>  {
> +	int opt;
>  	int ret = 0;
>  	struct fs_device_d *fsdev;
> +	char *type = NULL;
>  
>  	if (argc == 1) {
>  		for_each_fs_device(fsdev) {
> @@ -45,10 +48,18 @@ static int do_mount(int argc, char *argv[])
>  		return 0;
>  	}
>  
> -	if (argc != 4)
> +	while ((opt = getopt(argc, argv, "t:")) > 0) {
> +		switch (opt) {
> +		case 'f':

'f'?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
