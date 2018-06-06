Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQSyj-000352-Vc
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 07:35:35 +0000
Date: Wed, 6 Jun 2018 09:35:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180606073521.cvhgpq3zwij6k6za@pengutronix.de>
References: <20180605181021.10467-1-o.rempel@pengutronix.de>
 <20180605181021.10467-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180605181021.10467-3-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 3/3] MIPS: dts: dpt-module: add Atheros ART partition
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 05, 2018 at 08:10:21PM +0200, Oleksij Rempel wrote:
> and define it as source of MAC address for ag71xx driver
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/mips/dts/ar9331-dptechnics-dpt-module.dts | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
> index 2c38bbc09..2adf02438 100644
> --- a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
> +++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
> @@ -11,6 +11,12 @@
>  			compatible = "barebox,environment";
>  			device-path = &spiflash, "partname:barebox-environment";
>  		};
> +
> +		art@0 {
> +			compatible = "qca,art-ar9331", "qca,art";
> +			device-path = &spiflash, "partname:art";
> +			barebox,provide-mac-address = <&mac0>;
> +		};
>  	};
>  
>  	leds {
> @@ -30,6 +36,11 @@
>  		label = "barebox-environment";
>  		reg = <0x80000 0x10000>;
>  	};
> +
> +	partition@7f0000 {
> +		label = "art";
> +		reg = <0x7f0000 0x10000>;
> +	};

Please create a phandle for this partition and point directly to the
partition instead of the flash device.

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
