Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68jw-0002aB-4e
 for barebox@lists.infradead.org; Fri, 06 Sep 2019 07:33:05 +0000
Date: Fri, 6 Sep 2019 09:33:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190906073302.uyhxt32q5j73clcg@pengutronix.de>
References: <20190905105142.13681-1-m.tretter@pengutronix.de>
 <20190905105142.13681-4-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905105142.13681-4-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH 3/7] blspec: add support for devicetree overlays
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 05, 2019 at 12:51:38PM +0200, Michael Tretter wrote:
> Read the devicetree-overlay property from the blspec entry and register
> the overlays when booting the blspec entry.
> 
> Do not fail the boot if an overlay cannot be loaded, because if Linux
> fails to boot without an overlay, the base device tree is broken.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  Documentation/user/booting-linux.rst |  4 ++
>  common/blspec.c                      | 59 ++++++++++++++++++++++++++++
>  2 files changed, 63 insertions(+)
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
> +that will be applied to the device tree before passing it to Linux.
> +
>  Network boot
>  ------------
>  
> diff --git a/common/blspec.c b/common/blspec.c
> index 66e5033e35..6b15d36d67 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -42,6 +42,60 @@ int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
>  			val ? strlen(val) + 1 : 0, 1);
>  }
>  
> +static int blspec_apply_oftree_overlay(char *file, const char *abspath,
> +				       int dryrun)
> +{
> +	int ret;
> +	struct fdt_header *fdt;
> +	struct device_node *overlay;
> +	char *path;
> +
> +	path = basprintf("%s/%s", abspath, file);
> +
> +	fdt = read_file(path, NULL);

This memory is never freed.

> +	if (!fdt) {
> +		pr_warn("unable to read \"%s\"\n", path);
> +		ret = -EINVAL;
> +		goto out;
> +	}
> +
> +	overlay = of_unflatten_dtb(fdt);
> +	if (IS_ERR(overlay)) {
> +		printf("\"%s\" is not a valid devicetree\n", path);
> +		ret = -EINVAL;
> +		goto out;
> +	}
> +
> +	if (dryrun) {
> +		pr_info("dry run: skip overlay %s\n", path);
> +		of_delete_node(overlay);
> +		goto out;
> +	}
> +
> +	ret = of_register_overlay(overlay);
> +	if (ret)
> +		pr_warn("cannot register devicetree overlay \"%s\"\n", path);

You do not free the overlay in the error path. What happens to this
memory when succesful? Should of_register_overlay() make a copy or free
it when succesfully fixed up?

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
