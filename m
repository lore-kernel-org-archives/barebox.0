Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQ5jt-0008Pg-AB
 for barebox@lists.infradead.org; Tue, 05 Jun 2018 06:46:43 +0000
Date: Tue, 5 Jun 2018 08:46:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180605064630.bzmufxmt4bejoz46@pengutronix.de>
References: <20180602211715.10989-1-pvizeli@syshack.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180602211715.10989-1-pvizeli@syshack.ch>
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
Subject: Re: [PATCH 1/3] drivers: of: implement overlay support
To: Pascal Vizeli <pvizeli@syshack.ch>
Cc: barebox@lists.infradead.org

On Sat, Jun 02, 2018 at 09:17:13PM +0000, Pascal Vizeli wrote:
> Signed-off-by: Pascal Vizeli <pvizeli@syshack.ch>

This lacks the original Signed-off-by tag from Jan. In case Jan didn't
provide a Signed-off-by tag please ignore.

What are your changes compared to Jans version? Just rebased or more?

> ---
>  Documentation/user/devicetree.rst | 101 ++++++++-
>  arch/sandbox/dts/Makefile         |   5 +-
>  arch/sandbox/dts/sandbox.dts      |   6 +
>  commands/oftree.c                 |  65 +++++-
>  drivers/of/Kconfig                |   6 +
>  drivers/of/Makefile               |   1 +
>  drivers/of/overlay.c              | 234 ++++++++++++++++++++
>  drivers/of/resolver.c             | 346 ++++++++++++++++++++++++++++++
>  include/of.h                      |  71 ++++++
>  scripts/Makefile.lib              |   5 +-
>  10 files changed, 831 insertions(+), 9 deletions(-)
>  create mode 100644 drivers/of/overlay.c
>  create mode 100644 drivers/of/resolver.c
> 
> diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
> index 17934d86e..b2220997d 100644
> --- a/Documentation/user/devicetree.rst
> +++ b/Documentation/user/devicetree.rst
> @@ -21,7 +21,7 @@ The internal devicetree
>  -----------------------
>  
>  The devicetree consulted by barebox plays a special role. It is referred to
> -as the "internal devicetree." The barebox devicetree commands work on this
> +as the "internal devicetree". The barebox devicetree commands work on this
>  devicetree. The devicetree source (DTS) files are kept in sync with the kernel DTS
>  files. As the FDT files are meant to be backward compatible, it should always be possible
>  to start a kernel with the barebox internal devicetree. However, since the barebox
> @@ -83,3 +83,102 @@ you can exchange the internal devicetree during runtime using the
>  
>     oftree -f
>     oftree -l /new/dtb
> +
> +Devicetree overlays
> +-------------------
> +
> +Since version 3.19, the Linux kernel supports applying "devicetree overlays" to
> +its loaded device tree. This can be used to inform the kernel about additional
> +non-discoverable devices after the system has booted, which is useful for modular
> +boards and FPGAs. The details of the overlay format are specified in the Linux
> +`kernel documentation <https://www.kernel.org/doc/Documentation/devicetree/overlay-notes.txt>`_
> +and an updated DTC is required to compile the overlays.
> +
> +The use cases for overlays in barebox are a bit different:
> +
> +* some of the modular devices are needed to boot Linux to userspace, but barebox
> +  can detect which module variant is connected
> +* one of several parallel or LVDS displays (which use timing data from devicetree)
> +  can be connected to the SoC and should be used for boot messages
> +* a generic Linux (distribution) kernel should be booted on a modular
> +  system and support additional hardware on modules
> +
> +barebox supports applying overlays in the internal devicetree was well using the
> +:ref:`command_oftree` command with option ``-o``:
> +
> +.. code-block:: sh
> +
> +   $ ./barebox -d arch/sandbox/dts/sandbox.dtb -i arch/sandbox/dts/sandbox-overlay.dtbo
> +   add fd0 backed by file arch/sandbox/dts/sandbox-overlay.dtbo
> +
> +   barebox 2015.02.0 #26 Wed Mar 4 09:41:19 CET 2015
> +   ...
> +   barebox@barebox sandbox:/ of_dump
> +   ...
> +     dummy@0 {
> +       status = "disabled";
> +       linux,phandle = <0x1>;
> +       phandle = <0x1>;
> +     };
> +     dummy@1 {
> +       status = "disabled";
> +       linux,phandle = <0x2>;
> +       phandle = <0x2>;
> +     };
> +     __symbols__ {
> +       dummy0 = "/dummy@0";
> +       dummy1 = "/dummy@1";
> +     };
> +   ...
> +   barebox@barebox sandbox:/ of_dump -f /dev/fd0
> +    {
> +     fragment@0 {
> +       target = <0xdeadbeef>;
> +       __overlay__ {
> +         status = "okay";
> +         child {
> +           compatible = "barebox,dummy";
> +         };
> +       };
> +     };
> +     fragment@1 {
> +       target = <0xdeadbeef>;
> +       __overlay__ {
> +         status = "okay";
> +         child {
> +           compatible = "barebox,dummy";
> +         };
> +       };
> +     };
> +     __fixups__ {
> +       dummy0 = "/fragment@0:target:0";
> +       dummy1 = "/fragment@1:target:0";
> +     };
> +   };
> +   barebox@barebox sandbox:/ oftree -o /dev/fd0
> +   barebox@barebox sandbox:/ of_dump
> +   ...
> +     dummy@0 {
> +       linux,phandle = <0x1>;
> +       phandle = <0x1>;
> +       status = "okay";
> +       child {
> +         compatible = "barebox,dummy";
> +       };
> +     };
> +     dummy@1 {
> +       linux,phandle = <0x2>;
> +       phandle = <0x2>;
> +       status = "okay";
> +       child {
> +         compatible = "barebox,dummy";
> +       };
> +     };
> +     __symbols__ {
> +       dummy0 = "/dummy@0";
> +       dummy1 = "/dummy@1";
> +     };
> +   ...
> +
> +If you need to use a different base devicetree instead of the one compiled into
> +barebox, it needs to be replaced as described in the previous section.
> diff --git a/arch/sandbox/dts/Makefile b/arch/sandbox/dts/Makefile
> index 6f6838857..ede219e6f 100644
> --- a/arch/sandbox/dts/Makefile
> +++ b/arch/sandbox/dts/Makefile
> @@ -1,6 +1,7 @@
>  ifeq ($(CONFIG_OFTREE),y)
>  dtb-y += \
> -	sandbox.dtb
> +	sandbox.dtb \
> +	sandbox-overlay.dtbo
>  endif
>  
>  # just to build a built-in.o. Otherwise compilation fails when no devicetree is
> @@ -8,4 +9,4 @@ endif
>  obj- += dummy.o
>  
>  always := $(dtb-y)
> -clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
> +clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtbo
> diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
> index 2595aa13f..1b99a4960 100644
> --- a/arch/sandbox/dts/sandbox.dts
> +++ b/arch/sandbox/dts/sandbox.dts
> @@ -3,5 +3,11 @@
>  #include "skeleton.dtsi"
>  
>  / {
> +	dummy0: dummy@0 {
> +		status = "disabled";
> +	};
>  
> +	dummy1: dummy@1 {
> +		status = "disabled";
> +	};
>  };
> diff --git a/commands/oftree.c b/commands/oftree.c
> index 8a47c0be5..e0624ad34 100644
> --- a/commands/oftree.c
> +++ b/commands/oftree.c
> @@ -2,6 +2,7 @@
>   * oftree.c - device tree command support
>   *
>   * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> + * Copyright (C) 2015 Pengutronix, Jan Luebbe <jlu@pengutronix.de>
>   *
>   * based on U-Boot code by:
>   *
> @@ -48,11 +49,14 @@ static int do_oftree(int argc, char *argv[])
>  	int probe = 0;
>  	char *load = NULL;
>  	char *save = NULL;
> +	char *overlay = NULL;
>  	int free_of = 0;
>  	int ret;
>  	struct device_node *root;
> +	int ovinfo_cnt;
> +	struct of_overlay_info *ovinfo;
>  
> -	while ((opt = getopt(argc, argv, "pfl:s:")) > 0) {
> +	while ((opt = getopt(argc, argv, "pfl:o:s:")) > 0) {
>  		switch (opt) {
>  		case 'l':
>  			load = optarg;
> @@ -68,6 +72,9 @@ static int do_oftree(int argc, char *argv[])
>  		case 'f':
>  			free_of = 1;
>  			break;
> +		case 'o':
> +			overlay = optarg;
> +			break;
>  		case 's':
>  			save = optarg;
>  			break;
> @@ -84,7 +91,7 @@ static int do_oftree(int argc, char *argv[])
>  			return 0;
>  	}
>  
> -	if (!probe && !load && !save)
> +	if (!probe && !load && !save && !overlay)
>  		return COMMAND_ERROR_USAGE;
>  
>  	if (save) {
> @@ -123,6 +130,53 @@ static int do_oftree(int argc, char *argv[])
>  		}
>  	}
>  
> +	if (IS_ENABLED(CONFIG_OFTREE_OVERLAY) && overlay) {

Better make the overlay handling code a separate function, the result is
probably a bit better readable.

> +		struct device_node *ov;
> +
> +		root = of_get_root_node();
> +		if (!root) {
> +			printf("no oftree loaded\n");
> +			goto out;
> +		}
> +
> +		fdt = read_file(overlay, &size);
> +		if (!fdt) {
> +			printf("unable to read %s\n", overlay);
> +			return 1;
> +		}
> +
> +		ov = of_unflatten_dtb(fdt);
> +		free(fdt);
> +
> +		if (IS_ERR(ov)) {
> +			printf("parse oftree: %s\n", strerror(-ret));
> +			return PTR_ERR(ov);
> +		}
> +
> +		ret = of_resolve(ov);
> +		if (ret) {
> +			printf("resolve oftree overlay: %s\n", strerror(-ret));
> +			of_delete_node(ov);
> +			goto out;
> +		}
> +
> +		ret = of_build_overlay_info(ov, &ovinfo_cnt, &ovinfo);
> +		if (ret) {
> +			printf("prepare oftree overlay: %s\n", strerror(-ret));
> +			of_delete_node(ov);
> +			goto out;
> +		}
> +
> +		ret = of_overlay(ovinfo_cnt, ovinfo);
> +		if (ret) {
> +			printf("apply oftree overlay: %s\n", strerror(-ret));
> +			of_delete_node(ov);
> +			goto out;
> +		}
> +
> +		of_delete_node(ov);
> +	}

It's probably an interesting option to be able to apply the overlay to
the devicetree the kernel is started with rather than the live tree.

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
