Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJtfm-0003Lx-UV
 for barebox@lists.infradead.org; Thu, 02 Apr 2020 06:49:56 +0000
Date: Thu, 2 Apr 2020 08:49:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200402064953.GD29627@pengutronix.de>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
 <20200331184722.22707-12-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331184722.22707-12-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 11/23] ARM: zii-common: Add common environment directory
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Mar 31, 2020 at 11:47:10AM -0700, Andrey Smirnov wrote:
> Establish a common environment directory between all ZII boards, so
> that we could share common bits and pieces. As a first step, get rid
> of board scecific net boot scripts and replace them with a single
> shared one.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/zii-common/Makefile           |  1 +
>  .../defaultenv-zii-common}/boot/net           |  9 +++++--
>  arch/arm/boards/zii-imx51-rdu1/board.c        |  1 +
>  arch/arm/boards/zii-imx6q-rdu2/board.c        |  1 +
>  .../zii-imx6q-rdu2/defaultenv-rdu2/boot/net   | 24 -------------------
>  arch/arm/boards/zii-imx7d-dev/board.c         |  2 ++
>  arch/arm/boards/zii-imx8mq-dev/board.c        |  1 +
>  .../defaultenv-imx8mq-zii-dev/boot/net        | 24 -------------------
>  arch/arm/boards/zii-vf610-dev/board.c         |  1 +
>  9 files changed, 14 insertions(+), 50 deletions(-)
>  rename arch/arm/boards/{zii-imx51-rdu1/defaultenv-rdu1 => zii-common/defaultenv-zii-common}/boot/net (73%)
>  delete mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/net
>  delete mode 100644 arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/net
> 
> diff --git a/arch/arm/boards/zii-common/Makefile b/arch/arm/boards/zii-common/Makefile
> index fcc5cdf97..90bdf21e7 100644
> --- a/arch/arm/boards/zii-common/Makefile
> +++ b/arch/arm/boards/zii-common/Makefile
> @@ -1 +1,2 @@
>  obj-y += board.o switch-cmd.o pn-fixup.o
> +bbenv-y += defaultenv-zii-common
> diff --git a/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/net b/arch/arm/boards/zii-common/defaultenv-zii-common/boot/net
> similarity index 73%
> rename from arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/net
> rename to arch/arm/boards/zii-common/defaultenv-zii-common/boot/net
> index 4be8e1e2d..8b07cbbc9 100644
> --- a/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/net
> +++ b/arch/arm/boards/zii-common/defaultenv-zii-common/boot/net
> @@ -2,8 +2,13 @@
>  
>  path="/mnt/tftp"
>  
> -# clear seat network config
> -global.linux.bootargs.rdu_network=
> +#
> +# Clear seat network config. Some boards don't have that config, so
> +# check that it is set first
> +#
> +if [ -n ${global.linux.bootargs.rdu_network} ]; then
> +    global.linux.bootargs.rdu_network=
> +fi
>  
>  global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
>  
> diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
> index 640bb0d1b..8fdcb7626 100644
> --- a/arch/arm/boards/zii-imx51-rdu1/board.c
> +++ b/arch/arm/boards/zii-imx51-rdu1/board.c
> @@ -50,6 +50,7 @@ static int zii_rdu1_init(void)
>  		BBU_HANDLER_FLAG_DEFAULT |
>  		IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER);
>  
> +	defaultenv_append_directory(defaultenv_zii_common);
>  	defaultenv_append_directory(defaultenv_rdu1);
>  
>  	return 0;
> diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
> index 0bb4700b6..6d6bc1caa 100644
> --- a/arch/arm/boards/zii-imx6q-rdu2/board.c
> +++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
> @@ -155,6 +155,7 @@ static int rdu2_devices_init(void)
>  
>  	imx6_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc3", 0);
>  
> +	defaultenv_append_directory(defaultenv_zii_common);
>  	defaultenv_append_directory(defaultenv_rdu2);
>  
>  	return 0;
> diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/net b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/net
> deleted file mode 100644
> index 4090c2f4a..000000000
> --- a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/net
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -#!/bin/sh
> -
> -path="/mnt/tftp"
> -
> -# clear seat network config
> -global.linux.bootargs.rdu_network=
> -
> -global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
> -
> -oftree="${path}/${global.user}-oftree-${global.hostname}"
> -if [ -f "${oftree}" ]; then
> -	global.bootm.oftree="$oftree"
> -fi
> -
> -nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
> -
> -ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
> -
> -initramfs="${path}/${global.user}-initramfs-${global.hostname}"
> -if [ -f "${initramfs}" ]; then
> -	global.bootm.initrd="$initramfs"
> -else
> -	global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
> -fi
> \ No newline at end of file
> diff --git a/arch/arm/boards/zii-imx7d-dev/board.c b/arch/arm/boards/zii-imx7d-dev/board.c
> index b53a6af49..6b409e23b 100644
> --- a/arch/arm/boards/zii-imx7d-dev/board.c
> +++ b/arch/arm/boards/zii-imx7d-dev/board.c
> @@ -55,6 +55,8 @@ static int zii_imx7d_dev_init(void)
>  	else if (of_machine_is_compatible("zii,imx7d-rmu2"))
>  		barebox_set_hostname("rmu2");
>  
> +	defaultenv_append_directory(defaultenv_zii_common);
> +
>  	return 0;
>  }
>  late_initcall(zii_imx7d_dev_init);
> diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
> index ddd15299c..285e889fe 100644
> --- a/arch/arm/boards/zii-imx8mq-dev/board.c
> +++ b/arch/arm/boards/zii-imx8mq-dev/board.c
> @@ -39,6 +39,7 @@ static int zii_imx8mq_dev_init(void)
>  	else
>  		of_device_enable_path("/chosen/environment-sd");
>  
> +	defaultenv_append_directory(defaultenv_zii_common);
>  	defaultenv_append_directory(defaultenv_imx8mq_zii_dev);
>  
>  	return 0;
> diff --git a/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/net b/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/net
> deleted file mode 100644
> index 4090c2f4a..000000000
> --- a/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/net
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -#!/bin/sh
> -
> -path="/mnt/tftp"
> -
> -# clear seat network config
> -global.linux.bootargs.rdu_network=
> -
> -global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
> -
> -oftree="${path}/${global.user}-oftree-${global.hostname}"
> -if [ -f "${oftree}" ]; then
> -	global.bootm.oftree="$oftree"
> -fi
> -
> -nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
> -
> -ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
> -
> -initramfs="${path}/${global.user}-initramfs-${global.hostname}"
> -if [ -f "${initramfs}" ]; then
> -	global.bootm.initrd="$initramfs"
> -else
> -	global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
> -fi
> \ No newline at end of file
> diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
> index 1d10f12f6..6b80ec428 100644
> --- a/arch/arm/boards/zii-vf610-dev/board.c
> +++ b/arch/arm/boards/zii-vf610-dev/board.c
> @@ -141,6 +141,7 @@ static int zii_vf610_dev_set_hostname(void)
>  		}
>  	}
>  
> +	defaultenv_append_directory(defaultenv_zii_common);

The zii-vf610 doesn't set CONFIG_MACH_ZII_COMMON, so the common env is not
compiled in which results in a linker error. What's the correct way to
fix that? Specify CONFIG_MACH_ZII_COMMON for the vf610 board?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
