Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzjDn-0002rX-IH
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 07:33:40 +0000
Date: Mon, 28 Jan 2013 08:33:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130128073338.GG1906@pengutronix.de>
References: <20130127110714.GL26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130127110714.GL26329@game.jcrosoft.org>
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
Subject: Re: [For-nex PATCH 0/8 v2] at91: add atmel lcdc framebuffer support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 27, 2013 at 12:07:14PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	this patch serie add the lcdc framebuffer support
> 
> 	v2:
> 	 - drop board splash.png (we need to create a sub repo for theme)
> 	 - add sam9261ek
> 	 - add sam9263ek
> 	 - add sam9m10ihd
> 
> The following changes since commit cd1c289b2a4949e8acb235d4847419bde784a9d6:
> 
>   Merge branch 'for-next/misc' into next (2013-01-25 19:51:11 +0100)
> 
> are available in the git repository at:
> 
> 
>   git://git.jcrosoft.org/barebox.git delivery/atmel_fb

Applied, thanks

Sascha

> 
> for you to fetch changes up to 4e93093ab5465fdb72526d353e0e05ddad27d38e:
> 
>   at91sam9263ek: add lcd support (2013-01-23 13:39:04 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (8):
>       video: add atmel lcdc frambuffer support
>       at91sam9263: add atmel lcdc frambuffer support
>       at91sam9261: add atmel lcdc frambuffer support
>       at91sam9g45: add atmel lcdc frambuffer support
>       at91sam9m10g45ek: add lcdc support
>       at91sam9m10ihd: add lcd support
>       at91sam9261ek: add lcd support
>       at91sam9263ek: add lcd support
> 
>  arch/arm/boards/at91sam9261ek/env/bin/init_board    |    7 ++
>  arch/arm/boards/at91sam9261ek/init.c                |   83 ++++++++++++++++-
>  arch/arm/boards/at91sam9263ek/env/bin/init_board    |    7 ++
>  arch/arm/boards/at91sam9263ek/init.c                |   72 ++++++++++++++-
>  arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board |    7 ++
>  arch/arm/boards/at91sam9m10g45ek/init.c             |   43 +++++++++
>  arch/arm/boards/at91sam9m10ihd/env/init/splash      |    8 ++
>  arch/arm/boards/at91sam9m10ihd/init.c               |   65 ++++++++++++++
>  arch/arm/configs/at91sam9261ek_defconfig            |    4 +
>  arch/arm/configs/at91sam9263ek_defconfig            |    4 +
>  arch/arm/configs/at91sam9m10g45ek_defconfig         |   11 ++-
>  arch/arm/configs/at91sam9m10ihd_defconfig           |    5 ++
>  arch/arm/mach-at91/at91sam9261_devices.c            |   53 +++++++++++
>  arch/arm/mach-at91/at91sam9263.c                    |    1 +
>  arch/arm/mach-at91/at91sam9263_devices.c            |   42 +++++++++
>  arch/arm/mach-at91/at91sam9g45.c                    |    1 +
>  arch/arm/mach-at91/at91sam9g45_devices.c            |   49 ++++++++++
>  arch/arm/mach-at91/include/mach/board.h             |    4 +
>  drivers/video/Kconfig                               |    4 +
>  drivers/video/Makefile                              |    1 +
>  drivers/video/atmel_lcdfb.c                         |  507 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/video/atmel_lcdc.h                          |  206 ++++++++++++++++++++++++++++++++++++++++++
>  22 files changed, 1179 insertions(+), 5 deletions(-)
>  create mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/splash
>  create mode 100644 drivers/video/atmel_lcdfb.c
>  create mode 100644 include/video/atmel_lcdc.h
> 
> Best Regards,
> J,
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
