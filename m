Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2fji-0000Qo-VI
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 19:03:03 +0000
Date: Mon, 3 Aug 2020 21:02:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200803190259.GA31536@pengutronix.de>
References: <20200802104041.780304-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200802104041.780304-1-ahmad@a3f.at>
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
Subject: Re: [PATCH] ARM: socfpga: achilles: remove unused barebox,bootstate
 node
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, Xogium <contact@xogium.me>

On Sun, Aug 02, 2020 at 12:40:41PM +0200, Ahmad Fatoum wrote:
> We use barebox,state as compatible for the state node. The
> barebox,bootstate node serves no purpose with current code base and is
> just confusing. Drop it.
> 
> Reported-by: Xogium <contact@xogium.me>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/dts/socfpga_arria10_achilles.dts | 18 ------------------
>  1 file changed, 18 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
> index 2fce0114c89a..6071dbfb49ee 100644
> --- a/arch/arm/dts/socfpga_arria10_achilles.dts
> +++ b/arch/arm/dts/socfpga_arria10_achilles.dts
> @@ -106,24 +106,6 @@
>  			};
>  		};
>  	};
> -
> -	bootstate: bootstate {
> -		compatible = "barebox,bootstate";
> -		backend-type = "state"; // or "nv", or "efivar"
> -		backend = <&state>;
> -
> -		system0 {
> -			default_attempts = <3>;
> -		};
> -
> -		system1 {
> -			default_attempts = <3>;
> -		};
> -
> -		factory {
> -			default_attempts = <3>;
> -		};
> -	};
>  };
>  
>  &{/soc/clkmgr@ffd04000/clocks/osc1} {
> -- 
> 2.27.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
