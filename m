Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wRz-0001FA-75
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 11:49:20 +0000
Date: Wed, 28 Aug 2019 13:49:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190828114915.zkz6tbf3k5i235eb@pengutronix.de>
References: <20190827143239.15682-1-ahmad@a3f.at>
 <20190827143239.15682-6-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827143239.15682-6-ahmad@a3f.at>
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
Subject: Re: [PATCH 5/6] sandbox: hostfile: allow probing from device tree
To: Ahmad Fatoum <ahmad@a3f.at>, g@pengutronix.de
Cc: barebox@lists.infradead.org

On Tue, Aug 27, 2019 at 04:32:38PM +0200, Ahmad Fatoum wrote:
> When testing things like barebox state in sandbox, it's nice to be able
> to refer to a partition on a hostfile by phandle. Support this by
> checking for reading the barebox,filename property.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/sandbox/board/hostfile.c                 | 16 ++++--
>  arch/sandbox/dts/sandbox-state.dtsi           | 50 +++++++++++++++++++
>  .../sandbox/mach-sandbox/include/mach/linux.h |  1 +
>  arch/sandbox/os/common.c                      |  5 ++
>  4 files changed, 68 insertions(+), 4 deletions(-)
>  create mode 100644 arch/sandbox/dts/sandbox-state.dtsi
> 
> diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
> index 745f078d1a79..e5a7580d0792 100644
> --- a/arch/sandbox/board/hostfile.c
> +++ b/arch/sandbox/board/hostfile.c
> @@ -84,15 +84,16 @@ static int hf_probe(struct device_d *dev)
>  	if (!dev->device_node)
>  		return -ENODEV;
>  
> -	err = of_property_read_u32(dev->device_node, "barebox,fd", &priv->fd);
> -	if (err)
> -		return err;
> +	of_property_read_u32(dev->device_node, "barebox,fd", &priv->fd);
>  
>  	err = of_property_read_string(dev->device_node, "barebox,filename",
>  				      &priv->filename);
>  	if (err)
>  		return err;
>  
> +	if (!priv->fd)
> +		priv->fd = linux_open(priv->filename, true);
> +
>  	priv->cdev.name = dev->device_node->name;
>  	priv->cdev.dev = dev;
>  	priv->cdev.ops = &hf_fops;
> @@ -101,7 +102,14 @@ static int hf_probe(struct device_d *dev)
>  	dev->info = hf_info;
>  	dev->priv = priv;
>  
> -	return devfs_create(&priv->cdev);
> +	err = devfs_create(&priv->cdev);
> +	if (err)
> +		return err;
> +
> +	of_parse_partitions(&priv->cdev, dev->device_node);
> +	of_partitions_register_fixup(&priv->cdev);
> +
> +	return 0;
>  }
>  
>  static __maybe_unused struct of_device_id hostfile_dt_ids[] = {
> diff --git a/arch/sandbox/dts/sandbox-state.dtsi b/arch/sandbox/dts/sandbox-state.dtsi
> new file mode 100644
> index 000000000000..fc17bd078899
> --- /dev/null
> +++ b/arch/sandbox/dts/sandbox-state.dtsi
> @@ -0,0 +1,50 @@

This file doesn't belong into this patch.

Applied 1-4 for now.

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
