Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from canuck.infradead.org ([2001:4978:20e::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RNKFq-00057L-G5
 for barebox@lists.infradead.org; Mon, 07 Nov 2011 08:08:30 +0000
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RNKFp-0001fe-4z
 for barebox@lists.infradead.org; Mon, 07 Nov 2011 08:08:30 +0000
Date: Mon, 7 Nov 2011 09:08:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111107080824.GR16886@pengutronix.de>
References: <1320564048-3908-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1320564048-3908-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [RFC] mount: Fix the printing of device name
To: franck.jullien@gmail.com
Cc: barebox@lists.infradead.org

Hi Franck,

On Sun, Nov 06, 2011 at 08:20:48AM +0100, franck.jullien@gmail.com wrote:
> From: Franck Jullien <franck.jullien@gmail.com>
> 
> Mount without argument always print a "none" as device name mounted
> because entry->parent_device is always NULL.
> 
> The problem is the mount function in fs/fs.c. parent_device is
> initialized to NULL and never updated. With this patch, parent_device
> is set with the mounted device name.
> 
> Moreover, the mount function has been modified to print the device name
> plus device id using the dev_name function.
> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
> ---
>  commands/mount.c |    2 +-
>  fs/fs.c          |   11 +++++++++++
>  2 files changed, 12 insertions(+), 1 deletions(-)
> 
> diff --git a/commands/mount.c b/commands/mount.c
> index 52d1700..7cefdbe 100644
> --- a/commands/mount.c
> +++ b/commands/mount.c
> @@ -40,7 +40,7 @@ static int do_mount(struct command *cmdtp, int argc, char *argv[])
>  			entry = mtab_next_entry(entry);
>  			if (entry) {
>  				printf("%s on %s type %s\n",
> -					entry->parent_device ? entry->parent_device->name : "none",
> +					entry->parent_device ? dev_name(entry->parent_device) : "none",
>  					entry->path,
>  					entry->dev->name);
>  			}
> diff --git a/fs/fs.c b/fs/fs.c
> index 51a7411..529ff53 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -31,6 +31,7 @@
>  #include <init.h>
>  #include <module.h>
>  #include <libbb.h>
> +#include <libgen.h>
>  
>  void *read_file(const char *filename, size_t *size)
>  {
> @@ -741,6 +742,7 @@ int mount(const char *device, const char *fsname, const char *_path)
>  	struct device_d *dev, *parent_device = NULL;
>  	int ret;
>  	char *path = normalise_path(_path);
> +	char *devname, *par;
>  
>  	errno = 0;
>  
> @@ -804,6 +806,15 @@ int mount(const char *device, const char *fsname, const char *_path)
>  		goto out2;
>  	}
>  
> +	devname = basename((char *)device);
> +
> +	if (strchr(devname, '.')) {
> +		par = strchr(devname, '.');
> +		*par = 0;
> +	}
> +
> +	parent_device = get_device_by_name(devname);

This does not look good. First of all basename returns (a part of) the
same string which is passed to it, so you modify a const char * here.
Then you try to find the device name by using the first part before the
'.', but the name of the file under /dev/ does not necessarily match the
device name.

I think what you should do here is to see whether the first part of
*device matches "/dev/" and then use cdev_open on the second part. The
struct cdev from cdev_open contains the device pointer you are looking
for.

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
