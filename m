Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a7K2i-0002RV-Q6
 for barebox@lists.infradead.org; Fri, 11 Dec 2015 09:31:13 +0000
Date: Fri, 11 Dec 2015 10:30:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151211093050.GX11966@pengutronix.de>
References: <1449800007.26955.96.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449800007.26955.96.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] socfpga: Find partition with environment via device tree
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Fri, Dec 11, 2015 at 02:13:21AM +0000, Trent Piepho wrote:
> socfpga loads the environment from a file named "barebox.env" located
> on the device "/dev/mmc0.1".  Both those names are hard-coded in the
> socfpga code and can't be changed.
> 
> Barebox supports selecting the location of the environment using a
> "barebox,environment" node in device tree's "chosen" node.
> 
> Change socfpga to use this mechanism by looking for barebox.env in the
> device or partition specified in the device tree.
> 
> The filename is still hard-coded.  Someone who wants to change it
> could put that into the device tree too (new file-name property?  3rd
> string in device-path?).
> 
> Remove the stat() call in socfpga_env_init(), as mount() already
> checks if the device exists.  Also remove device_detect_by_name() call
> as the barebox env device code now takes care of that for us.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
> 
> OMAP could do the same thing...
> 
>  arch/arm/dts/socfpga.dtsi       |  7 +++++++
>  arch/arm/mach-socfpga/generic.c | 37 +++++++++++++------------------------
>  2 files changed, 20 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
> index d4d498b..1d0d6ff 100644
> --- a/arch/arm/dts/socfpga.dtsi
> +++ b/arch/arm/dts/socfpga.dtsi
> @@ -1,4 +1,11 @@
>  / {
> +	chosen {
> +                environment@0 {
> +                        compatible = "barebox,environment";
> +                        device-path = &mmc, "partname:1";
> +                };
> +	};

The "barebox,environment" compatible describes a binding which takes
partition described in device-path as a raw file containing a barebox
envfs.
What you have here is a partition which contains a FAT which has a
barebox envfs in a file. I think it's fine to extend the binding (and
the barebox env driver) to handle that case.  What you are doing here is
to smuggle code behind the driver and bend the environment path to
somewhere else. That is not ok. I think what we can do is to add some
file-path property which contains the path and tells the barebox
environment driver to not use the whole partition but instead to mount
it and use the file specified in the file-path property.

As an alternative which I might even like better is to extend the
partition binding to be able to describe a file in a partition, like:

environment@0 {
	compatible = "barebox,environment";
	device-path = &env;
};

eeprom@foo {
	partition@0 {
		reg = <0, 0x8000>;
		label = "foo";
		env: file@0 {
			path = "barebox.env";
		};
	};
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
