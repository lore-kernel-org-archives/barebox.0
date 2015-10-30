Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zs3zB-0004dp-QX
 for barebox@lists.infradead.org; Fri, 30 Oct 2015 07:20:30 +0000
Date: Fri, 30 Oct 2015 08:20:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151030072007.GY25308@pengutronix.de>
References: <1446057278-20538-1-git-send-email-andrew.smirnov@gmail.com>
 <1446057278-20538-2-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1446057278-20538-2-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 1/2] arm/cpu/start.c: Distil some common code in
 __start().
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 28, 2015 at 11:34:37AM -0700, Andrey Smirnov wrote:
> Both barebox_boarddata and barebox_boot_dtb perform essentially the
> same function -- hold a pointer to a chunk of private data. Since only
> one variable is ever used at any given time we may as well merge those
> two variable into one. This also allows us to share more code between
> two boot paths (board data vs. device tree)
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> Changes since v1:
> 	- Unified barebox_boarddata and barebox_boot_dtb into
>           barebox_private_data which allowed to simplify distilled code
>           and avoid using double star pointers
> 
> 
>  arch/arm/cpu/start.c | 58 +++++++++++++++++++++++++++++++++-------------------
>  1 file changed, 37 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 8e5097b..066dad8 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -32,25 +32,35 @@
>  #include "mmu-early.h"
> 
>  unsigned long arm_stack_top;
> -static void *barebox_boarddata;
> +static void *barebox_private_data;
> 
>  u32 barebox_arm_machine(void)
>  {
>  	struct barebox_arm_boarddata *bd;
> 
> -	if (!barebox_boarddata)
> +	if (!barebox_private_data)
>  		return 0;
> 
> -	bd = barebox_boarddata;
> +	bd = barebox_private_data;
> 
>  	return bd->machine;
>  }
> 
> -static void *barebox_boot_dtb;
> -
>  void *barebox_arm_boot_dtb(void)
>  {
> -	return barebox_boot_dtb;
> +	return barebox_private_data;
> +}

Previously we knew that the pointer barebox_arm_machine() works on is a
machine type entry and we knew that the pointer returned from
barebox_arm_boot_dtb() is a dtb. With this patch both are share the same
pointer so we would have to check if the result returned from
barebox_arm_boot_dtb() is actually a dtb. That's not so nice.

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
