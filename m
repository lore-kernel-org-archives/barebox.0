Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vu0jK-0004Qy-Mg
 for barebox@lists.infradead.org; Fri, 20 Dec 2013 14:07:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Vu0iy-00029s-Ui
 for barebox@lists.infradead.org; Fri, 20 Dec 2013 15:06:44 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Vu0iy-0003n9-T4
 for barebox@lists.infradead.org; Fri, 20 Dec 2013 15:06:44 +0100
Date: Fri, 20 Dec 2013 15:06:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131220140644.GA24559@pengutronix.de>
References: <1387466483-16353-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1387466483-16353-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] mtd: fix wrong return values in cdev read
To: barebox@lists.infradead.org

On Thu, Dec 19, 2013 at 04:21:23PM +0100, Sascha Hauer wrote:
> mtd->read returns the number of bitflips as positive numbers.
> Instead of returning these numbers Return -EUCLEAN when the bitflip
> threshold has been reached, 0 otherwise.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mtd/core.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index f63b10e..57b0fad 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -74,12 +74,11 @@ static ssize_t mtd_op_read(struct cdev *cdev, void* buf, size_t count,
>  			offset, count);
>  
>  	ret = mtd_read(mtd, offset, count, &retlen, buf);
> -
> -	if(ret) {
> -		printf("err %d\n", ret);
> +	if (ret < 0)
>  		return ret;
> -	}
> -	return retlen;
> +	if (mtd->ecc_strength == 0)
> +		return 0;	/* device lacks ecc */
> +	return ret >= mtd->bitflip_threshold ? -EUCLEAN : 0;

This is not correct. We have to return retlen, not 0. Will resend along
with some other fixes.

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
