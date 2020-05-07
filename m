Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeEQ-00020P-A3
 for barebox@lists.infradead.org; Thu, 07 May 2020 10:58:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>) id 1jWeEL-0002UD-Sh
 for barebox@lists.infradead.org; Thu, 07 May 2020 12:58:17 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>) id 1jWeEL-0004Ph-JT
 for barebox@lists.infradead.org; Thu, 07 May 2020 12:58:17 +0200
Date: Thu, 7 May 2020 12:58:17 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20200507105817.x5bp3japrychqzab@pengutronix.de>
References: <20200429153559.15086-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429153559.15086-1-rhi@pengutronix.de>
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
Subject: Re: [PATCH] ARM: dts: vexpress-v2p-ca9: adapt fixed NOR flash
 partition setup
To: Barebox Mailing List <barebox@lists.infradead.org>

Any comments here, Sascha?

 - Roland

On Wed, Apr 29, 2020 at 05:35:59PM +0200, Roland Hieber wrote:
> Upstream DTS commit 62a5017bf825c9e4d317 ("ARM: dts: vexpress: specify
> AFS partition") [1] introduced an empty node at /smb@4000000
> /motherboard/flash@0,00000000/partitions, which is preferred by the OF
> partitions parser over the single partition nodes. In the same commit,
> upstream set the compatible to "arm,arm-firmware-suite", which barebox
> does not know about. Adapt our fixed partition setup accordingly by
> wrapping all partitions in an extra "partitions" node with the correct
> compatible.
> 
> [1]: https://git.kernel.org/linus/62a5017bf825c9e4d3176eb975a01c329a9f36
> 
> Fixes: 6940ba22c66ac1c71350 ("dts: update to v5.3-rc1")
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
>  arch/arm/dts/vexpress-v2p-ca9.dts | 26 +++++++++++++++-----------
>  1 file changed, 15 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/dts/vexpress-v2p-ca9.dts b/arch/arm/dts/vexpress-v2p-ca9.dts
> index d0975330f205..b13c114f0cb0 100644
> --- a/arch/arm/dts/vexpress-v2p-ca9.dts
> +++ b/arch/arm/dts/vexpress-v2p-ca9.dts
> @@ -16,19 +16,23 @@ 			flash@0,00000000 {
>  				#address-cells = <1>;
>  				#size-cells = <1>;
>  
> -				partition@0 {
> -					label = "barebox";
> -					reg = <0x0 0x80000>;
> -				};
> +				partitions {
> +					compatible = "fixed-partitions";
>  
> -				barebox_env: partition@80000 {
> -					label = "barebox-environment";
> -					reg = <0x80000 0x80000>;
> -				};
> +					partition@0 {
> +						label = "barebox";
> +						reg = <0x0 0x80000>;
> +					};
> +
> +					barebox_env: partition@80000 {
> +						label = "barebox-environment";
> +						reg = <0x80000 0x80000>;
> +					};
>  
> -				state_storage: partition@100000 {
> -					label = "barebox-state";
> -					reg = <0x100000 0x100000>;
> +					state_storage: partition@100000 {
> +						label = "barebox-state";
> +						reg = <0x100000 0x100000>;
> +					};
>  				};
>  			};
>  		};
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
