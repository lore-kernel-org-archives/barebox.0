Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bbiJl-0001QN-9p
 for barebox@lists.infradead.org; Mon, 22 Aug 2016 06:02:42 +0000
Date: Mon, 22 Aug 2016 08:02:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160822060219.GB20657@pengutronix.de>
References: <1471810717-1371-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1471810717-1371-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH 1/2] scripts: imx-usb-loader: enable DCD 16-bit write for
 hdr v1
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Sun, Aug 21, 2016 at 10:18:36PM +0200, Alexander Kurz wrote:
> Do some cleanup which enables DCDv1 16 bit write access as side effect.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  scripts/imx/imx-usb-loader.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index 1732497..9f25ca6 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -889,16 +889,11 @@ static int write_dcd_table_old(const struct imx_flash_header *hdr,
>  
>  		switch (type) {
>  		case 1:
> -			if (verbose > 1)
> -				printf("type=%08x *0x%08x = 0x%08x\n", type, addr, val);
> -			err = write_memory(addr, val, 1);
> -			if (err < 0)
> -				return err;
> -			break;
> +		case 2:
>  		case 4:
>  			if (verbose > 1)
>  				printf("type=%08x *0x%08x = 0x%08x\n", type, addr, val);
> -			err = write_memory(addr, val, 4);
> +			err = write_memory(addr, val, type);
>  			if (err < 0)
>  				return err;
>  			break;
> -- 
> 2.1.4
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
