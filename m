Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gmVZK-0000hx-RZ
 for barebox@lists.infradead.org; Thu, 24 Jan 2019 03:20:45 +0000
Received: by mail-wr1-x443.google.com with SMTP id x10so4848759wrs.8
 for <barebox@lists.infradead.org>; Wed, 23 Jan 2019 19:20:42 -0800 (PST)
MIME-Version: 1.0
References: <20190123151620.4398-1-vivien.didelot@gmail.com>
In-Reply-To: <20190123151620.4398-1-vivien.didelot@gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 23 Jan 2019 19:20:29 -0800
Message-ID: <CAHQ1cqHbQQnW84EwsjjRP63ci_kqr=FUMm4FAboWJ7EHQ_k4ww@mail.gmail.com>
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
Subject: Re: [PATCH v2 1/2] ARM: zii-vf610-dev: fix boot from SD
To: Vivien Didelot <vivien.didelot@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jan 23, 2019 at 7:16 AM Vivien Didelot <vivien.didelot@gmail.com> wrote:
>
> Since 5f99a8d40305 ("dts: VFxxx: Add aliases for ESDHC controllers"),
> the SD card slot has a consistent name across all ZII Dev platforms,
> including CFU1. They all use mmc1 instead of mci0 or mci1.
>
> This allows us to completely drop the init scripts from the default
> ZII VF610 Dev environment, and fix the boot/sd script.
>

Looks good to me:

Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>

> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> ---
>  .../zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd  |  8 ++++++--
>  .../defaultenv-zii-vf610-dev/init/automount-sd      | 13 -------------
>  .../defaultenv-zii-vf610-dev/init/choose-dtb        |  4 ----
>  3 files changed, 6 insertions(+), 19 deletions(-)
>  delete mode 100644 arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd
>  delete mode 100644 arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/choose-dtb
>
> diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
> index cf8eec363..92dfae0ab 100644
> --- a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
> +++ b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/boot/sd
> @@ -1,4 +1,8 @@
>  #!/bin/sh
>
> -global.bootm.image=/mnt/sd/zImage
> -global.bootm.oftree=/mnt/sd/${global.bootm.oftree}
> +detect mmc1
> +
> +path="/mnt/mmc1.0"
> +
> +global.bootm.image="${path}/zImage"
> +global.bootm.oftree="${path}/vf610-zii-${global.hostname}.dtb"
> diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd
> deleted file mode 100644
> index f44dab34e..000000000
> --- a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/automount-sd
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -#!/bin/sh
> -
> -if [ x${global.hostname} = xdev-rev-b -o x${global.hostname} = xdev-rev-c ];
> -then
> -    global sd=0
> -else
> -    global sd=1
> -fi
> -
> -mkdir -p /mnt/sd
> -automount /mnt/sd 'mci${global.sd}.probe=1 && mount /dev/disk${global.sd}.0 /mnt/sd'
> -
> -exit 0
> diff --git a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/choose-dtb b/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/choose-dtb
> deleted file mode 100644
> index 41a74c3a9..000000000
> --- a/arch/arm/boards/zii-vf610-dev/defaultenv-zii-vf610-dev/init/choose-dtb
> +++ /dev/null
> @@ -1,4 +0,0 @@
> -#!/bin/sh
> -
> -global.bootm.oftree=vf610-zii-${global.hostname}.dtb
> -
> --
> 2.20.1
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
