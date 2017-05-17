Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAsQa-0000jg-KH
 for barebox@lists.infradead.org; Wed, 17 May 2017 06:27:22 +0000
Date: Wed, 17 May 2017 08:26:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170517062659.t4ir7yv73jogpmpv@pengutronix.de>
References: <1494587239-33771-1-git-send-email-d.schultz@phytec.de>
 <1494587239-33771-2-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1494587239-33771-2-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v3 2/4] arm: boards: phytec-som-am335x: Add automount
 script
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, May 12, 2017 at 01:07:17PM +0200, Daniel Schultz wrote:
> Each MMC boot source is mounted to /mnt/mmcN.0. To make the not-mounted
> boot source available in Barebox, an automount script mounts
> this device also to /mnt/, if the directory will be accessed.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  .../defaultenv-physom-am335x/init/automount         | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>  create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/automount

This should not be needed when "fs: Create automount entries for the
default mount pathes" is applied, right?

Sascha

> 
> diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/automount b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/automount
> new file mode 100644
> index 0000000..53ecbe3
> --- /dev/null
> +++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/automount
> @@ -0,0 +1,21 @@
> +#!/bin/sh
> +
> +# automount tftp server based on $eth0.serverip
> +
> +mkdir -p /mnt/tftp
> +automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
> +
> +# automount nfs server's nfsroot
> +
> +mkdir -p /mnt/nfs
> +automount /mnt/nfs 'ifup eth0 && mount -t nfs ${eth0.serverip}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
> +
> +#automount SD card and EMMC boot partitions
> +
> +if [ $bootsource = mmc -a $bootsource_instance = 1 ]; then
> +	mkdir -p /mnt/mmc0.0
> +	automount /mnt/mmc0.0 '[ -e /dev/mmc0.0 ] && mount /dev/mmc0.0 /mnt/mmc0.0'
> +else
> +	mkdir -p /mnt/mmc1.0
> +	automount /mnt/mmc1.0 '[ -e /dev/mmc1.0 ] && mount /dev/mmc1.0 /mnt/mmc1.0'
> +fi
> -- 
> 1.9.1
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
