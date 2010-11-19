Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PJMGt-0002GT-85
	for barebox@lists.infradead.org; Fri, 19 Nov 2010 08:24:40 +0000
Date: Fri, 19 Nov 2010 09:24:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101119082435.GB6017@pengutronix.de>
References: <20101112180228.GC13661@game.jcrosoft.org>
	<1290002365-22712-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1290002365-22712-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] mem: multiple resource support allow exclude a
	resource
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 17, 2010 at 02:59:24PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> introduce DEVFS_MEM_BAREBOX_ONLY for this purpose
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/lib/armlinux.c |    4 ++++
>  include/driver.h        |    1 +
>  2 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
> index b74c5e8..55d1401 100644
> --- a/arch/arm/lib/armlinux.c
> +++ b/arch/arm/lib/armlinux.c
> @@ -79,6 +79,10 @@ static void setup_memory_tags(void)
>  	list_for_each_entry(mem, &memory_list, list) {
>  		for (i = 0; i < mem->dev->num_resources; i++) {
>  			res = &mem->dev->resource[i];
> +
> +			if (res->flags & DEVFS_MEM_BAREBOX_ONLY)
> +				break;

Shouldn't this be a 'continue'?

> +
>  			params->hdr.tag = ATAG_MEM;
>  			params->hdr.size = tag_size(tag_mem32);
>  
> diff --git a/include/driver.h b/include/driver.h
> index c7dce1e..e98455c 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -354,6 +354,7 @@ ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, ulong offse
>  #define DEVFS_PARTITION_READONLY	(1 << 1)
>  #define DEVFS_IS_PARTITION		(1 << 2)
>  #define DEVFS_RDWR			(1 << 3)
> +#define DEVFS_MEM_BAREBOX_ONLY		(1 << 4)

I realize this when looking at this patch: You should abuse the flags
field in a resource pass custom bits. The only flags in a resource should
be the ones defined in include/linux/ioport.h.
With DEVFS_RDWR you are lucky, there is a IORESOURCE_MEM_WRITEABLE flag
which can be used for this purpose. There is no correspondent flag for
DEVFS_MEM_BAREBOX_ONLY though.

Overall I'm not very happy with the multiple-resources-to-mem-driver
approach. If you are concerned with the overhead of multiple statically
allocated devices we could introduce a add_memory_device(char *name, void *start,
size_t size, unsigned long flags) function which dynamically allocates a
device.

I'm also not convinced that these few multiple statically allocated
devices introduce an overhead at all, I mean most boards only have
SDRAM (one device) and maybe an SRAM (second device).

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
