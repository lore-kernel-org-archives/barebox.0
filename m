Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7YmV-0003OO-F7
 for barebox@lists.infradead.org; Mon, 17 Aug 2020 06:38:08 +0000
Date: Mon, 17 Aug 2020 08:38:02 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200817063802.GA1479756@ravnborg.org>
References: <20200817045332.28099-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200817045332.28099-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/3] video: add simple, transparent, bridge implementation
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Mon, Aug 17, 2020 at 06:53:30AM +0200, Ahmad Fatoum wrote:
> This enables support for simple bridges, i.e. bridges that can be
> used without initialization.
> 
> This is e.g. the case with bridges that have persistent configuration,
> the kernel has a full-fledged driver to configure the bridge and persist it.
> 
> The bootloader then needs to do nothing more. Having such a transparent
> bridge allows reusing the kernel device tree without changing the graph
> specification.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Looking at this with my kernel hat on.

The kernel already have a simple-bridge.yaml binding, so another name
for the binding would be preferred - to avoid the name clash.
Naming it barebox,simple-bridge would be fine IMO.

And in the kernel we today only accept bindings in DT schema format
(.yaml). Maybe do the same in the barebox and convert this binding to DT
Schema format while at it.

	Sam

> ---
>  .../video/display/bridge/simple-bridge.txt    | 41 +++++++++++++
>  drivers/video/Kconfig                         |  7 +++
>  drivers/video/Makefile                        |  2 +-
>  drivers/video/simple-bridge.c                 | 57 +++++++++++++++++++
>  4 files changed, 106 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/video/display/bridge/simple-bridge.txt
>  create mode 100644 drivers/video/simple-bridge.c
> 
> diff --git a/Documentation/devicetree/bindings/video/display/bridge/simple-bridge.txt b/Documentation/devicetree/bindings/video/display/bridge/simple-bridge.txt
> new file mode 100644
> index 000000000000..b1485569d992
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/video/display/bridge/simple-bridge.txt
> @@ -0,0 +1,41 @@
> +Simple display bridge
> +=====================
> +
> +bridge node
> +-----------
> +
> +Required properties:
> +	- compatible : "barebox,simple-bridge".
> +	- #address-cells : must be <1>
> +	- #size-cells : must be <0>
> +	- video interfaces: Device node should contain two video interface port
> +			    nodes for input and output according to [1].
> +			    - port@0 - bridge input
> +			    - port@1 - bridge output
> +
> +[1]: dts/Bindings/media/video-interfaces.txt
> +
> +
> +Example:
> +	fpga-display-bridge@0 {
> +		compatible = "barebox,simple-bridge";
> +		reg = <0>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@0 {
> +			reg = <0>;
> +
> +			ch0_lcd_in: endpoint {
> +				remote-endpoint = <&parallel_display_out>;
> +			};
> +		};
> +
> +		port@1 {
> +			reg = <1>;
> +
> +			ch0_out: endpoint {
> +				remote-endpoint = <&disp1_in>;
> +			};
> +		};
> +	};
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index a26bace176a1..b153978492a9 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -161,4 +161,11 @@ config DRIVER_VIDEO_SIMPLE_PANEL
>  	  Linux Kernel implementation this one is able to understand display-timings
>  	  nodes so that it's not necessary to keep a list of all known displays
>  	  with their corresponding timings in barebox.
> +
> +config DRIVER_VIDEO_SIMPLE_BRIDGE
> +	bool "Simple bridge support"
> +	depends on OFTREE
> +	help
> +	  This enables support for simple bridges, i.e. bridges that can be
> +	  used without initialization.
>  endif
> diff --git a/drivers/video/Makefile b/drivers/video/Makefile
> index 01fabe880920..2296c14ccc73 100644
> --- a/drivers/video/Makefile
> +++ b/drivers/video/Makefile
> @@ -24,4 +24,4 @@ obj-$(CONFIG_DRIVER_VIDEO_IMX_IPUV3) += imx-ipu-v3/
>  obj-$(CONFIG_DRIVER_VIDEO_EFI_GOP) += efi_gop.o
>  obj-$(CONFIG_DRIVER_VIDEO_FB_SSD1307) += ssd1307fb.o
>  obj-$(CONFIG_BACKLIGHT_RAVE_SP)	+= rave-sp-backlight.o
> -
> +obj-$(CONFIG_DRIVER_VIDEO_SIMPLE_BRIDGE)	+= simple-bridge.o
> diff --git a/drivers/video/simple-bridge.c b/drivers/video/simple-bridge.c
> new file mode 100644
> index 000000000000..0d6621df7b0c
> --- /dev/null
> +++ b/drivers/video/simple-bridge.c
> @@ -0,0 +1,57 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// SPDX-FileCopyright-Text: 2020 Pengutronix, Ahmad Fatoum <a.fatoum@pengutronix.de>
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <video/vpl.h>
> +#include <of_graph.h>
> +
> +enum { BRIDGE_INPUT_PORT = 0, BRIDGE_OUTPUT_PORT = 1 };
> +
> +struct simple_bridge_priv {
> +	struct device_d	*dev;
> +	struct vpl	vpl;
> +};
> +
> +static int simple_bridge_ioctl(struct vpl *vpl, unsigned int port,
> +			       unsigned int cmd, void *ptr)
> +{
> +	struct simple_bridge_priv *priv = container_of(vpl, struct simple_bridge_priv, vpl);
> +
> +	dev_dbg(priv->dev, "ioctl(port=%d, cmd=0x%08x)\n", port, cmd);
> +
> +	return vpl_ioctl(vpl, BRIDGE_OUTPUT_PORT, cmd, ptr);
> +}
> +
> +static int simple_bridge_probe(struct device_d *dev)
> +{
> +	struct simple_bridge_priv *priv;
> +	struct device_node *port;
> +
> +	priv = xzalloc(sizeof(*priv));
> +	priv->dev = dev;
> +
> +	port = of_graph_get_port_by_id(dev->device_node, BRIDGE_OUTPUT_PORT);
> +	if (!port) {
> +		dev_err(dev, "No remote panel found\n");
> +		return -ENODEV;
> +	}
> +
> +	priv->vpl.node = dev->device_node;
> +	priv->vpl.ioctl = simple_bridge_ioctl;
> +
> +	return vpl_register(&priv->vpl);
> +}
> +
> +static const struct of_device_id __maybe_unused simple_bridge_match[] = {
> +	{ .compatible = "barebox,simple-bridge" },
> +	{ /* sentinel */ },
> +};
> +
> +static struct driver_d simple_bridge_driver = {
> +	.name		= "simple-bridge",
> +	.probe		= simple_bridge_probe,
> +	.of_compatible	= DRV_OF_COMPAT(simple_bridge_match),
> +};
> +device_platform_driver(simple_bridge_driver);
> -- 
> 2.28.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
