Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGOUU-0006wP-MA
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 09:00:51 +0000
Date: Wed, 28 Jan 2015 10:00:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150128090028.GB12209@pengutronix.de>
References: <1422308027-13836-1-git-send-email-robert.jarzmik@free.fr>
 <1422308027-13836-2-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422308027-13836-2-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH 2/2] ARM: pxa: add lubbock board support
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Mon, Jan 26, 2015 at 10:33:47PM +0100, Robert Jarzmik wrote:
> +
> +static int lubbock_mem_init(void)
> +{
> +	arm_add_mem_device("ram0", 0xa0000000, SZ_64M);
> +	arm_add_mem_device("sram0", 0x0a000000, SZ_1M);

When doing this you'll end up with the SRAM being in ATAGS which is
probably not what you want. Use add_mem_device() instead.

> +	return 0;
> +}
> +mem_initcall(lubbock_mem_init);
> diff --git a/arch/arm/boards/lubbock/env/bin/init b/arch/arm/boards/lubbock/env/bin/init
> new file mode 100644
> index 0000000..6cd0acb
> --- /dev/null
> +++ b/arch/arm/boards/lubbock/env/bin/init
> @@ -0,0 +1,24 @@
> +#!/bin/sh
> +
> +PATH=/env/bin
> +export PATH
> +
> +. /env/config
> +addpart /dev/nor0 $mtdparts
> +
> +# Phase1: check for MTD override
> +mtd_env_override
> +if [ $? = 0 ]; then
> +    echo "Switching to custom environment"
> +    /env/init
> +    exit
> +fi
> +
> +# Phase2: initiate network
> +eth0.ethaddr="08:00:3e:26:0a:5b"

No hardcoded MAC addresses please. barebox generates a random MAC
address for you if your board is unable to provide a real one.

> +dhcp -H lubbock

dhcp during init time? This unnecessarily delays the boot process when
booting from flash.

This environment looks very specific to your usecase. Can't you just use
the generic defenv-2 template?

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
