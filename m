Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x234.google.com ([2a00:1450:4013:c00::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VW3Dg-0005TF-Va
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 11:55:26 +0000
Received: by mail-ee0-f52.google.com with SMTP id c41so3844765eek.25
 for <barebox@lists.infradead.org>; Tue, 15 Oct 2013 04:55:02 -0700 (PDT)
Date: Tue, 15 Oct 2013 13:54:50 +0200
From: Andre Heider <a.heider@gmail.com>
Message-ID: <20131015115448.GA41386@gmail.com>
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

Hi,

On Tue, Oct 15, 2013 at 12:50:14PM +0200, Sascha Hauer wrote:
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

I was solving the same thing just yesterday ;)

What I did was to create a env/init/automount script, what's the advantage of this approach?

Regards,
Andre

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
