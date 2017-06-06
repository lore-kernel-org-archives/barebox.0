Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dI7pX-0002aQ-Ht
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 06:19:05 +0000
Date: Tue, 6 Jun 2017 08:18:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170606061840.3ygatsyaswtpqebz@pengutronix.de>
References: <20170602131808.18781-1-m.grzeschik@pengutronix.de>
 <20170602131808.18781-4-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170602131808.18781-4-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH v2 3/3] ARM: i.MX6: add Technexion Pico Hobbit support
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 02, 2017 at 03:18:08PM +0200, Michael Grzeschik wrote:
> This adds support support for the i.MX6UL Technexion Pico Hobbit.
> The board comes with different amounts of RAM. We create one image
> for the 256MB and one for the 512MB variant.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
> v1 -> v2: - removed already prepared clock setup
> 
> +
> +&usdhc1 {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0xc0000>;
> +	};
> +
> +	environment_usdhc1: partition@c0000 {
> +		label = "barebox-environment";
> +		reg = <0xc0000 0x40000>;
> +	};
> +};
> +
> +&fec2 {
> +	/*
> +	  There are two possible ways to start the phy. Let the hardware
> +	  reset it properly or reset it a second time in software.
> +	  Unfortunetly the phy needs some microseconds after reset to
> +	  settle down. As there is no property like
> +	  phy-post-reset-delay, we better leave the reset to the
> +	  hardware.
> +	*/
> +	/delete-property/ phy-reset-gpios;
> +	/delete-property/ phy-reset-duration;

Recent Kernels support phy-reset-post-delay. Can we just add support for
it in barebox aswell?

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
