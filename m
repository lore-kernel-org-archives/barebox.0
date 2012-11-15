Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYuAo-0004YG-9z
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 07:47:42 +0000
Date: Thu, 15 Nov 2012 08:47:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121115074740.GU10369@pengutronix.de>
References: <1352931813-2817-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352931813-2817-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH 1/2] nios2: use barebox_add_memory_bank in generic.c
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 14, 2012 at 11:23:32PM +0100, Franck Jullien wrote:
> In the nios2 generic board generic.c file, use the
> new barebox_add_memory_bank to init ram memory.
> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/nios2/boards/generic/generic.c |   11 +++++++++--
>  1 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/nios2/boards/generic/generic.c b/arch/nios2/boards/generic/generic.c
> index 66eb856..499d93b 100644
> --- a/arch/nios2/boards/generic/generic.c
> +++ b/arch/nios2/boards/generic/generic.c
> @@ -3,6 +3,7 @@
>  #include <driver.h>
>  #include <partition.h>
>  #include <fs.h>
> +#include <memory.h>
>  
>  static int phy_address = 1;
>  
> @@ -32,11 +33,17 @@ static struct device_d mac_dev = {
>  	.platform_data = &phy_address,
>  };
>  
> +static int mem_init(void)
> +{
> +	barebox_add_memory_bank("ram0", NIOS_SOPC_MEMORY_BASE, NIOS_SOPC_MEMORY_SIZE);
> +
> +	return 0;
> +}
> +mem_initcall(mem_init);
> +
>  static int generic_devices_init(void)
>  {
>  	add_cfi_flash_device(DEVICE_ID_DYNAMIC, NIOS_SOPC_FLASH_BASE, NIOS_SOPC_FLASH_SIZE, 0);
> -	add_mem_device("ram0", NIOS_SOPC_MEMORY_BASE, NIOS_SOPC_MEMORY_SIZE,
> -		       IORESOURCE_MEM_WRITEABLE);
>  	platform_device_register(&mac_dev);
>  	/*register_device(&epcs_flash_device);*/
>  
> -- 
> 1.7.1
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
