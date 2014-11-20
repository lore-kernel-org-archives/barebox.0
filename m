Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XrSBg-0005iE-1U
 for barebox@lists.infradead.org; Thu, 20 Nov 2014 13:54:21 +0000
Date: Thu, 20 Nov 2014 14:53:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141120135357.GN30369@pengutronix.de>
References: <1416408341-31321-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1416408341-31321-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] mtd: ubi: get_bad_peb_limit from mtd master
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 19, 2014 at 03:45:41PM +0100, Jan Weitzel wrote:
> Like mentioned in the coment we need the size of the entire flash chip.
> Check if a master exists and take his size.
> 
> Otherwise the limit will be too small and kernel prints:
> UBI warning: print_rsvd_warning: cannot reserve enough PEBs for \
> bad PEB handling, reserved 19, need 20
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
>  drivers/mtd/ubi/build.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
> index 7b1c332..b02880e 100644
> --- a/drivers/mtd/ubi/build.c
> +++ b/drivers/mtd/ubi/build.c
> @@ -237,7 +237,11 @@ static int get_bad_peb_limit(const struct ubi_device *ubi, int max_beb_per1024)
>  	 * is that all the bad eraseblocks of the chip are in
>  	 * the MTD partition we are attaching (ubi->mtd).
>  	 */
> -	device_size = ubi->mtd->size;
> +	if (ubi->mtd->master)
> +		device_size = ubi->mtd->master->size;
> +	else
> +		device_size = ubi->mtd->size;
> +
>  	device_pebs = mtd_div_by_eb(device_size, ubi->mtd);
>  	limit = mult_frac(device_pebs, max_beb_per1024, 1024);
>  
> -- 
> 1.9.1
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
