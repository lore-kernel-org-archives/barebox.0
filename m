Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k82FH-0000Ly-6s
 for barebox@lists.infradead.org; Tue, 18 Aug 2020 14:05:48 +0000
References: <20200818093448.13732-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <11c0d855-ce89-ff3c-c6d2-0596cc694276@pengutronix.de>
Date: Tue, 18 Aug 2020 16:05:44 +0200
MIME-Version: 1.0
In-Reply-To: <20200818093448.13732-1-o.rempel@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v1] serial: imx: set CTS if DT property "linux,
 rs485-enabled-at-boot-time" is present
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org, david@protonic.nl

Hi,

On 8/18/20 11:34 AM, Oleksij Rempel wrote:
> If we have a "linux,rs485-enabled-at-boot-time" DT property, we should
> set CTS flag as soon as possible to the active state. This will set an
> RS485 transmitter to receive-enable mode. Otherwise the RS485 bus will
> be blocked for entire system boot time and other bus participants will
> not be able to communicate.

(Sidenote: I'd have expected this to be done by pin configuration)

> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/serial/serial_imx.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
> index c0265fc2d7..fe9b15d8b5 100644
> --- a/drivers/serial/serial_imx.c
> +++ b/drivers/serial/serial_imx.c
> @@ -60,6 +60,7 @@ struct imx_serial_priv {
>  	void __iomem *regs;
>  	struct clk *clk;
>  	struct imx_serial_devtype_data *devtype;
> +	bool rs485_mode;
>  };
>  
>  static int imx_serial_reffreq(struct imx_serial_priv *priv)
> @@ -107,6 +108,9 @@ static int imx_serial_init_port(struct console_device *cdev)
>  
>  	/* Enable FIFOs */
>  	val = readl(regs + UCR2);
> +	/* set CTS to not block RS485 bus */
> +	if (priv->rs485_mode)
> +		val |= UCR2_CTS;

jfyi: UCR2_CTS is without effect when UCR2_CTSC=1.
UCR2_CTSC is 0 on POR though, so I think it should be ok
to only touch UCR2_CTS 

>  	val |= UCR2_SRST | UCR2_RXEN | UCR2_TXEN;
>  	writel(val, regs + UCR2);
>  
> @@ -252,6 +256,10 @@ static int imx_serial_probe(struct device_d *dev)
>  	if (of_property_read_bool(dev->device_node, "fsl,dte-mode"))
>  		priv->dte_mode = 1;
>  
> +	if (of_property_read_bool(dev->device_node,
> +				  "linux,rs485-enabled-at-boot-time"))
> +		priv->rs485_mode = 1;

You'll need to check rs485-rts-active-low absence as well, or you break
slave communication for other boards.

> +
>  	imx_serial_init_port(cdev);
>  
>  	/* Enable UART */
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
