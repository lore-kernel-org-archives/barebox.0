Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQNMj-00009j-I5
 for barebox@lists.infradead.org; Wed, 19 Mar 2014 20:45:34 +0000
Date: Wed, 19 Mar 2014 21:45:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140319204509.GC17250@pengutronix.de>
References: <1395228537-28677-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1395228537-28677-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] [FOR SQUASH] ARM: virt2real.dts: use labels without
 whitespaces
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 19, 2014 at 03:28:57PM +0400, Antony Pavlov wrote:
> see comment in the maillist
>   http://lists.infradead.org/pipermail/barebox/2014-March/018333.html
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Squashed into the commit, thanks

Sascha

> ---
>  arch/arm/dts/virt2real.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/dts/virt2real.dts b/arch/arm/dts/virt2real.dts
> index 0e2210a..09aec1f 100644
> --- a/arch/arm/dts/virt2real.dts
> +++ b/arch/arm/dts/virt2real.dts
> @@ -23,12 +23,12 @@
>  		compatible = "gpio-leds";
>  
>  		green_led {
> -			label = "green led";
> +			label = "green-led";
>  			gpios = <&gpio 73 0>;
>  		};
>  
>  		red_led {
> -			label = "red led";
> +			label = "red-led";
>  			gpios = <&gpio 74 0>;
>  		};
>  	};
> -- 
> 1.9.0
> 
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
