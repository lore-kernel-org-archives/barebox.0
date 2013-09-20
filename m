Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMv3v-0001EJ-LW
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 07:23:36 +0000
Date: Fri, 20 Sep 2013 09:23:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130920072313.GF30088@pengutronix.de>
References: <20130920044518.GB1137@ns203013.ovh.net>
 <1379652377-20276-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379652377-20276-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] misc: add bootcount framework
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 20, 2013 at 06:46:15AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/misc/Kconfig     |  3 +++
>  drivers/misc/Makefile    |  1 +
>  drivers/misc/bootcount.c | 24 ++++++++++++++++++++++++
>  include/bootcount.h      | 21 +++++++++++++++++++++
>  4 files changed, 49 insertions(+)
>  create mode 100644 drivers/misc/bootcount.c
>  create mode 100644 include/bootcount.h
> 
> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> index 606490b..a972ba4 100644
> --- a/drivers/misc/Kconfig
> +++ b/drivers/misc/Kconfig
> @@ -15,4 +15,7 @@ config JTAG
>  	help
>  	  Controls JTAG chains connected to I/O pins
>  
> +config BOOTCOUNT
> +	bool
> +
>  endif # MISC_DEVICES
> diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
> index b085577..fa668c1 100644
> --- a/drivers/misc/Makefile
> +++ b/drivers/misc/Makefile
> @@ -3,3 +3,4 @@
>  #
>  
>  obj-$(CONFIG_JTAG)		+= jtag.o
> +obj-$(CONFIG_BOOTCOUNT)		+= bootcount.o
> diff --git a/drivers/misc/bootcount.c b/drivers/misc/bootcount.c
> new file mode 100644
> index 0000000..0205d00
> --- /dev/null
> +++ b/drivers/misc/bootcount.c
> @@ -0,0 +1,24 @@
> +/*
> + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * GPLv2 Only
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <bootcount.h>
> +
> +static struct bootcount_driver *bd;
> +
> +void bootcount_register(struct bootcount_driver *drv)
> +{
> +	bd = drv;
> +}
> +
> +static int bootcount_inc(void)
> +{
> +	if (bd)
> +		bd->inc(bd);
> +	return 0;
> +}
> +late_initcall(bootcount_inc);

This 'framework' in it's current state doesn't make much sense. It
doesn't even have support for reading the actual count back which I
would see as one of the minimum requirements for this.

Also it's not clear what exactly this boot counter counts. Is it the
number of boots since the beginning of time? Or is it the boot counter
since the last power cycle or since the RTC Backup battery was last
changed?

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
