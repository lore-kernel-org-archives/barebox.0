Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hCMe2-0001gL-BN
 for barebox@lists.infradead.org; Fri, 05 Apr 2019 11:04:27 +0000
Date: Fri, 5 Apr 2019 13:04:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190405110424.r6roayuqeqjtldit@pengutronix.de>
References: <20190404145320.11465-1-m.tretter@pengutronix.de>
 <20190404145320.11465-8-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190404145320.11465-8-m.tretter@pengutronix.de>
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
Subject: Re: [RFC PATCH 7/7] blspec: add support for devicetree overlays
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Apr 04, 2019 at 04:53:20PM +0200, Michael Tretter wrote:
> Read the devicetree-overlay property from the blspec entry, set the
> firmware search-path based on the blspec root and register a devicetree
> overlay when booting the blspec entry.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  Documentation/user/booting-linux.rst |  4 ++++
>  common/blspec.c                      | 10 ++++++++
>  common/bootm.c                       | 35 ++++++++++++++++++++++++++++
>  include/bootm.h                      |  1 +
>  4 files changed, 50 insertions(+)
> 
> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> index 437f4e80ca..12cd505e71 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst
> @@ -232,6 +232,10 @@ device where the entry is found on. This makes it possible to use the same rootf
>  image on different devices without having to specify a different root= option each
>  time.
>  
> +Additionally to the options defined in the original spec, Barebox has the
> +``devicetree-overlay`` option. This is a string value that refer to overlays

s/refer/refers/

You say "overlays" in plural, but the code seems to handle only a single
overlay.

> +that will be applied to the device tree before passing it to Linux.
> +
>  Network boot
>  ------------
>  
> diff --git a/common/blspec.c b/common/blspec.c
> index 41f2a4c534..d0f2f3b228 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -54,6 +54,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
>  	struct blspec_entry *entry = container_of(be, struct blspec_entry, entry);
>  	int ret;
>  	const char *abspath, *devicetree, *options, *initrd, *linuximage;
> +	const char *devicetree_overlay;
>  	const char *appendroot;
>  	struct bootm_data data = {
>  		.initrd_address = UIMAGE_INVALID_ADDRESS,
> @@ -69,6 +70,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
>  	initrd = blspec_entry_var_get(entry, "initrd");
>  	options = blspec_entry_var_get(entry, "options");
>  	linuximage = blspec_entry_var_get(entry, "linux");
> +	devicetree_overlay = blspec_entry_var_get(entry, "devicetree-overlay");
>  
>  	if (entry->rootpath)
>  		abspath = entry->rootpath;
> @@ -88,6 +90,13 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
>  		}
>  	}
>  
> +	if (devicetree_overlay) {
> +		data.oftree_overlay_file = basprintf("%s/%s", abspath,
> +						     devicetree_overlay);
> +		setenv("global.firmware.path",
> +		       basprintf("%s/%s", abspath, "lib/firmware/"));

The memory allocated here can never be freed.

I know from the previous patches what you are trying to archieve here,
but really this is non obvious and deserves an explanation somewhere.

So the overlay specifies a (FPGA-) Firmware filename which is then
searched for in the /lib/firmware directory of the rootfs where the
blspec entry is found. To me this looks quite special, I'm not sure
we want to make this a generic case.

>  static void bootm_print_info(struct image_data *data)
>  {
>  	if (data->os_res)
> @@ -631,6 +657,15 @@ int bootm_boot(struct bootm_data *bootm_data)
>  		}
>  	}
>  
> +	if (bootm_data->oftree_overlay_file) {
> +		ret = bootm_apply_oftree_overlay(bootm_data->oftree_overlay_file);
> +		if (ret) {
> +			printf("Applying device tree overlay failed with: %s\n",
> +					strerror(-ret));
> +			ret = 0;
> +		}
> +	}

bootm has a dryrun mode. You probably don't want to do steps you can't
revert in this mode.

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
