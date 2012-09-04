Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8oN0-0000QH-01
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 08:20:26 +0000
Date: Tue, 4 Sep 2012 10:20:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120904082024.GP26594@pengutronix.de>
References: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
 <1346672765-16162-3-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346672765-16162-3-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 02/10] drivers/nor/m25p80: add MEMGETINFO ioctl
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2012 at 01:45:57PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  drivers/nor/m25p80.c |   26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
> index 61f2195..1722e0a 100644
> --- a/drivers/nor/m25p80.c
> +++ b/drivers/nor/m25p80.c
> @@ -20,6 +20,7 @@
>  #include <common.h>
>  #include <init.h>
>  #include <driver.h>
> +#include <ioctl.h>
>  #include <spi/spi.h>
>  #include <spi/flash.h>
>  #include <xfuncs.h>
> @@ -690,9 +691,34 @@ static const struct spi_device_id *jedec_probe(struct spi_device *spi)
>  	return NULL;
>  }
>  
> +static int m25p80_ioctl(struct cdev *cdev, int request, void *buf)
> +{
> +	struct m25p *flash = cdev->priv;
> +	struct flash_info *info = flash->info;
> +	struct mtd_info_user *user = buf;
> +
> +	switch (request) {
> +	case MEMGETINFO:
> +		memset(user, 0, sizeof(*user));
> +		user->type = MTD_NORFLASH;
> +		user->flags = MTD_CAP_NORFLASH;
> +		user->size = flash->size;
> +		user->erasesize = info->sector_size;
> +		user->writesize = 1;
> +		user->oobsize = 0;
> +		/* The below fields are obsolete */
> +		user->ecctype = -1;
> +		user->eccsize = 0;
> +		return 0;
> +	}
> +
> +	return -EINVAL;
> +}
> +
>  static struct file_operations m25p80_ops = {
>  	.read   = m25p80_read,
>  	.write  = m25p80_write,
> +	.ioctl  = m25p80_ioctl,

Rather than doing this you should simply fill in cdev->mtd. See how the
cfi flash driver does this. Then it will also work for partitions on a
m25p80.

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
