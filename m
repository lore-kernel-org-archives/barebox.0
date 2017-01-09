Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQVDs-00051r-R4
 for barebox@lists.infradead.org; Mon, 09 Jan 2017 08:22:34 +0000
Date: Mon, 9 Jan 2017 09:22:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170109082211.jfiocffgectfcug5@pengutronix.de>
References: <20170106084443.21426-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170106084443.21426-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] ARM: socfpga: dtsi: remove fpgamgr+sysmgr entry
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 06, 2017 at 09:44:43AM +0100, Steffen Trumtrar wrote:
> The fpgamgr and sysmgr bindings are now in the upstream dtsi.
> Remove them.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/dts/socfpga.dtsi | 11 -----------
>  1 file changed, 11 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
> index 5b141c23914c..274c491804e0 100644
> --- a/arch/arm/dts/socfpga.dtsi
> +++ b/arch/arm/dts/socfpga.dtsi
> @@ -25,17 +25,6 @@
>  			clock-names = "qspi_clk";
>  			status = "disabled";
>  		};
> -
> -		fpgamgr@ff706000 {
> -			compatible = "altr,socfpga-fpga-mgr";
> -			reg = <0xff706000 0x1000>,
> -			      <0xffb90000 0x1000>;
> -		};
> -
> -		system_mgr: sysmgr@ffd08000 {
> -			compatible = "altr,sys-mgr", "syscon";
> -			reg = <0xffd08000 0x4000>;
> -		};
>         };
>  };
>  &osc2 {
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
