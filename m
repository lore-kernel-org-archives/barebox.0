Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQBRH-00044g-Aj
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 10:10:33 +0000
Date: Mon, 1 Feb 2016 11:10:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160201101007.GA4118@pengutronix.de>
References: <1454306234-2299-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1454306234-2299-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [RFC 1/2] misc: Add MAC address mapper "driver"
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 31, 2016 at 09:57:13PM -0800, Andrey Smirnov wrote:
> Add Barebox specific device tree provisions to allow specifying MAC
> addresses for network interfaces via device tree.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  .../bindings/barebox/barebox,mac-address-map.rst   |  27 ++++
>  drivers/misc/Makefile                              |   1 +
>  drivers/misc/mac-address-map.c                     | 142 +++++++++++++++++++++
>  3 files changed, 170 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/barebox/barebox,mac-address-map.rst
>  create mode 100644 drivers/misc/mac-address-map.c
> 
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,mac-address-map.rst b/Documentation/devicetree/bindings/barebox/barebox,mac-address-map.rst
> new file mode 100644
> index 0000000..1ac3062
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/barebox/barebox,mac-address-map.rst
> @@ -0,0 +1,27 @@
> +barebox MAC address map
> +=======================
> +
> +This driver allows to specify each network adapter's source of MAC address from the devicetree.
> +
> +Required properties:
> +
> +* ``compatible``: should be ``barebox,mac-address-map``
> +
> +Besides ``compatible`` property the node is expected to contain a
> +number of children nodes each specifing a single "MAC source ->
> +interface" mapping.
> +
> +Child node's required properties:
> +* ``network-interface``: phandle corresponding to network interface
> +* ``mac-location``: a pair of phandle to 'cdev' containing MAC address
> +  and offset withing that 'cdev'
> +
> +Example::
> +
> +  mac-address-map {
> +	compatible = "barebox,mac-address-map";
> +	nic@0 {
> +		network-interface = <&fec>;
> +		mac-location = <&ocotp 0x88>;
> +	};
> +  };

I wonder if the correct way to do this wouldn't be nvmem, see
Documentation/devicetree/bindings/nvmem/nvmem.txt in the Kernel.
This would mandate a binding like:

	ocotp {
		mac1: mac@88 {
			reg = <0x88 0x6>;
		};
	};

	&fec {
		nvmem-cells = <&mac1>;
		nvmem-cell-names = "mac-address";
	};

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
