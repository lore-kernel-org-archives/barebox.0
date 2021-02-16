Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBwZY-0000yX-Gv
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 09:23:09 +0000
Date: Tue, 16 Feb 2021 10:23:07 +0100
Message-ID: <20210216092307.GV19583@pengutronix.de>
References: <20210215102442.28731-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210215102442.28731-1-a.fatoum@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] sandbox: support 64-bit file IO in 32-bit build
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 15, 2021 at 11:24:42AM +0100, Ahmad Fatoum wrote:
> This allows an easy way to test upcoming changes to the barebox block
> layer to support 64-bit block IO.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

>  arch/sandbox/board/hostfile.c                  | 17 +++++++----------
>  arch/sandbox/mach-sandbox/include/mach/linux.h |  2 +-
>  arch/sandbox/os/Makefile                       |  2 +-
>  arch/sandbox/os/common.c                       |  2 +-
>  4 files changed, 10 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
> index e3e38b7119d5..4a5a324d588a 100644
> --- a/arch/sandbox/board/hostfile.c
> +++ b/arch/sandbox/board/hostfile.c
> @@ -102,21 +102,18 @@ static int hf_probe(struct device_d *dev)
>  {
>  	struct device_node *np = dev->device_node;
>  	struct hf_priv *priv = xzalloc(sizeof(*priv));
> -	struct resource *res;
>  	struct cdev *cdev;
>  	bool is_blockdev;
> -	resource_size_t size;
> +	u64 reg[2];
>  	int err;
>  
> -	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
> -	if (IS_ERR(res))
> -		return PTR_ERR(res);
> -
> -	size = resource_size(res);
> -
>  	if (!np)
>  		return -ENODEV;
>  
> +	err = of_property_read_u64_array(np, "reg", reg, ARRAY_SIZE(reg));
> +	if (err)
> +		return err;
> +
>  	of_property_read_u32(np, "barebox,fd", &priv->fd);
>  
>  	err = of_property_read_string(np, "barebox,filename",
> @@ -141,7 +138,7 @@ static int hf_probe(struct device_d *dev)
>  		priv->blk.dev = dev;
>  		priv->blk.ops = &hf_blk_ops;
>  		priv->blk.blockbits = SECTOR_SHIFT;
> -		priv->blk.num_blocks = size / SECTOR_SIZE;
> +		priv->blk.num_blocks = reg[1] / SECTOR_SIZE;
>  
>  		err = blockdevice_register(&priv->blk);
>  		if (err)
> @@ -156,7 +153,7 @@ static int hf_probe(struct device_d *dev)
>  		cdev->name = np->name;
>  		cdev->dev = dev;
>  		cdev->ops = &hf_cdev_ops;
> -		cdev->size = size;
> +		cdev->size = reg[1];
>  		cdev->priv = priv;
>  
>  		err = devfs_create(cdev);
> diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
> index 6e10fdbe6d80..831e170d90ef 100644
> --- a/arch/sandbox/mach-sandbox/include/mach/linux.h
> +++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
> @@ -17,7 +17,7 @@ int linux_open_hostfile(struct hf_info *hf);
>  int linux_read(int fd, void *buf, size_t count);
>  int linux_read_nonblock(int fd, void *buf, size_t count);
>  ssize_t linux_write(int fd, const void *buf, size_t count);
> -off_t linux_lseek(int fildes, off_t offset);
> +loff_t linux_lseek(int fildes, loff_t offset);
>  int linux_tstc(int fd);
>  void __attribute__((noreturn)) linux_exit(void);
>  void linux_hang(void);
> diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
> index 575b1a213050..fb2c3cfd8632 100644
> --- a/arch/sandbox/os/Makefile
> +++ b/arch/sandbox/os/Makefile
> @@ -4,7 +4,7 @@ machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
>  
>  KBUILD_CPPFLAGS = $(patsubst %,-I$(srctree)/%include,$(machdirs))
>  
> -KBUILD_CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE)
> +KBUILD_CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE) -D_FILE_OFFSET_BITS=64
>  
>  KBUILD_CFLAGS := -Wall
>  
> diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
> index 56c2d0519388..f6b352f2d688 100644
> --- a/arch/sandbox/os/common.c
> +++ b/arch/sandbox/os/common.c
> @@ -220,7 +220,7 @@ ssize_t linux_write(int fd, const void *buf, size_t count)
>  	return write(fd, buf, count);
>  }
>  
> -off_t linux_lseek(int fd, off_t offset)
> +loff_t linux_lseek(int fd, loff_t offset)
>  {
>  	return lseek(fd, offset, SEEK_SET);
>  }
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
