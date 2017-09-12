Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dreRF-0001M0-Ih
 for barebox@lists.infradead.org; Tue, 12 Sep 2017 06:12:57 +0000
Date: Tue, 12 Sep 2017 08:12:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170912061227.daieyqjguzvlf57m@pengutronix.de>
References: <20170827070230.13382-1-linux@rempel-privat.de>
 <20170827070230.13382-3-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170827070230.13382-3-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 02/10] MIPS: dts: ar9331: update compatible for mac0
 node
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Sun, Aug 27, 2017 at 09:02:22AM +0200, Oleksij Rempel wrote:
> MACs on same chip are too different to have one common compatible

I see. Please put the driver change into this patch for bisectability.

Sascha

> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  arch/mips/dts/ar9331.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
> index 109af8664..b4b8b766b 100644
> --- a/arch/mips/dts/ar9331.dtsi
> +++ b/arch/mips/dts/ar9331.dtsi
> @@ -1,7 +1,7 @@
>  / {
>  	ahb {
>  		mac0: mac@19000000 {
> -			compatible = "qca,ar7100-gmac", "qca,ar9331-gmac";
> +			compatible = "qca,ar9331-ge0";
>  			reg = <0x18070000 0x00000100>,
>  			      <0x19000000 0x01000000>;
>  			reg-names = "gmac", "ge0";
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
