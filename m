Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8Zw-0006Op-45
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 06:42:21 +0000
Date: Fri, 7 Jun 2019 08:42:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190607064218.brtfzkas63z3r2ro@pengutronix.de>
References: <20190605083320.16130-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605083320.16130-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH] fixup! ARM: Initial OP-TEE support
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 05, 2019 at 10:33:21AM +0200, Rouven Czerwinski wrote:
> ---
>  arch/arm/lib32/bootm.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
> index a653374e5f..180624445d 100644
> --- a/arch/arm/lib32/bootm.c
> +++ b/arch/arm/lib32/bootm.c
> @@ -185,14 +185,13 @@ static int bootm_load_tee_from_file(struct image_data *data)
>  	if (read_full(fd, (void *)data->tee_res->start, hdr.init_size) < 0) {
>  		pr_err("%s", strerror(errno));
>  		ret = -errno;
> -		goto out_res;
> +		release_region(data->tee_res);
> +		goto out;
>  	}
>  
>  	printf("Read optee file to %pa, size 0x%08x\n", (void *)data->tee_res->start, hdr.init_size);
>  
>  	ret = 0;
> -out_res:
> -	release_region(data->tee_res);
>  out:
>  	close(fd);
>  
> -- 
> 2.21.0
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
