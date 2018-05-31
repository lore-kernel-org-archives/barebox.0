Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fOPU0-0006Eb-Vq
 for barebox@lists.infradead.org; Thu, 31 May 2018 15:27:33 +0000
Date: Thu, 31 May 2018 17:27:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180531152707.44dmzdu4pa3ypupq@pengutronix.de>
References: <20180529044731.3964-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180529044731.3964-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 0/7] VF610 OCOTP MAC address layout change
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, Vivien Didelot <vivien.didelot@savoirfairelinux.com>

On Mon, May 28, 2018 at 09:47:24PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This patchset is as a result of dealing with VF610 U-Boot OCOTP/MAC
> quirk.
> 
> 	- Patch 1 and 2 are the actual patches dealing with U-Boot's
>           idiosyncrasy (see individual commit messages for more
>           details)
> 
> 	- Patch 3 and 4 are trivial refactoring made possible with
>           <linux/bitfield.h>
> 
> 	- Patches 5, 6 and 7 are very much optional. IMHO,
>           drivers/nvmem is a better place for OCOTP code, but if we
>           want to keep the code as is, I am more than happy to drop
>           these from the series.
> 
> Changes since [v1]:
> 
> 	- Fixed a bug in MAC formatting spotted by Sascha.
> 
> 
> [v1] http://lists.infradead.org/pipermail/barebox/2018-May/033094.html
> 
> Feedback is wellcome!

Applied, thanks

Sascha

> 
> Thanks,
> Andrey Smirnov
> 
> Andrey Smirnov (7):
>   i.MX: ocotp: Unify code paths for reading MAC address
>   i.MX: ocotp: Change MAC address layout for VFxxx
>   i.MX: ocotp: Simplify OCOTP field packing/unpacking
>   i.MX: ocotp: Simplify BF macro
>   i.MX: ocotp: Move OCOTP driver to drivers/nvmem
>   nvmem: Use name from struct nvmem_config for cdev
>   nvmem: ocotp: Convert to NVMEM device
> 
>  arch/arm/mach-imx/Kconfig                    |  23 +--
>  arch/arm/mach-imx/Makefile                   |   1 -
>  arch/arm/mach-imx/include/mach/ocotp.h       |  31 ++-
>  drivers/nvmem/Kconfig                        |  21 ++
>  drivers/nvmem/Makefile                       |   3 +
>  drivers/nvmem/core.c                         |  18 +-
>  {arch/arm/mach-imx => drivers/nvmem}/ocotp.c | 201 ++++++++++++-------
>  7 files changed, 183 insertions(+), 115 deletions(-)
>  rename {arch/arm/mach-imx => drivers/nvmem}/ocotp.c (79%)
> 
> -- 
> 2.17.0
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
