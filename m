Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PnQhZ-0001Yh-OZ
	for barebox@lists.infradead.org; Thu, 10 Feb 2011 07:12:30 +0000
Date: Thu, 10 Feb 2011 08:12:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110210071225.GP9041@pengutronix.de>
References: <1297308720-26390-1-git-send-email-plagnioj@jcrosoft.com>
	<1297308720-26390-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1297308720-26390-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/4] driver/memmap: fix generic_memmap_rw and
	generic_memmap_ro
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 10, 2011 at 04:31:59AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> we check before the RW access for generic_memmap_ro instead of
> generic_memmap_rw
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/base/driver.c |    5 +++--
>  1 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index ff92e44..bd7464e 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -223,8 +223,6 @@ int generic_memmap_ro(struct cdev *cdev, void **map, int flags)
>  	if (!cdev->dev)
>  		return -EINVAL;
>  
> -	if (flags & PROT_WRITE)
> -		return -EACCES;
>  	*map = (void *)cdev->dev->map_base;
>  	return 0;
>  }
> @@ -234,6 +232,9 @@ int generic_memmap_rw(struct cdev *cdev, void **map, int flags)
>  	if (!cdev->dev)
>  		return -EINVAL;
>  
> +	if (flags & PROT_WRITE)
> +		return -EACCES;
> +

So instead of allowing write access in the read/write function we now
allow it in the readonly function? I'm afraid I don't understand this.

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
