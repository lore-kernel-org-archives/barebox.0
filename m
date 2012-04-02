Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEcbL-0005x6-FW
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 08:27:00 +0000
Date: Mon, 2 Apr 2012 10:26:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402082653.GL3852@pengutronix.de>
References: <20120330044138.GY444@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120330044138.GY444@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/6 for this release]
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 30, 2012 at 06:41:38AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	please find fixes for at91 support
> 
> 	 - use dhcp-barebox on all at91
> 	 - re-write at91rm9200 ether driver
> 	 - fix cfi auto detect flash size
> 
> please pull
> The following changes since commit 485cee59cf64b5019c5a294074007b93509b83e0:
> 
>   Merge branch 'work/imx51-babbage-clk' into next (2012-03-23 21:22:14 +0100)
> 
> are available in the git repository at:
> 
> 
>   git://git.jcrosoft.org/barebox.git at91-fixes

Applied the ones I haven't commented on.

Sascha


> 
> for you to fetch changes up to 79ea2bb5284cc4b5b28a3fa3fee6ede7304e4179:
> 
>   at91rm9200ek: adjust kernel partition to be able to flash mainline kernel (2012-03-30 12:51:54 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (6):
>       cfi_flash: fix missing resource update when probing the cfi size
>       net: at91_ether re-implement against new at91rm9200 api
>       at91rm9200ek: enable at91_ether and net support
>       at91: set ip mode to dhcp-barebox
>       at91rm9200ek: update config for network
>       at91rm9200ek: adjust kernel partition to be able to flash mainline kernel
> 
>  arch/arm/boards/at91rm9200ek/env/config     |    7 +-
>  arch/arm/boards/at91sam9260ek/env/config    |    2 +-
>  arch/arm/boards/at91sam9261ek/env/config    |    2 +-
>  arch/arm/boards/at91sam9263ek/env/config    |    2 +-
>  arch/arm/boards/at91sam9m10g45ek/env/config |    2 +-
>  arch/arm/boards/tny-a926x/env/config        |    2 +-
>  arch/arm/boards/usb-a926x/env/config        |    2 +-
>  arch/arm/configs/at91rm9200ek_defconfig     |    9 +
>  drivers/net/Kconfig                         |    1 +
>  drivers/net/at91_ether.c                    |  495 ++++++++++++++-------------
>  drivers/net/at91_ether.h                    |   50 +++
>  drivers/nor/cfi_flash.c                     |    5 +
>  12 files changed, 338 insertions(+), 241 deletions(-)
>  create mode 100644 drivers/net/at91_ether.h
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
