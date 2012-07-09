Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1So8L8-0004oI-D1
 for barebox@lists.infradead.org; Mon, 09 Jul 2012 07:25:05 +0000
Date: Mon, 9 Jul 2012 09:24:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120709072432.GN30009@pengutronix.de>
References: <1341570842-12951-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1341570842-12951-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: malta: register memory bank
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 06, 2012 at 02:34:02PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/boards/qemu-malta/init.c |    9 +++++++++
>  1 file changed, 9 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
> index 2a6eadb..0efc92a 100644
> --- a/arch/mips/boards/qemu-malta/init.c
> +++ b/arch/mips/boards/qemu-malta/init.c
> @@ -23,6 +23,7 @@
>  #include <types.h>
>  #include <driver.h>
>  #include <init.h>
> +#include <memory.h>
>  #include <ns16550.h>
>  #include <mach/hardware.h>
>  #include <io.h>
> @@ -30,6 +31,14 @@
>  #include <sizes.h>
>  #include <asm/common.h>
>  
> +static int malta_mem_init(void)
> +{
> +	barebox_add_memory_bank("ram0", 0xa0000000, SZ_256M);
> +
> +	return 0;
> +}
> +mem_initcall(malta_mem_init);
> +
>  static int malta_devices_init(void)
>  {
>  	add_cfi_flash_device(0, 0x1e000000, SZ_4M, 0);
> -- 
> 1.7.10
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
