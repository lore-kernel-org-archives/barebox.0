Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UaBq3-0002gp-T8
 for barebox@lists.infradead.org; Wed, 08 May 2013 21:23:52 +0000
Date: Wed, 8 May 2013 23:23:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130508212329.GG32299@pengutronix.de>
References: <1367944452-20946-1-git-send-email-antonynpavlov@gmail.com>
 <1367944452-20946-3-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367944452-20946-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 2/4] of: add MIPS memory bank adding support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 07, 2013 at 08:34:10PM +0400, Antony Pavlov wrote:
> The MIPS architecture has different view on memory
> resources than the ARM architecture.
> This patch move memory segment registration
> to a arch-specific files.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/arm/cpu/dtb.c   |   13 +++++++++++++
>  arch/mips/boot/dtb.c |   17 +++++++++++++++++
>  drivers/of/base.c    |    8 +-------
>  include/of.h         |    2 ++
>  4 files changed, 33 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
> index 10b73bd..66346cf 100644
> --- a/arch/arm/cpu/dtb.c
> +++ b/arch/arm/cpu/dtb.c
> @@ -17,6 +17,19 @@
>  #include <common.h>
>  #include <init.h>
>  #include <of.h>
> +#include <memory.h>
> +
> +void of_add_memory_bank(struct device_node *node, bool dump, int r,
> +		u64 base, u64 size)
> +{
> +	static char str[6];
> +
> +	sprintf(str, "ram%d", r);
> +	barebox_add_memory_bank(str, base, size);
> +
> +	if (dump)
> +		pr_info("%s: %s: 0x%llx@0x%llx\n", node->name, str, size, base);
> +}

Would be good to have this as generic version and call it from arm
specific code. What about powerpc? Does it compile with this patch?

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
