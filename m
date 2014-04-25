Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wdfmm-0005Yu-Fa
 for barebox@lists.infradead.org; Fri, 25 Apr 2014 13:03:25 +0000
Message-ID: <1398430923.4657.34.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 25 Apr 2014 15:02:03 +0200
In-Reply-To: <1398426868-30285-3-git-send-email-c.hemp@phytec.de>
References: <1398426868-30285-1-git-send-email-c.hemp@phytec.de>
 <1398426868-30285-3-git-send-email-c.hemp@phytec.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 3/4] dts: imx6qdl: add ethernet pin group for mii
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

Am Freitag, den 25.04.2014, 13:54 +0200 schrieb Christian Hemp:
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
>  arch/arm/dts/imx6qdl-pingrp.h |   12 ++++++++++++
>  1 files changed, 12 insertions(+), 0 deletions(-)
> 
The pingrp.h file will go away soon, as it never made it's way into a
released upstream kernel. Please rework your dts to work without this.

> diff --git a/arch/arm/dts/imx6qdl-pingrp.h b/arch/arm/dts/imx6qdl-pingrp.h
> index 082f0df..97d76dc 100644
> --- a/arch/arm/dts/imx6qdl-pingrp.h
> +++ b/arch/arm/dts/imx6qdl-pingrp.h
> @@ -97,6 +97,18 @@
>  	MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1		0x1b0b0	\
>  	MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN		0x1b0b0
>  
> +#define MX6QDL_ENET_PINGRP5 \
> +	MX6QDL_ENET_PINGRP4 \
> +	MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK		0x1b0b0 \
> +	MX6QDL_PAD_KEY_COL0__ENET_RX_DATA3		0x1b0b0 \
> +	MX6QDL_PAD_KEY_ROW0__ENET_TX_DATA3		0x1b0b0 \
> +	MX6QDL_PAD_KEY_ROW1__ENET_COL			0x1b0b0 \
> +	MX6QDL_PAD_KEY_COL2__ENET_RX_DATA2		0x1b0b0 \
> +	MX6QDL_PAD_KEY_ROW2__ENET_TX_DATA2		0x1b0b0 \
> +	MX6QDL_PAD_KEY_COL3__ENET_CRS			0x1b0b0 \
> +	MX6QDL_PAD_GPIO_18__ENET_RX_CLK			0x1b0b0 \
> +	MX6QDL_PAD_GPIO_19__ENET_TX_ER			0x1b0b0
> +
>  #define MX6QDL_ENET_PINGRP1_GPIO6	MX6QDL_ENET_PINGRP1 \
>  	MX6QDL_PAD_GPIO_6__ENET_IRQ	0x000b1
>  

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
