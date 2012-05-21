Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWYmd-00082M-Gv
 for barebox@lists.infradead.org; Mon, 21 May 2012 20:00:48 +0000
Date: Mon, 21 May 2012 22:00:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120521200044.GE30400@pengutronix.de>
References: <20120517175244.GH30400@pengutronix.de>
 <1337334211-12576-1-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337334211-12576-1-git-send-email-agalakhov@gmail.com>
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
Subject: Re: [PATCHv4 0/7] S5PV210 support (upd.)
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Alexey,

Finally applied this series up to 5/7, see comment there.

Thanks
 Sascha

On Fri, May 18, 2012 at 03:43:24PM +0600, Alexey Galakhov wrote:
> Removed function renaming (s3c24xx_get_memory_size).
> Everything else is left untouched and only reflects the
> above change.
> 
> Alexey Galakhov (7):
>   Make S3C24xx config options available for all S3Cs
>   Split S3C generic and S3C24xx specific code
>   Add support for Samsung S5P architecture (S5PV210)
>   S5P boot header and image generator
>   S5P lowlevel clock init
>   S5P DRAM support
>   Add FriendlyArm Tiny210 board (S5PV210)
> 
>  .gitignore                                         |    2 +
>  Makefile                                           |    2 +-
>  arch/arm/Kconfig                                   |    6 +
>  arch/arm/Makefile                                  |    8 +
>  arch/arm/boards/a9m2410/a9m2410.c                  |    2 +-
>  arch/arm/boards/a9m2410/config.h                   |    2 +-
>  arch/arm/boards/a9m2410/lowlevel_init.S            |    2 +-
>  arch/arm/boards/a9m2440/a9m2440.c                  |    2 +-
>  arch/arm/boards/a9m2440/config.h                   |    2 +-
>  arch/arm/boards/a9m2440/lowlevel_init.S            |    2 +-
>  arch/arm/boards/mini2440/config.h                  |    2 +-
>  arch/arm/boards/mini2440/lowlevel_init.S           |    2 +-
>  arch/arm/boards/mini2440/mini2440.c                |    2 +-
>  arch/arm/boards/tiny210/Makefile                   |    1 +
>  arch/arm/boards/tiny210/config.h                   |   21 +
>  arch/arm/boards/tiny210/lowlevel.c                 |   76 ++
>  arch/arm/boards/tiny210/tiny210.c                  |  113 +++
>  arch/arm/configs/a9m2410_defconfig                 |    2 +-
>  arch/arm/configs/a9m2440_defconfig                 |    4 +-
>  arch/arm/configs/mini2440_defconfig                |    2 +-
>  arch/arm/configs/tiny210_defconfig                 |   17 +
>  arch/arm/mach-samsung/Kconfig                      |   57 +-
>  arch/arm/mach-samsung/Makefile                     |    7 +-
>  arch/arm/mach-samsung/clocks-s5pcxx.c              |   98 +++
>  arch/arm/mach-samsung/generic.c                    |  113 ---
>  arch/arm/mach-samsung/gpio-s5pcxx.c                |  123 +++
>  arch/arm/mach-samsung/include/mach/gpio.h          |    3 +
>  arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h  |  798 ++++++++++++++++++++
>  arch/arm/mach-samsung/include/mach/s3c-clocks.h    |   25 +-
>  arch/arm/mach-samsung/include/mach/s3c-generic.h   |    9 +-
>  arch/arm/mach-samsung/include/mach/s3c-iomap.h     |   56 +-
>  .../arm/mach-samsung/include/mach/s3c24xx-clocks.h |   24 +
>  arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h  |    6 +-
>  arch/arm/mach-samsung/include/mach/s3c24xx-iomap.h |   69 ++
>  arch/arm/mach-samsung/include/mach/s3c24xx-nand.h  |    2 +-
>  arch/arm/mach-samsung/include/mach/s5pcxx-clocks.h |   55 ++
>  arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h  |   52 ++
>  arch/arm/mach-samsung/lowlevel-init.S              |  317 --------
>  arch/arm/mach-samsung/lowlevel-s3c24x0.S           |  317 ++++++++
>  arch/arm/mach-samsung/lowlevel-s5pcxx.c            |   61 ++
>  arch/arm/mach-samsung/mem-s3c24x0.c                |  143 ++++
>  arch/arm/mach-samsung/mem-s5pcxx.c                 |  260 +++++++
>  drivers/mtd/nand/nand_s3c24xx.c                    |   10 +-
>  scripts/Makefile                                   |    1 +
>  scripts/s5p_cksum.c                                |  140 ++++
>  45 files changed, 2487 insertions(+), 531 deletions(-)
>  create mode 100644 arch/arm/boards/tiny210/Makefile
>  create mode 100644 arch/arm/boards/tiny210/config.h
>  create mode 100644 arch/arm/boards/tiny210/lowlevel.c
>  create mode 100644 arch/arm/boards/tiny210/tiny210.c
>  create mode 100644 arch/arm/configs/tiny210_defconfig
>  create mode 100644 arch/arm/mach-samsung/clocks-s5pcxx.c
>  create mode 100644 arch/arm/mach-samsung/gpio-s5pcxx.c
>  create mode 100644 arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h
>  create mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-clocks.h
>  create mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-iomap.h
>  create mode 100644 arch/arm/mach-samsung/include/mach/s5pcxx-clocks.h
>  create mode 100644 arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h
>  delete mode 100644 arch/arm/mach-samsung/lowlevel-init.S
>  create mode 100644 arch/arm/mach-samsung/lowlevel-s3c24x0.S
>  create mode 100644 arch/arm/mach-samsung/lowlevel-s5pcxx.c
>  create mode 100644 arch/arm/mach-samsung/mem-s3c24x0.c
>  create mode 100644 arch/arm/mach-samsung/mem-s5pcxx.c
>  create mode 100644 scripts/s5p_cksum.c
> 
> -- 
> 1.7.10
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
