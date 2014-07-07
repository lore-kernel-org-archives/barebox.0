Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X42N7-0006ZS-DX
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 06:25:54 +0000
Date: Mon, 7 Jul 2014 08:25:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140707062530.GD23235@pengutronix.de>
References: <1402056115-1789-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1402056115-1789-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: dts: Remove skeleton.dtsi
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Jun 06, 2014 at 04:01:55PM +0400, Alexander Shiyan wrote:
> Reuse basic "skeleton.dtsi" template for some DTS targets.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/dts/dm365.dtsi      |  2 +-
>  arch/arm/dts/imx25.dtsi      |  1 -
>  arch/arm/dts/k1879hb1ya.dtsi |  2 +-
>  arch/arm/dts/skeleton.dtsi   | 13 -------------
>  arch/arm/dts/socfpga.dtsi    |  2 +-
>  arch/arm/dts/tegra30.dtsi    |  2 +-
>  6 files changed, 4 insertions(+), 18 deletions(-)
>  delete mode 100644 arch/arm/dts/skeleton.dtsi
> 
> diff --git a/arch/arm/dts/dm365.dtsi b/arch/arm/dts/dm365.dtsi
> index ea69007..c571908 100644
> --- a/arch/arm/dts/dm365.dtsi
> +++ b/arch/arm/dts/dm365.dtsi
> @@ -1,4 +1,4 @@
> -#include "skeleton.dtsi"
> +#include <arm/skeleton.dtsi>
>  
>  / {
>  	soc {
> diff --git a/arch/arm/dts/imx25.dtsi b/arch/arm/dts/imx25.dtsi
> index 13fbcc4..082429a 100644
> --- a/arch/arm/dts/imx25.dtsi
> +++ b/arch/arm/dts/imx25.dtsi
> @@ -9,7 +9,6 @@
>   * http://www.gnu.org/copyleft/gpl.html
>   */
>  
> -#include "skeleton.dtsi"
>  #include <arm/imx25.dtsi>
>  
>  / {
> diff --git a/arch/arm/dts/k1879hb1ya.dtsi b/arch/arm/dts/k1879hb1ya.dtsi
> index 83ba7fb..87a0faa 100644
> --- a/arch/arm/dts/k1879hb1ya.dtsi
> +++ b/arch/arm/dts/k1879hb1ya.dtsi
> @@ -1,4 +1,4 @@
> -#include "skeleton.dtsi"
> +#include <arm/skeleton.dtsi>
>  
>  / {
>  	soc {
> diff --git a/arch/arm/dts/skeleton.dtsi b/arch/arm/dts/skeleton.dtsi
> deleted file mode 100644
> index b41d241..0000000
> --- a/arch/arm/dts/skeleton.dtsi
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -/*
> - * Skeleton device tree; the bare minimum needed to boot; just include and
> - * add a compatible value.  The bootloader will typically populate the memory
> - * node.
> - */
> -
> -/ {
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -	chosen { };
> -	aliases { };
> -	memory { device_type = "memory"; reg = <0 0>; };
> -};
> diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
> index 3368b45..192b6de 100644
> --- a/arch/arm/dts/socfpga.dtsi
> +++ b/arch/arm/dts/socfpga.dtsi
> @@ -15,7 +15,7 @@
>   * along with this program.  If not, see <http://www.gnu.org/licenses/>.
>   */
>  
> -/include/ "skeleton.dtsi"
> +#include <arm/skeleton.dtsi>
>  
>  / {
>  	#address-cells = <1>;
> diff --git a/arch/arm/dts/tegra30.dtsi b/arch/arm/dts/tegra30.dtsi
> index 19a84e9..023db9f 100644
> --- a/arch/arm/dts/tegra30.dtsi
> +++ b/arch/arm/dts/tegra30.dtsi
> @@ -3,7 +3,7 @@
>  #include <dt-bindings/pinctrl/pinctrl-tegra.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  
> -#include "skeleton.dtsi"
> +#include <arm/skeleton.dtsi>
>  
>  / {
>  	compatible = "nvidia,tegra30";
> -- 
> 1.8.5.5
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
