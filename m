Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b80au-0007hq-KT
 for barebox@lists.infradead.org; Wed, 01 Jun 2016 07:29:37 +0000
Date: Wed, 1 Jun 2016 09:29:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160601072914.GL31666@pengutronix.de>
References: <1464685057-4267-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464685057-4267-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] ARM: mba53: include barebox TQMa53 overlay DT
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, May 31, 2016 at 10:57:37AM +0200, Lucas Stach wrote:
> The barebox specific properties have not been applied as
> the TQMa53 overlay DT has not been included. Fix this.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---

Applied, thanks

Sascha

>  arch/arm/dts/imx53-mba53.dts   | 2 ++
>  arch/arm/dts/imx53-tqma53.dtsi | 3 ---
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/dts/imx53-mba53.dts b/arch/arm/dts/imx53-mba53.dts
> index 28f463c451f4..6998e4c0cb2d 100644
> --- a/arch/arm/dts/imx53-mba53.dts
> +++ b/arch/arm/dts/imx53-mba53.dts
> @@ -11,6 +11,8 @@
>   */
>  
>  #include <arm/imx53-mba53.dts>
> +#include "imx53-tqma53.dtsi"
> +#include "imx53.dtsi"
>  
>  / {
>  	chosen {
> diff --git a/arch/arm/dts/imx53-tqma53.dtsi b/arch/arm/dts/imx53-tqma53.dtsi
> index 6880f2c27fb0..860fb64df2b9 100644
> --- a/arch/arm/dts/imx53-tqma53.dtsi
> +++ b/arch/arm/dts/imx53-tqma53.dtsi
> @@ -10,9 +10,6 @@
>   * http://www.gnu.org/copyleft/gpl.html
>   */
>  
> -#include "imx53.dtsi"
> -#include <arm/imx53-tqma53.dtsi>
> -
>  / {
>  	chosen {
>  		environment-emmc {
> -- 
> 2.8.1
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
