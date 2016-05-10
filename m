Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b00lK-0000xu-EA
 for barebox@lists.infradead.org; Tue, 10 May 2016 06:03:19 +0000
Date: Tue, 10 May 2016 08:02:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160510060255.GV19714@pengutronix.de>
References: <1462543770-4619-1-git-send-email-andrew.smirnov@gmail.com>
 <1462543770-4619-6-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1462543770-4619-6-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 5/6] aiodev: Add TEMPMON driver
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, May 06, 2016 at 07:09:29AM -0700, Andrey Smirnov wrote:
> Port TEMPMON driver from U-Boot
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/dts/imx6qdl.dtsi    |  14 +++
>  arch/arm/dts/imx6sx.dtsi     |  14 +++
>  drivers/aiodev/Kconfig       |   8 ++
>  drivers/aiodev/Makefile      |   1 +
>  drivers/aiodev/imx_thermal.c | 239 +++++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 276 insertions(+)
>  create mode 100644 drivers/aiodev/imx_thermal.c
> 
> diff --git a/arch/arm/dts/imx6qdl.dtsi b/arch/arm/dts/imx6qdl.dtsi
> index 828be9c..0deafbc 100644
> --- a/arch/arm/dts/imx6qdl.dtsi
> +++ b/arch/arm/dts/imx6qdl.dtsi
> @@ -8,3 +8,17 @@
>  		ipu0 = &ipu1;
>  	};
>  };
> +
> +&ocotp {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	analog1: ocotp_ana1@34 {

@38?

> +		reg = <0x38 0x4>;
> +	};
> +};
> +
> +&tempmon {
> +	nvmem-cells = <&analog1>;
> +	nvmem-cell-names = "ocotp-ana1";
> +};

Why not use the existing binding? The nvmem binding may be better, but I
think we should not introduce new bindings without need.

> +	node = of_parse_phandle(dev->device_node, "fsl,tempmon", 0);
> +	if (!node) {
> +		ret = -EINVAL;
> +		dev_err(dev, "Failed to parse fsl,tempmon\n");
> +		goto free_calibration_data;
> +	}
> +
> +	anatop = of_find_device_by_node(node);
> +	if (!anatop) {
> +		ret = -EINVAL;
> +		dev_err(dev, "No device corresponds to fsl,tempmon\n");
> +		goto free_calibration_data;
> +	}

syscon_base_lookup_by_phandle() instead of
of_parse_phandle()/of_find_device_by_node()?

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
