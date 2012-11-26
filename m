Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TctDK-0003K1-Pw
 for barebox@lists.infradead.org; Mon, 26 Nov 2012 07:34:48 +0000
Date: Mon, 26 Nov 2012 08:34:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121126073445.GQ10369@pengutronix.de>
References: <20121123155945.GW8327@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121123155945.GW8327@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/2] at91: at91sam9n12 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 23, 2012 at 04:59:45PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	this patch serie add the support of the at91sam9n12 with it's
> 	reference board the n12ek
> 
> 	we do not switch to the defaultenv-2 as I need nfs boot with symlink
> 	and this is not support yet in it
> 
> 	I'll switch all my platform when we will have it
> 
> 	This patch serie depends on the at91_fixes send just before
> 
> 
> wing changes since commit 02d37b5d4598cd3ffea4730aa027c8c04ab1f58d:
> 
>   Revert "mtd: atmel_nand: optimize read/write buffer functions" (2012-11-22 02:21:14 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/at91sam9n12

Applied, thanks

Sascha

> 
> for you to fetch changes up to 96a5ef4e557a816e50e66d9f708934e68b49ea76:
> 
>   at91: add at91sam9n12ek board support (2012-11-22 02:24:59 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (2):
>       arm: at91: add at91sam9n12 support
>       at91: add at91sam9n12ek board support
> 
>  arch/arm/Makefile                                    |    1 +
>  arch/arm/boards/at91sam9n12ek/Makefile               |    1 +
>  arch/arm/boards/at91sam9n12ek/config.h               |    6 ++
>  arch/arm/boards/at91sam9n12ek/env/bin/init_board     |   50 +++++++++++++
>  arch/arm/boards/at91sam9n12ek/env/config             |   41 +++++++++++
>  arch/arm/boards/at91sam9n12ek/init.c                 |  270 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/configs/at91sam9n12ek_defconfig             |   87 +++++++++++++++++++++++
>  arch/arm/mach-at91/Kconfig                           |   23 ++++++
>  arch/arm/mach-at91/Makefile                          |    1 +
>  arch/arm/mach-at91/at91sam9n12.c                     |  233 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/mach-at91/at91sam9n12_devices.c             |  374 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/mach-at91/clock.c                           |   15 ++--
>  arch/arm/mach-at91/gpio.c                            |    2 +-
>  arch/arm/mach-at91/include/mach/at91sam9n12.h        |  166 ++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/mach-at91/include/mach/at91sam9n12_matrix.h |   98 ++++++++++++++++++++++++++
>  arch/arm/mach-at91/include/mach/board.h              |    1 +
>  arch/arm/mach-at91/include/mach/cpu.h                |    7 ++
>  arch/arm/mach-at91/include/mach/hardware.h           |    2 +
>  18 files changed, 1372 insertions(+), 6 deletions(-)
>  create mode 100644 arch/arm/boards/at91sam9n12ek/Makefile
>  create mode 100644 arch/arm/boards/at91sam9n12ek/config.h
>  create mode 100644 arch/arm/boards/at91sam9n12ek/env/bin/init_board
>  create mode 100644 arch/arm/boards/at91sam9n12ek/env/config
>  create mode 100644 arch/arm/boards/at91sam9n12ek/init.c
>  create mode 100644 arch/arm/configs/at91sam9n12ek_defconfig
>  create mode 100644 arch/arm/mach-at91/at91sam9n12.c
>  create mode 100644 arch/arm/mach-at91/at91sam9n12_devices.c
>  create mode 100644 arch/arm/mach-at91/include/mach/at91sam9n12.h
>  create mode 100644 arch/arm/mach-at91/include/mach/at91sam9n12_matrix.h
> 
> Best Regards,
> J.
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
