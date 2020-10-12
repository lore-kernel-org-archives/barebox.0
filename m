Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRyw6-0003hR-QR
 for barebox@lists.infradead.org; Mon, 12 Oct 2020 14:36:27 +0000
Date: Mon, 12 Oct 2020 16:36:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201012143624.GF11648@pengutronix.de>
References: <20201012062619.20400-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012062619.20400-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 01/12] sandbox: dts: retire skeleton.dtsi
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 12, 2020 at 08:26:08AM +0200, Ahmad Fatoum wrote:
> Follow up commits will flesh out the sandbox.dts and make most of what's
> in the skeleton.dtsi redundant. Merge the .dtsi with the .dts to have
> all the code at one place.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2: no changes
> ---
>  arch/sandbox/dts/sandbox.dts   | 16 ++++++++++++++--
>  arch/sandbox/dts/skeleton.dtsi | 13 -------------
>  2 files changed, 14 insertions(+), 15 deletions(-)
>  delete mode 100644 arch/sandbox/dts/skeleton.dtsi

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
> index 4576e873d9cb..b3327837a38a 100644
> --- a/arch/sandbox/dts/sandbox.dts
> +++ b/arch/sandbox/dts/sandbox.dts
> @@ -1,8 +1,20 @@
>  /dts-v1/;
>  
> -#include "skeleton.dtsi"
> -
>  / {
>  	model = "Sandbox";
>  	compatible = "barebox,sandbox";
> +
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +	};
> +
> +	chosen {
> +	};
> +
> +	memory {
> +		device_type = "memory";
> +		reg = <0 0 0 0>;
> +	};
>  };
> diff --git a/arch/sandbox/dts/skeleton.dtsi b/arch/sandbox/dts/skeleton.dtsi
> deleted file mode 100644
> index 8ba7663eb5c0..000000000000
> --- a/arch/sandbox/dts/skeleton.dtsi
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -/*
> - * Skeleton device tree; the bare minimum needed to boot; just include and
> - * add a compatible value.  The bootloader will typically populate the memory
> - * node.
> - */
> -
> -/ {
> -	#address-cells = <2>;
> -	#size-cells = <2>;
> -	chosen { };
> -	aliases { };
> -	memory { device_type = "memory"; reg = <0 0 0 0>; };
> -};
> -- 
> 2.28.0
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
