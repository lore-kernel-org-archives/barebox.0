Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VW2uG-00050E-3i
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 11:35:21 +0000
Received: from mail409.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id F03F5FFCA68
 for <barebox@lists.infradead.org>; Tue, 15 Oct 2013 13:35:11 +0200 (CEST)
Date: Tue, 15 Oct 2013 13:36:30 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131015113630.GX32444@ns203013.ovh.net>
References: <1381834214-12603-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1381834214-12603-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ARM: rpi: add SD card environment support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:50 Tue 15 Oct     , Sascha Hauer wrote:
> Similar to the OMAP boards mount the SD card to /boot and expect
> the environment as /boot/barebox.env
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/raspberry-pi/rpi.c | 33 +++++++++++++++++++++++++++++++--
>  1 file changed, 31 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
> index d4912cc..971a603 100644
> --- a/arch/arm/boards/raspberry-pi/rpi.c
> +++ b/arch/arm/boards/raspberry-pi/rpi.c
> @@ -15,6 +15,9 @@
>  
>  #include <common.h>
>  #include <init.h>
> +#include <fs.h>
> +#include <linux/stat.h>
> +#include <envfs.h>
>  #include <asm/armlinux.h>
>  #include <generated/mach-types.h>
>  
> @@ -37,11 +40,37 @@ static int rpi_console_init(void)
>  }
>  console_initcall(rpi_console_init);
>  
> +static int rpi_env_init(void)
> +{
> +	struct stat s;
> +	const char *diskdev = "/dev/disk0.0";
> +	int ret;
> +
> +	device_detect_by_name("mci0");
> +
> +	ret = stat(diskdev, &s);
> +	if (ret) {
> +		printf("no %s. using default env\n", diskdev);
> +		return 0;
> +	}
> +
> +	mkdir("/boot", 0666);
> +	ret = mount(diskdev, "fat", "/boot");
> +	if (ret) {
> +		printf("failed to mount %s\n", diskdev);
> +		return 0;
> +	}
> +
> +	default_environment_path = "/boot/barebox.env";
> +
> +	return 0;
> +}

can we drop all of this and do something like this

set_defaultenv and do not have custom code in the c duplicated everywhere?


> +
>  static int rpi_devices_init(void)
>  {
>  	armlinux_set_architecture(MACH_TYPE_BCM2708);
>  	armlinux_set_bootparams((void *)(0x00000100));
> +	rpi_env_init();
>  	return 0;
>  }
> -
> -device_initcall(rpi_devices_init);
> +late_initcall(rpi_devices_init);
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
