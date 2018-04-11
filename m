Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6BMa-0005Me-Ra
 for barebox@lists.infradead.org; Wed, 11 Apr 2018 08:44:22 +0000
Date: Wed, 11 Apr 2018 10:44:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180411084409.b2nb2qz6aptr4an2@pengutronix.de>
References: <20180410234038.4513-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180410234038.4513-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] i.MX: vf610-twr: Print '>' when DEBUG_LL is enabled
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 10, 2018 at 04:40:37PM -0700, Andrey Smirnov wrote:
> Majority of others boards prints '>' as soon as DEBUG_LL related
> configuration is done, so do so for VF610-TWR as well.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/freescale-vf610-twr/lowlevel.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/freescale-vf610-twr/lowlevel.c b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
> index a043dd421..65956fdd2 100644
> --- a/arch/arm/boards/freescale-vf610-twr/lowlevel.c
> +++ b/arch/arm/boards/freescale-vf610-twr/lowlevel.c
> @@ -22,6 +22,8 @@ static inline void setup_uart(void)
>  	writel(0, iomuxbase + 0x0380);
>  
>  	vf610_uart_setup_ll();
> +
> +	putc_ll('>');
>  }
>  
>  extern char __dtb_vf610_twr_start[];
> -- 
> 2.14.3
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
