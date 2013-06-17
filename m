Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoeOI-0001Sc-LR
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 18:42:59 +0000
Received: by mail-wi0-f180.google.com with SMTP id c10so2485011wiw.7
 for <barebox@lists.infradead.org>; Mon, 17 Jun 2013 11:42:35 -0700 (PDT)
Date: Mon, 17 Jun 2013 20:45:48 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130617184511.GA1698@x61s.8.8.8.8>
References: <1365706897.4136.24.camel@mars> <1370207222.5021.0.camel@lovely>
 <1371069946.25992.104.camel@mars>
 <B2329465-02EF-41CF-8B29-5C7A8BDFB349@jcrosoft.com>
 <1371163239.4055.180.camel@mars>
 <20130614062910.GA10743@x61s.8.8.8.8>
 <1371194628.3655.1.camel@lws-weitzel>
 <1371197742.3873.8.camel@mars>
 <20130614114312.GG27130@game.jcrosoft.org>
 <1371222662.28854.15.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371222662.28854.15.camel@mars>
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
Subject: Re: [PATCH v6] omap4-fb: add driver
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

Hi,

only a very small nitpick.

On Fri, Jun 14, 2013 at 05:11:02PM +0200, Christoph Fritz wrote:
> This patch adds omap4 display controller support.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
> changes since v2:
>         - use dev_request_mem_region_by_name()
> changes since v3:
>         - remove register struct
>         - use uncached screen_base
> changes since v4:
>         - remove useless dev_add_param()
>         - use wait_on_timeout() instead while-deadlock
> changes since v5:
> 	- use dev_dbg() and dev_err(), be less verbose
> 	- fix coding-style issues
> 	- add omap4fb_find_display_by_name()
> 	- add additional read/write macros
> ---
>  arch/arm/mach-omap/Makefile                |    1 +
>  arch/arm/mach-omap/include/mach/omap4-fb.h |   46 +++
>  arch/arm/mach-omap/omap4_fb.c              |   27 ++
>  drivers/video/Kconfig                      |    8 +
>  drivers/video/Makefile                     |    1 +
>  drivers/video/omap4.c                      |  526 ++++++++++++++++++++++++++++
>  drivers/video/omap4.h                      |  187 ++++++++++
>  7 files changed, 796 insertions(+)
>  create mode 100644 arch/arm/mach-omap/include/mach/omap4-fb.h
>  create mode 100644 arch/arm/mach-omap/omap4_fb.c
>  create mode 100644 drivers/video/omap4.c
>  create mode 100644 drivers/video/omap4.h
> 
> diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> index 94e42c6..e70ddbd 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -28,6 +28,7 @@ obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
>  pbl-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
>  obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
>  obj-$(CONFIG_SHELL_NONE) += xload.o
> +obj-$(CONFIG_DRIVER_VIDEO_OMAP4) += omap4_fb.o
>  obj-$(CONFIG_I2C_TWL6030) += omap4_twl6030_mmc.o
>  obj-$(CONFIG_OMAP4_USBBOOT) += omap4_rom_usb.o
>  obj-y += gpio.o
> diff --git a/arch/arm/mach-omap/include/mach/omap4-fb.h b/arch/arm/mach-omap/include/mach/omap4-fb.h
> new file mode 100644
> index 0000000..5c0a54b
> --- /dev/null
> +++ b/arch/arm/mach-omap/include/mach/omap4-fb.h
> @@ -0,0 +1,46 @@
> +#ifndef H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H
> +#define H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H
> +
> +#include <fb.h>
> +
> +#define OMAP_DSS_LCD_TFT	(1u << 0)
> +#define OMAP_DSS_LCD_IVS	(1u << 1)

...

> +
> +	if (!pdata)
> +		return -ENODEV;
> +

In my opinion this is a false errno for this case. But better is to drop
this check completely. It's only a check that a programmer doesn't set a
pdata which is very unlikely.

I think there was another patches on this list to remove something like
this.

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
