Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0ziB-0006G6-Ae
 for barebox@lists.infradead.org; Mon, 13 Aug 2012 18:49:59 +0000
Date: Mon, 13 Aug 2012 20:49:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120813184957.GR1451@pengutronix.de>
References: <20120812180535.GK6271@game.jcrosoft.org>
 <1344795043-13815-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344795043-13815-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/4] fs/mount: add autodetection type support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Aug 12, 2012 at 08:10:40PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> if NULL is pass as type mount will try to autodetect the filesystem type
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  fs/Kconfig   |    5 +++++
>  fs/fs.c      |   28 ++++++++++++++++++++++++++++
>  include/fs.h |    5 +++++
>  3 files changed, 38 insertions(+)
> 
> diff --git a/fs/Kconfig b/fs/Kconfig
> index b75820f..4c66543 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -1,6 +1,11 @@
>  
>  menu "Filesystem support            "
>  
> +config FS
> +	bool
> +	default y
> +	select FILETYPE
> +
>  config FS_AUTOMOUNT
>  	bool
>  
> diff --git a/fs/fs.c b/fs/fs.c
> index 0b376a5..e80d907 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -954,6 +954,28 @@ int register_fs_driver(struct fs_driver_d *fsdrv)
>  }
>  EXPORT_SYMBOL(register_fs_driver);
>  
> +static const char * detect_fs(const char *filename)

static const char *detect_fs(const char *filename)

please

> +{
> +	enum filetype type = file_name_detect_type(filename);
> +	struct driver_d *drv;
> +	struct fs_driver_d *fdrv;
> +
> +	if (type == filetype_unknown)
> +		return NULL;
> +
> +	for_each_driver(drv) {
> +		if (drv->bus != &fs_bus)
> +			continue;
> +
> +		fdrv = drv_to_fs_driver(drv);
> +
> +		if(type == fdrv->type)

if (

> +			return drv->name;
> +	}
> +
> +	return NULL;
> +}
> +
>  /*
>   * Mount a device to a directory.
>   * We do this by registering a new device on which the filesystem
> @@ -985,6 +1007,12 @@ int mount(const char *device, const char *fsname, const char *_path)
>  		}
>  	}
>  
> +	if (!fsname)
> +		fsname = detect_fs(device);
> +
> +	if (!fsname)
> +		return -ENOENT;

Should be -ENODEV I think. At least that's what Linux mount returns in
this case.

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
