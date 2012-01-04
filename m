Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RiR6g-0008MS-4c
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 13:42:23 +0000
Date: Wed, 4 Jan 2012 14:42:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120104134209.GQ27267@pengutronix.de>
References: <20111231151655.GB945@game.jcrosoft.org>
 <1325344898-7076-5-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325344898-7076-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 05/12] at91: add sram memory devices
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Dec 31, 2011 at 04:21:31PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-at91/at91rm9200_devices.c       |    2 ++
>  arch/arm/mach-at91/at91sam9260_devices.c      |   12 ++++++++++++
>  arch/arm/mach-at91/at91sam9261_devices.c      |    7 +++++++
>  arch/arm/mach-at91/at91sam9263_devices.c      |    4 ++++
>  arch/arm/mach-at91/at91sam9g45_devices.c      |    2 ++
>  arch/arm/mach-at91/include/mach/at91sam9260.h |   10 ++++++++++
>  arch/arm/mach-at91/include/mach/at91sam9261.h |    3 +++
>  7 files changed, 40 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/at91rm9200_devices.c b/arch/arm/mach-at91/at91rm9200_devices.c
> index 8c19846..7032789 100644
> --- a/arch/arm/mach-at91/at91rm9200_devices.c
> +++ b/arch/arm/mach-at91/at91rm9200_devices.c
> @@ -23,6 +23,8 @@
>  void at91_add_device_sdram(u32 size)
>  {
>  	arm_add_mem_device("ram0", AT91_CHIPSELECT_1, size);
> +	add_mem_device("sram0", AT91RM9200_SRAM_BASE, AT91RM9200_SRAM_SIZE,
> +			IORESOURCE_MEM_WRITEABLE);

This breaks the at91rm9200ek_defconfig since this file is missing a
include <sizes.h>


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
