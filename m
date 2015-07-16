Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFcKg-0004Ev-Tt
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 06:07:47 +0000
Date: Thu, 16 Jul 2015 08:07:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150716060723.GX18700@pengutronix.de>
References: <1436890599-31412-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436890599-31412-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/5] ARM: socfpga: socrates: add qspi partitions
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 14, 2015 at 06:16:35PM +0200, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/dts/socfpga_cyclone5_socrates.dts | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm/dts/socfpga_cyclone5_socrates.dts b/arch/arm/dts/socfpga_cyclone5_socrates.dts
> index 125ad1b8502d..ccb940584b5b 100644
> --- a/arch/arm/dts/socfpga_cyclone5_socrates.dts
> +++ b/arch/arm/dts/socfpga_cyclone5_socrates.dts
> @@ -80,5 +80,20 @@
>  		cdns,tsd2d-ns = <50>;
>  		cdns,tchsh-ns = <4>;
>  		cdns,tslch-ns = <4>;
> +
> +		partition@0 {
> +			label = "prebootloader0";
> +			reg = <0x00000 0x10000>;
> +		};

Why prebootloader0? There's only one or not?

> +
> +		partition@1 {
> +			label = "barebox0";
> +			reg = <0x40000 0x80000>;
> +		};

Same here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
