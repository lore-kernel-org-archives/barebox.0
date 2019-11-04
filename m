Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXST-0002xE-QD
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 08:11:31 +0000
Date: Mon, 4 Nov 2019 09:11:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191104081128.rq3wgisjpseprri2@pengutronix.de>
References: <20191030111640.12367-1-l.stach@pengutronix.de>
 <20191030111640.12367-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030111640.12367-2-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 2/2] ARM: zii-imx8mq-dev: disable GPU and VPU power
 domain in DT
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 30, 2019 at 12:16:40PM +0100, Lucas Stach wrote:
> In Barebox we don't have a driver for the PMIC powering those domains,
> so we get a "probe permanently deferred" warning for those domains. As
> they are not actually used in Barebox, we can just disable them to get
> rid of the warning.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/dts/imx8mq-zii-ultra.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/dts/imx8mq-zii-ultra.dtsi b/arch/arm/dts/imx8mq-zii-ultra.dtsi
> index 6180f21ab0a4..bde70901a331 100644
> --- a/arch/arm/dts/imx8mq-zii-ultra.dtsi
> +++ b/arch/arm/dts/imx8mq-zii-ultra.dtsi
> @@ -56,6 +56,14 @@
>  	};
>  };
>  
> +&pgc_gpu {
> +	status = "disabled";
> +};
> +
> +&pgc_vpu {
> +	status = "disabled";
> +};

This breaks GPU support under Linux when started with the barebox device
tree, right? Is there a better solution?

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
