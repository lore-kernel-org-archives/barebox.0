Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X1dx1-00062r-EM
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 15:57:05 +0000
Date: Mon, 30 Jun 2014 17:56:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140630155639.GH14257@pengutronix.de>
References: <alpine.LFD.2.11.1406300822050.721@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1406300822050.721@localhost>
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
Subject: Re: [PATCH] Documentation: device tree bindings.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Jun 30, 2014 at 08:23:43AM -0400, Robert P. J. Day wrote:
> 
> Adjusted Sphinx markup for devicetree bindings pages.
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 
> ---
> 
>   not completely confident in my markup here so i'm open to
> suggestions.

Looks fine in the source code, so applied.

I'll have a look at the rendered html result tomorrow.

Sascha


> 
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.rst b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> index d243484..d472f66 100644
> --- a/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> +++ b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
> @@ -4,18 +4,19 @@ barebox environment
>  This driver provides an environment for barebox from the devicetree.
> 
>  Required properties:
> -- compatible: should be "barebox,environment"
> -- device-path: path to the environment
> +
> +* ``compatible``: should be ``barebox,environment``
> +* ``device-path``: path to the environment
> 
>  The device-path is a multistring property. The first string should be a
>  nodepath to the node containing the physical device of the environment.
>  The subsequent strings are of the form <type>:<options> to further describe
>  the path to the environment. Supported values for <type>:
> 
> -partname:<partname>  This describes a partition on a device. <partname> can
> -                     be the label for mtd partitions, the number for DOS
> -		     partitions (beginning with 0) or the name for GPT
> -		     partitions
> +``partname``:<partname>
> +  This describes a partition on a device. <partname> can
> +  be the label for MTD partitions, the number for DOS
> +  partitions (beginning with 0) or the name for GPT partitions.
> 
>  Example::
> 
> diff --git a/Documentation/devicetree/bindings/leds/common.rst b/Documentation/devicetree/bindings/leds/common.rst
> index 63a45bd..c1fd1ab 100644
> --- a/Documentation/devicetree/bindings/leds/common.rst
> +++ b/Documentation/devicetree/bindings/leds/common.rst
> @@ -1,9 +1,10 @@
>  Common leds properties
>  ======================
> 
> -- linux,default-trigger barebox,default-trigger:  This parameter, if present, is a
> +* ``linux,default-trigger``, ``barebox,default-trigger``:  This parameter, if present, is a
>      string defining the trigger assigned to the LED.  Current triggers are:
> -     "heartbeat" - LED flashes at a constant rate
> -     "panic" - LED turns on when barebox panics
> -     "net" - LED indicates network activity
> +
> +    * ``heartbeat`` - LED flashes at a constant rate
> +    * ``panic`` - LED turns on when barebox panics
> +    * ``net`` - LED indicates network activity
> 
> diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-iim.rst b/Documentation/devicetree/bindings/misc/fsl,imx-iim.rst
> index a067579..b9d5bcb 100644
> --- a/Documentation/devicetree/bindings/misc/fsl,imx-iim.rst
> +++ b/Documentation/devicetree/bindings/misc/fsl,imx-iim.rst
> @@ -3,14 +3,14 @@ Freescale i.MX IIM (Ic Identification Module)
> 
>  Required properties:
> 
> -- compatible: fsl,imx27-iim
> -- reg: physical register base and size
> +* ``compatible``: ``fsl,imx27-iim``, ``fsl,imx51-iim``
> +* ``reg``: physical register base and size
> 
>  Optional properties:
> 
> -- barebox,provide-mac-address: Provide MAC addresses for ethernet devices. This
> -  can be multiple entries in the form <&phandle bankno fuseofs> to specify a MAC
> -  address to a ethernet device.
> +* ``barebox,provide-mac-address``: Provide MAC addresses for Ethernet devices. This
> +  can be multiple entries in the form <&phandle bankno fuseofs> to assign a MAC
> +  address to an Ethernet device.
> 
>  Example::
> 
> diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
> index 472b9e2..403863e 100644
> --- a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
> +++ b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
> @@ -3,14 +3,14 @@ Freescale i.MX OCOTP (On-Chip OTP)
> 
>  Required properties:
> 
> -- compatible: fsl,imx6q-ocotp
> -- reg: physical register base and size
> +* ``compatible``: ``fsl,imx6q-ocotp``
> +* ``reg``: physical register base and size
> 
>  Optional properties:
> 
> -- barebox,provide-mac-address: Provide MAC addresses for ethernet devices. This
> -  can be multiple entries in the form <&phandle regofs> to specify a MAC
> -  address to a ethernet device.
> +* ``barebox,provide-mac-address``: Provide MAC addresses for Ethernet devices. This
> +  can be multiple entries in the form <&phandle regofs> to assign a MAC
> +  address to an Ethernet device.
> 
>  Example::
> 
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
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
