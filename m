Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TPqz4-0004hv-K1
 for barebox@lists.infradead.org; Sun, 21 Oct 2012 08:34:11 +0000
Date: Sun, 21 Oct 2012 10:34:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121021083408.GX27665@pengutronix.de>
References: <20121017180024.GB446@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121017180024.GB446@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/3] at91sam9x5 add nand pmecc support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 17, 2012 at 08:00:24PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	on the sam9x5 series we have now a working hw ecc and it's needed for
> 	nand boot
> 
> 	add it's support to barebox
> 
> The following changes since commit 44003508719639b99c1724d27019f778ec0546b7:
> 
>   at91sam9x5ek: fix bootstrap size to 256KiB (2012-10-17 15:05:52 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/at91sam9x5_pmecc

Applied, thanks

Sascha

> 
> for you to fetch changes up to 14311f1005341b9019afe4ec10c5a1494e68a42c:
> 
>   at91sam9x5ek: switch to hw pmecc nand support (2012-10-17 16:59:55 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (3):
>       nand: atmel add pmecc support
>       at91sam9x5: add pmecc support
>       at91sam9x5ek: switch to hw pmecc nand support
> 
>  arch/arm/boards/at91sam9x5ek/init.c     |    3 +
>  arch/arm/configs/at91sam9x5ek_defconfig |   11 +-
>  arch/arm/mach-at91/at91sam9x5_devices.c |   16 +-
>  arch/arm/mach-at91/include/mach/board.h |    4 +
>  drivers/mtd/nand/Kconfig                |    8 +
>  drivers/mtd/nand/atmel_nand.c           |  782 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++------
>  drivers/mtd/nand/atmel_nand_ecc.h       |  114 +++++++++++++-
>  7 files changed, 886 insertions(+), 52 deletions(-)
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
