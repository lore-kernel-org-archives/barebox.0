Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S7trr-0002Wh-R7
 for barebox@lists.infradead.org; Wed, 14 Mar 2012 19:28:17 +0000
Date: Wed, 14 Mar 2012 20:28:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120314192808.GT3852@pengutronix.de>
References: <20120312112159.GE444@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120312112159.GE444@game.jcrosoft.org>
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
Subject: Re: [PATCH 00/14]  Atmel Reference Board Update
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 12, 2012 at 12:21:59PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	This patch serie update the support of the Atmel Reference Board with
> 
> 	 - MMU
> 	 - USB device
> 	 - DFU
> 	 - USB Gadget Serial
> 	 - LEDS
> 	 - gpio Keyboard
> 
> Please pull
> The following changes since commit e0d674735b26c279d4cb6c73c140f1e0866a7953:

merged, thanks.

Sascha

> 
>   mach-omap: add HAS_DEBUG_LL (2012-03-05 18:13:00 +0100)
> 
> are available in the git repository at:
>   git://git.jcrosoft.org/barebox.git at91-update
> 
> Jean-Christophe PLAGNIOL-VILLARD (14):
>       macb: fix mmu support
>       at91sam9263ek: add runtime nor detection
>       at91sam9263ek: add leds support
>       at91sam9263ek: add dfu and usb serial support
>       at91sam9263ek: update defconfig
>       at91sam9261ek/9g10ek: update partition layout
>       at91sam9261ek/9g10ek: add leds support
>       at91sam9261ek/9g10ek: add dfu and usb serial support
>       at91sam9261ek/9g10ek: add gpio Keyboard support
>       at91sam9261ek/9g10ek: update board supprt
>       at91sam9m10g45ek: update partition layout
>       at91sam9m10g45ek: add leds support
>       at91sam9m10g45ek: update defconfig
>       at91sam9260ek/9g20ek: update defconfig
> 
>  arch/arm/boards/at91sam9261ek/env/bin/init_board |   51 ++++++++++
>  arch/arm/boards/at91sam9261ek/env/config         |    7 +-
>  arch/arm/boards/at91sam9261ek/init.c             |  111 +++++++++++++++++++++-
>  arch/arm/boards/at91sam9263ek/env/bin/init_board |   51 ++++++++++
>  arch/arm/boards/at91sam9263ek/env/config         |    6 +-
>  arch/arm/boards/at91sam9263ek/init.c             |   83 ++++++++++++++--
>  arch/arm/boards/at91sam9m10g45ek/env/config      |    4 +-
>  arch/arm/boards/at91sam9m10g45ek/init.c          |   46 +++++++++-
>  arch/arm/configs/at91sam9260ek_defconfig         |    3 +-
>  arch/arm/configs/at91sam9261ek_defconfig         |   29 +++++-
>  arch/arm/configs/at91sam9263ek_defconfig         |   31 +++++-
>  arch/arm/configs/at91sam9g10ek_defconfig         |   39 +++++++-
>  arch/arm/configs/at91sam9g20ek_defconfig         |    3 +-
>  arch/arm/configs/at91sam9m10g45ek_defconfig      |   32 +++++--
>  drivers/net/macb.c                               |    8 +-
>  15 files changed, 453 insertions(+), 51 deletions(-)
>  create mode 100644 arch/arm/boards/at91sam9261ek/env/bin/init_board
>  create mode 100644 arch/arm/boards/at91sam9263ek/env/bin/init_board
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
