Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fmmailgate01.web.de ([217.72.192.221])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PUxh9-0000ic-QG
	for barebox@lists.infradead.org; Tue, 21 Dec 2010 08:35:44 +0000
Date: Tue, 21 Dec 2010 09:35:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101221083540.GV6017@pengutronix.de>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3oc8gcae3.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3oc8gcae3.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH 10] ARM: Add support for IXP4xx CPU and for Goramo
	Multilink router platform.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

Hi Krzysztof,

Nice series! I haven't got much to add.

On Tue, Dec 21, 2010 at 12:06:12AM +0100, Krzysztof Halasa wrote:
> +
> +	devfs_add_partition("nor0", BAREBOX_START, BAREBOX_LENGTH,
> +			    DEVFS_PARTITION_FIXED | DEVFS_PARTITION_READONLY, "barebox");
> +	devfs_add_partition("nor0", NPE_A_START, NPE_A_LENGTH,
> +			    DEVFS_PARTITION_FIXED | DEVFS_PARTITION_READONLY, "NPE-A");
> +	devfs_add_partition("nor0", NPE_B_START, NPE_B_LENGTH,
> +			    DEVFS_PARTITION_FIXED | DEVFS_PARTITION_READONLY, "NPE-B");
> +	devfs_add_partition("nor0", NPE_C_START, NPE_C_LENGTH,
> +			    DEVFS_PARTITION_FIXED | DEVFS_PARTITION_READONLY, "NPE-C");
> +	devfs_add_partition("nor0", NPE_ENV0_START, NPE_ENV0_LENGTH,
> +			    DEVFS_PARTITION_FIXED, "env0");

These partitions are not on eraseblock boundaries, so I assume you use
some script to combine barebox and firmware into a single image. Can we
integrate this into the make system or at least add some instructions
how to generate this image?

> +
> +#ifdef CONFIG_USE_IRQ
> +
> +static void (*irq_handlers[HALF_QUEUES])(void *pdev);
> +static void *irq_pdevs[HALF_QUEUES];
> +
> +#undef fls
> +static inline int fls(int x)
> +{
> +	int ret;
> +	asm("clz\t%0, %1" : "=r" (ret) : "r" (x) : "cc");
> +	ret = 32 - ret;
> +	return ret;
> +}

fls is defined in a similar way in arch/arm/include/asm/bitops.h:

#define fls(x) \
	(__builtin_constant_p(x) ? constant_fls(x) : \
	({ int __r; asm("clz\t%0, %1" : "=r"(__r) : "r"(x) : "cc"); 32-__r; }))

Or am I missing something?

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
