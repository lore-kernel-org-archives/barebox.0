Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R662P-0003cD-2W
	for barebox@lists.infradead.org; Tue, 20 Sep 2011 19:31:26 +0000
Date: Tue, 20 Sep 2011 21:31:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110920193121.GA31404@pengutronix.de>
References: <560194a56016e7562eb1e50f68a58ff6f6e069a7.1316086518.git.fercerpav@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <560194a56016e7562eb1e50f68a58ff6f6e069a7.1316086518.git.fercerpav@gmail.com>
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
Subject: Re: [PATCH 1/2] m25p80: add additional sanity checks for erasure
To: Paul Fertser <fercerpav@gmail.com>
Cc: barebox@lists.infradead.org, Franck JULLIEN <elec4fun@gmail.com>

On Thu, Sep 15, 2011 at 03:27:36PM +0400, Paul Fertser wrote:
> This guards for the cases where the initial offset or byte count is
> not aligned with regard to erase block size, thus making it impossible
> for erase to do any harm to the nearby sectors.

I'm unsure about this one. The other flash drivers allow to erase areas
which are not eraseblock aligned. Maybe we should instead add a
cdev->erasesize field. Then we can add this check in the generic code
and fix this for all drivers. (I know this won't work for some nor
flashes which have eraseblocks of different size, but this special
case could still be checked in the driver)

Sascha


> 
> Signed-off-by: Paul Fertser <fercerpav@gmail.com>
> ---
>  drivers/nor/m25p80.c |    4 +++-
>  1 files changed, 3 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
> index e6fe75e..6f650a5 100644
> --- a/drivers/nor/m25p80.c
> +++ b/drivers/nor/m25p80.c
> @@ -206,7 +206,9 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, unsigned long offse
>  		__func__, "at", (long long)offset, (long long)count);
>  
>  	/* sanity checks */
> -	if (offset + count > flash->size)
> +	if ((offset + count > flash->size) ||
> +	    (offset % flash->erasesize) ||
> +	    ((offset+count) % flash->erasesize))
>  		return -EINVAL;
>  
>  	addr = offset;
> -- 
> 1.7.2.3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
