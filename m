Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPTLt-0002hl-Mx
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 08:24:42 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 0680ADC150A
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 10:24:20 +0200 (CEST)
Date: Fri, 27 Sep 2013 10:25:37 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130927082537.GD32444@ns203013.ovh.net>
References: <1380266272-931-1-git-send-email-s.hauer@pengutronix.de>
 <1380266272-931-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380266272-931-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/4] ARM: OMAP: register OMAP specific barebox bootm
 handler
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:17 Fri 27 Sep     , Sascha Hauer wrote:
> The OMAP ROM code passes the boot information via r0 to the
> bootloader. Add an OMAP specific barebox handler to pass this
> information to the next stage. This allows us to chainload
> bootloaders without loosing the information where we booted from.

as you are working on the xload can test the patch I send to switch to the
generic bootstap  code

Best Regards,
J.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-omap/include/mach/generic.h |  1 +
>  arch/arm/mach-omap/omap_generic.c         | 52 +++++++++++++++++++++++++++++++
>  arch/arm/mach-omap/xload.c                | 10 ++----
>  3 files changed, 55 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/include/mach/generic.h b/arch/arm/mach-omap/include/mach/generic.h
> index ece8c2b..1cd7f04 100644
> --- a/arch/arm/mach-omap/include/mach/generic.h
> +++ b/arch/arm/mach-omap/include/mach/generic.h
> @@ -56,6 +56,7 @@ static inline int omap_set_mmc_dev(const char *mmcdev)
>  
>  extern uint32_t omap_bootinfo[3];
>  void omap_save_bootinfo(void *data);
> +void __noreturn omap_start_barebox(void *barebox);
>  
>  void omap_set_bootmmc_devname(const char *devname);
>  const char *omap_get_bootmmc_devname(void);
> diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
> index f024de6..595ecbe 100644
> --- a/arch/arm/mach-omap/omap_generic.c
> +++ b/arch/arm/mach-omap/omap_generic.c
> @@ -15,12 +15,64 @@
>  #include <common.h>
>  #include <bootsource.h>
>  #include <envfs.h>
> +#include <boot.h>
>  #include <init.h>
>  #include <io.h>
>  #include <fs.h>
>  #include <malloc.h>
>  #include <linux/stat.h>
>  #include <mach/generic.h>
> +#include <mach/am33xx-silicon.h>
> +#include <mach/omap3-silicon.h>
> +#include <mach/omap4-silicon.h>
> +
> +static void *omap_sram_start(void)
> +{
> +	if (cpu_is_am33xx())
> +		return (void *)AM33XX_SRAM0_START;
> +	if (cpu_is_omap34xx())
> +		return (void *)OMAP3_SRAM_BASE;
> +	if (cpu_is_omap4xxx())
> +		return (void *)OMAP44XX_SRAM_BASE;
> +}
> +
> +void __noreturn omap_start_barebox(void *barebox)
> +{
> +	int (*func)(void *) = barebox;
> +	uint32_t *arg;
> +	void *sramadr = omap_sram_start();
> +
> +	arg = (uint32_t *)&omap_bootinfo;
> +
> +	memcpy(sramadr, &omap_bootinfo, sizeof(uint32_t) * 3);
> +
> +	shutdown_barebox();
> +	func(sramadr);
> +	hang();
> +}
> +
> +static int do_bootm_omap_barebox(struct image_data *data)
> +{
> +	void (*barebox)(uint32_t);
> +
> +	barebox = read_file(data->os_file, NULL);
> +	if (!barebox)
> +		return -EINVAL;
> +
> +	omap_start_barebox(barebox);
> +}
> +
> +static struct image_handler omap_barebox_handler = {
> +	.name = "OMAP barebox",
> +	.bootm = do_bootm_omap_barebox,
> +	.filetype = filetype_arm_barebox,
> +};
> +
> +static int omap_bootm_barebox(void)
> +{
> +	return register_image_handler(&omap_barebox_handler);
> +}
> +device_initcall(omap_bootm_barebox);
>  
>  const static char *omap_bootmmc_dev;
>  
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index b4d1b55..69e3e42 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -188,8 +188,7 @@ static void *omap4_xload_boot_usb(void){
>   */
>  static __noreturn int omap_xload(void)
>  {
> -	int (*func)(void *) = NULL;
> -	uint32_t *arg;
> +	void *func;
>  
>  	if (!barebox_part)
>  		barebox_part = &default_part;
> @@ -230,12 +229,7 @@ static __noreturn int omap_xload(void)
>  		while (1);
>  	}
>  
> -	arg = (uint32_t *)&omap_bootinfo;
> -
> -	shutdown_barebox();
> -	func(arg);
> -
> -	while (1);
> +	omap_start_barebox(func);
>  }
>  
>  int omap_set_barebox_part(struct omap_barebox_part *part)
> -- 
> 1.8.4.rc3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
