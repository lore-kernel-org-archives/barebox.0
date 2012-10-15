Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNkmy-0004Wm-3s
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 13:33:00 +0000
Date: Mon, 15 Oct 2012 15:32:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121015133258.GN27665@pengutronix.de>
References: <20121014204622.GT13639@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121014204622.GT13639@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/3] add mtd dataflash support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 14, 2012 at 10:46:22PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	the following patch serie add the dataflash support
> 	and use it on Calao USB-A9263
> 
> 	I'll add later the support on Atmel Reference Board
> 
> The following changes since commit 461e7d7aefb128a63b84687ba7e361473ada91c6:
> 
>   mtd-core: add writesize in MEMGETINFO ioctl (2012-10-13 14:30:50 +0200)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/calao

Pulled, thanks

Sascha

> 
> for you to fetch changes up to cc1c399fbad7c8e818d7030777317703ced86c1c:
> 
>   usb-a9263: add spi dataflash support (2012-10-14 20:13:00 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (3):
>       import include/linux/math64.h
>       mtd: add dataflash support
>       usb-a9263: add spi dataflash support
> 
>  arch/arm/boards/usb-a926x/init.c            |   21 +++
>  arch/arm/configs/usb_a9263_128mib_defconfig |    3 +-
>  arch/arm/configs/usb_a9263_defconfig        |    3 +-
>  drivers/mtd/devices/Kconfig                 |   18 ++
>  drivers/mtd/devices/Makefile                |    1 +
>  drivers/mtd/devices/mtd_dataflash.c         |  882 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/math64.h                      |  121 +++++++++++++
>  include/spi/flash.h                         |    2 +-
>  8 files changed, 1048 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/mtd/devices/mtd_dataflash.c
>  create mode 100644 include/linux/math64.h
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
