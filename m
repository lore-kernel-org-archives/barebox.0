Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmJQt-0004ys-JY
 for barebox@lists.infradead.org; Wed, 04 Jul 2012 06:51:29 +0000
Date: Wed, 4 Jul 2012 08:51:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120704065122.GE2698@pengutronix.de>
References: <1341244420-15338-1-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1341244420-15338-1-git-send-email-agalakhov@gmail.com>
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
Subject: Re: [PATCH 0/2] Very minimal support S5PV210 board (Tiny210)
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 02, 2012 at 09:53:38PM +0600, Alexey Galakhov wrote:
> This is the revised versions of patches appeared on the list some time ago.
> It supports very minimal subset of Tiny210 functions. It is currently
> bootable from SD card only.

Applied, thanks

Sascha

> 
> Alexey Galakhov (2):
>   S5P DRAM support
>   Add FriendlyArm Tiny210 board (S5PV210)
> 
>  arch/arm/Makefile                                 |    1 +
>  arch/arm/boards/tiny210/Makefile                  |    1 +
>  arch/arm/boards/tiny210/config.h                  |   19 ++
>  arch/arm/boards/tiny210/lowlevel.c                |   72 +++++
>  arch/arm/boards/tiny210/tiny210.c                 |  113 ++++++++
>  arch/arm/configs/tiny210_defconfig                |   17 ++
>  arch/arm/mach-samsung/Kconfig                     |   20 +-
>  arch/arm/mach-samsung/Makefile                    |    2 +-
>  arch/arm/mach-samsung/include/mach/s3c-generic.h  |    6 +
>  arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h |    3 +
>  arch/arm/mach-samsung/mem-s5pcxx.c                |  320 +++++++++++++++++++++
>  11 files changed, 567 insertions(+), 7 deletions(-)
>  create mode 100644 arch/arm/boards/tiny210/Makefile
>  create mode 100644 arch/arm/boards/tiny210/config.h
>  create mode 100644 arch/arm/boards/tiny210/lowlevel.c
>  create mode 100644 arch/arm/boards/tiny210/tiny210.c
>  create mode 100644 arch/arm/configs/tiny210_defconfig
>  create mode 100644 arch/arm/mach-samsung/mem-s5pcxx.c
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
