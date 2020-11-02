Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZVcD-0001m2-2K
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 08:55:01 +0000
Date: Mon, 2 Nov 2020 09:54:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201102085459.GT26805@pengutronix.de>
References: <20201030073157.11093-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201030073157.11093-1-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: dts: CCMX51: Increase kernel partition size
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Oct 30, 2020 at 10:31:57AM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/dts/imx51-ccxmx51.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/dts/imx51-ccxmx51.dts b/arch/arm/dts/imx51-ccxmx51.dts
> index efe5dbf63..4aa32e4c8 100644
> --- a/arch/arm/dts/imx51-ccxmx51.dts
> +++ b/arch/arm/dts/imx51-ccxmx51.dts
> @@ -31,11 +31,11 @@
>  
>  	partition@c0000 {
>  		label = "kernel";
> -		reg = <0xc0000 0x340000>;
> +		reg = <0xc0000 0x400000>;
>  	};

This is an incompatible change to the partitioning, so a board won't
boot anymore when only barebox is updated. If you do the step, wouldn't
it make sense to increase the kernel partition a bit more to be future
proof for a bit longer?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
