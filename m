Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo5.mail-out.ovh.net ([178.32.119.138]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U1Bkb-0006iH-G2
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:13:34 +0000
Received: from mail409.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 8B54C102007C
 for <barebox@lists.infradead.org>; Fri,  1 Feb 2013 09:23:40 +0100 (CET)
Date: Fri, 1 Feb 2013 09:12:17 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130201081217.GJ26329@game.jcrosoft.org>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
 <1359705587-9762-22-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359705587-9762-22-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 21/34] ARM AT91: switch remaining boards to
 barebox_arm_entry
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:59 Fri 01 Feb     , Sascha Hauer wrote:
> For At91 boards which do not have a SDRAM size detection function
> we create a lowlevel reset function which calls barebox_arm_entry
> manually with the known memory size.

we have so no need
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/Kconfig                            |    2 ++
>  arch/arm/boards/at91sam9m10g45ek/Makefile   |    2 ++
>  arch/arm/boards/at91sam9m10g45ek/lowlevel.c |   11 +++++++++++
>  arch/arm/boards/at91sam9m10ihd/Makefile     |    2 ++
>  arch/arm/boards/at91sam9m10ihd/lowlevel.c   |   11 +++++++++++
>  arch/arm/boards/at91sam9n12ek/Makefile      |    2 ++
>  arch/arm/boards/at91sam9n12ek/lowlevel.c    |   11 +++++++++++
>  arch/arm/boards/at91sam9x5ek/Makefile       |    2 ++
>  arch/arm/boards/at91sam9x5ek/lowlevel.c     |   11 +++++++++++
>  arch/arm/boards/pm9g45/Makefile             |    2 ++
>  arch/arm/boards/pm9g45/lowlevel.c           |   11 +++++++++++
>  arch/arm/mach-at91/Kconfig                  |    2 --
>  12 files changed, 67 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/boards/at91sam9m10g45ek/lowlevel.c
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/lowlevel.c
>  create mode 100644 arch/arm/boards/at91sam9n12ek/lowlevel.c
>  create mode 100644 arch/arm/boards/at91sam9x5ek/lowlevel.c
>  create mode 100644 arch/arm/boards/pm9g45/lowlevel.c
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index c7daebe..0d5e004 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -30,6 +30,8 @@ config ARCH_AT91
>  	select CLKDEV_LOOKUP
>  	select HAS_DEBUG_LL
>  	select HAVE_MACH_ARM_HEAD
> +	select MACH_HAS_LOWLEVEL_INIT
> +	select MACH_DO_LOWLEVEL_INIT
>  
>  config ARCH_BCM2835
>  	bool "Broadcom BCM2835 boards"
> diff --git a/arch/arm/boards/at91sam9m10g45ek/Makefile b/arch/arm/boards/at91sam9m10g45ek/Makefile
> index eb072c0..47ab803 100644
> --- a/arch/arm/boards/at91sam9m10g45ek/Makefile
> +++ b/arch/arm/boards/at91sam9m10g45ek/Makefile
> @@ -1 +1,3 @@
>  obj-y += init.o
> +obj-y += lowlevel.o
> +pbl-y += lowlevel.o
> diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
> new file mode 100644
> index 0000000..65259bb
> --- /dev/null
> +++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
> @@ -0,0 +1,11 @@
> +#include <common.h>
> +#include <sizes.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/hardware.h>
> +
> +void __naked reset(void)
> +{
> +	common_reset();
> +	barebox_arm_entry(AT91_SDRAM_BASE, SZ_128M, 0);
> +}
> diff --git a/arch/arm/boards/at91sam9m10ihd/Makefile b/arch/arm/boards/at91sam9m10ihd/Makefile
> index f2acf20..4ec0b36 100644
> --- a/arch/arm/boards/at91sam9m10ihd/Makefile
> +++ b/arch/arm/boards/at91sam9m10ihd/Makefile
> @@ -1,2 +1,4 @@
>  obj-y += init.o
>  obj-y += hw_version.o
> +obj-y += lowlevel.o
> +pbl-y += lowlevel.o
> diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
> new file mode 100644
> index 0000000..65259bb
> --- /dev/null
> +++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
> @@ -0,0 +1,11 @@
> +#include <common.h>
> +#include <sizes.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/hardware.h>
> +
> +void __naked reset(void)
> +{
> +	common_reset();
> +	barebox_arm_entry(AT91_SDRAM_BASE, SZ_128M, 0);
> +}
> diff --git a/arch/arm/boards/at91sam9n12ek/Makefile b/arch/arm/boards/at91sam9n12ek/Makefile
> index eb072c0..6c1a61f 100644
> --- a/arch/arm/boards/at91sam9n12ek/Makefile
> +++ b/arch/arm/boards/at91sam9n12ek/Makefile
> @@ -1 +1,3 @@
> +obj-y += lowlevel.o
> +pbl-y += lowlevel.o
>  obj-y += init.o
> diff --git a/arch/arm/boards/at91sam9n12ek/lowlevel.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
> new file mode 100644
> index 0000000..65259bb
> --- /dev/null
> +++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
> @@ -0,0 +1,11 @@
> +#include <common.h>
> +#include <sizes.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/hardware.h>
> +
> +void __naked reset(void)
> +{
> +	common_reset();
> +	barebox_arm_entry(AT91_SDRAM_BASE, SZ_128M, 0);
> +}
> diff --git a/arch/arm/boards/at91sam9x5ek/Makefile b/arch/arm/boards/at91sam9x5ek/Makefile
> index f2acf20..4ec0b36 100644
> --- a/arch/arm/boards/at91sam9x5ek/Makefile
> +++ b/arch/arm/boards/at91sam9x5ek/Makefile
> @@ -1,2 +1,4 @@
>  obj-y += init.o
>  obj-y += hw_version.o
> +obj-y += lowlevel.o
> +pbl-y += lowlevel.o
> diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
> new file mode 100644
> index 0000000..65259bb
> --- /dev/null
> +++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
> @@ -0,0 +1,11 @@
> +#include <common.h>
> +#include <sizes.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/hardware.h>
> +
> +void __naked reset(void)
> +{
> +	common_reset();
> +	barebox_arm_entry(AT91_SDRAM_BASE, SZ_128M, 0);
> +}
> diff --git a/arch/arm/boards/pm9g45/Makefile b/arch/arm/boards/pm9g45/Makefile
> index eb072c0..47ab803 100644
> --- a/arch/arm/boards/pm9g45/Makefile
> +++ b/arch/arm/boards/pm9g45/Makefile
> @@ -1 +1,3 @@
>  obj-y += init.o
> +obj-y += lowlevel.o
> +pbl-y += lowlevel.o
> diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
> new file mode 100644
> index 0000000..65259bb
> --- /dev/null
> +++ b/arch/arm/boards/pm9g45/lowlevel.c
> @@ -0,0 +1,11 @@
> +#include <common.h>
> +#include <sizes.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/hardware.h>
> +
> +void __naked reset(void)
> +{
> +	common_reset();
> +	barebox_arm_entry(AT91_SDRAM_BASE, SZ_128M, 0);
> +}
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index da2768a..337d2a6 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -91,8 +91,6 @@ config SOC_AT91RM9200
>  	select CPU_ARM920T
>  	select HAVE_AT91_DBGU0
>  	select HAS_AT91_ETHER
> -	select MACH_HAS_LOWLEVEL_INIT
> -	select MACH_DO_LOWLEVEL_INIT
>  
>  config SOC_AT91SAM9260
>  	bool
> -- 
> 1.7.10.4
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
