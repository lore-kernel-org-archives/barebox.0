Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WeIwv-0006Vv-E1
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 06:52:31 +0000
Date: Sun, 27 Apr 2014 08:52:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140427065207.GI5858@pengutronix.de>
References: <1398580187-4950-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398580187-4950-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] video: imx-ipu-v3: Fix ipu_ch_param_zero()
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Apr 27, 2014 at 10:29:47AM +0400, Alexander Shiyan wrote:
> Sizeof(*p) returns the size of the pointer, not the size of the
> struct ipu_ch_param.

p is of type struct ipu_ch_param, so sizeof(*p) correctly returns the
size of struct ipu_ch_param.

Sascha

> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  drivers/video/imx-ipu-v3/imx-ipu-v3.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/video/imx-ipu-v3/imx-ipu-v3.h b/drivers/video/imx-ipu-v3/imx-ipu-v3.h
> index 7c48a7c..39255be 100644
> --- a/drivers/video/imx-ipu-v3/imx-ipu-v3.h
> +++ b/drivers/video/imx-ipu-v3/imx-ipu-v3.h
> @@ -241,7 +241,7 @@ static inline void ipu_ch_param_zero(struct ipu_ch_param __iomem *p)
>  	int i;
>  	void __iomem *base = p;
>  
> -	for (i = 0; i < sizeof(*p) / sizeof(u32); i++)
> +	for (i = 0; i < sizeof(struct ipu_ch_param) / sizeof(u32); i++)
>  		ipuwritel("chp", 0, base + i * sizeof(u32));
>  }
>  
> -- 
> 1.8.3.2
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
