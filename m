Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVYqI-0001T0-Dx
 for barebox@lists.infradead.org; Tue, 28 May 2019 09:56:28 +0000
Date: Tue, 28 May 2019 11:56:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190528095616.dlzxgutxlgkvuvxk@pengutronix.de>
References: <20190527201853.18853-1-andrew.smirnov@gmail.com>
 <20190527201853.18853-6-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527201853.18853-6-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 5/7] fs: Add a driver to access U-Boot environment
 variables
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Cory Tusar <cory.tusar@zii.aero>, barebox@lists.infradead.org

On Mon, May 27, 2019 at 01:18:51PM -0700, Andrey Smirnov wrote:
> Add a driver working on top of ubootvar device and exposing U-Boot
> environment variable data as files.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
> ---
>  fs/Kconfig      |   8 +
>  fs/Makefile     |   1 +
>  fs/ubootvarfs.c | 499 ++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 508 insertions(+)
>  create mode 100644 fs/ubootvarfs.c
> 
> diff --git a/fs/Kconfig b/fs/Kconfig
> index e3a95321c..adf281a5b 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -118,4 +118,12 @@ config FS_RATP
>  	  This enables support for transferring files over RATP. A host can
>  	  export a directory which can then be mounted under barebox.
>  
> +config FS_UBOOTVARFS
> +	bool
> +	depends on UBOOTVAR
> +	prompt "U-Boot environment variable filesystem support"
> +	help
> +	  This filesystem driver provides access to U-Boot environment
> +	  variables.
> +
>  endmenu
> diff --git a/fs/Makefile b/fs/Makefile
> index ac3e6a03a..9889a6507 100644
> --- a/fs/Makefile
> +++ b/fs/Makefile
> @@ -18,3 +18,4 @@ obj-$(CONFIG_FS_SMHFS) += smhfs.o
>  obj-$(CONFIG_FS_PSTORE) += pstore/
>  obj-$(CONFIG_FS_SQUASHFS) += squashfs/
>  obj-$(CONFIG_FS_RATP)	+= ratpfs.o
> +obj-$(CONFIG_FS_UBOOTVARFS) += ubootvarfs.o
> diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
> new file mode 100644
> index 000000000..8de97b2de
> --- /dev/null
> +++ b/fs/ubootvarfs.c
> @@ -0,0 +1,499 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Zodiac Inflight Innovations
> + */
> +
> +#define pr_fmt(fmt) "ubootvarfs: " fmt
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <malloc.h>
> +#include <fs.h>
> +#include <string.h>
> +#include <errno.h>
> +#include <linux/stat.h>
> +#include <xfuncs.h>
> +#include <fcntl.h>
> +#include <efi.h>
> +#include <wchar.h>
> +#include <linux/err.h>
> +#include <linux/ctype.h>
> +
> +/**
> + * Some theory of operation:
> + *
> + * U-Boot environment variable data is expected to be presented as a
> + * single blob containing an arbitrary number "<key>=<value>\0" paris

s/paris/pairs/

> + * without any other auxiliary information (accomplished by ubootvar
> + * driver)
> + *
> + * Filesystem driver code in this file parses above data an creates a
> + * linked list of all of the "variables" found (see @ubootvarfs_var to
> + * what information is recorded).
> + *
> + * With that in place reading or writing file data becomes as trivial
> + * as looking up a variable in the linked list by name and then
> + * memcpy()-ing bytes from its value region.
> + *
> + * The only moderately tricky part is resising a given file/variable

s/resising/resizing/

> + * since, given the underlying data format, it requires us to move all
> + * of the key/value data that comes after the given file/variable as
> + * well as to adjust all of the cached offsets stored in varaible

s/varaible/variable/

> + * linked list. See ubootvarfs_adjust() for the implementation
> + * details.

Wouldn't it be easier and more straight forward to serialize and
deserialize the U-Boot environment as a whole rather than trying to
adjust an in-memory representation each time the env is changed?

> +static int ubootvarfs_create(struct inode *dir, struct dentry *dentry,
> +			     umode_t mode)
> +{
> +	struct super_block *sb = dir->i_sb;
> +	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
> +	struct ubootvarfs_data *data = fsdev->dev.priv;
> +	struct inode *inode;
> +	struct ubootvarfs_var *var;
> +	size_t len = strlen(dentry->name);
> +	/*
> +	 * We'll be adding <varname>=\0\0 to the end of our data, so
> +	 * we need to make sure there's enough room for it. Note that
> +	 * + 3 is to accoutn for '=', and two '\0' from above

s/accoutn/account/

> +static void ubootvarfs_remove(struct device_d *dev)
> +{
> +	struct ubootvarfs_data *data = dev->priv;
> +
> +	flush(data->fd);
> +	close(data->fd);
> +	free(data);
> +}

So the environment is written only when the FS is unmounted. We might
want to have some other method to trigger writing. I don't know how this
method may look yet though.

Sasch

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
