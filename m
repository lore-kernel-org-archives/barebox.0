Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1duYOG-0008Pk-10
 for barebox@lists.infradead.org; Wed, 20 Sep 2017 06:21:46 +0000
Date: Wed, 20 Sep 2017 08:21:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170920062122.gxn7guk4fqc5y7pl@pengutronix.de>
References: <20170919114907.17916-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170919114907.17916-1-mkl@pengutronix.de>
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
Subject: Re: [PATCH] bootm: bootm_open_initrd_uimage(): propagate error if
 initrd verification fails
To: Marc Kleine-Budde <mkl@pengutronix.de>, g@pengutronix.de
Cc: barebox@lists.infradead.org

On Tue, Sep 19, 2017 at 01:49:07PM +0200, Marc Kleine-Budde wrote:
> If the verification of an initrd inside of an uImage fails an error message is
> printed but the error is not propagated. Although this is not security
> relevant, as the verification is currently only a CRC32 check, the error should
> be returned. This patch fixes the problem.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

Applied, thanks

Sascha

> ---
>  common/bootm.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 81625d9157cc..eebaa799f548 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -173,6 +173,7 @@ static int bootm_open_initrd_uimage(struct image_data *data)
>  			if (ret) {
>  				printf("Checking data crc failed with %s\n",
>  					strerror(-ret));
> +				return ret;
>  			}
>  		}
>  		uimage_print_contents(data->initrd);
> -- 
> 2.11.0
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
