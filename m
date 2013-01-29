Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U073e-0007v8-4c
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 09:00:47 +0000
Date: Tue, 29 Jan 2013 10:00:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130129090044.GN1906@pengutronix.de>
References: <20130128222510.GS26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130128222510.GS26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/2] macb: sync with linux and prepare for gmac support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 28, 2013 at 11:25:10PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> The following changes since commit aff77ab814543ac61d0b3a00fcb6d1efefe24150:
> 
>   Merge branch 'for-next/omap' into next (2013-01-28 08:29:48 +0100)
> 
> are available in the git repository at:
> 
> 
>   git://git.jcrosoft.org/barebox.git delivery/macb

Applied, thanks

Sascha

> 
> for you to fetch changes up to 7f3b3f22956d05718ab6a643afea26ada8c6d8c9:
> 
>   macb: allow to pass the phy interface (2013-01-29 05:11:55 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (2):
>       macb: sync register access and clock with the kernel
>       macb: allow to pass the phy interface
> 
>  arch/arm/boards/at91rm9200ek/init.c      |    2 +-
>  arch/arm/boards/at91sam9260ek/init.c     |    2 +-
>  arch/arm/boards/at91sam9263ek/init.c     |    2 +-
>  arch/arm/boards/at91sam9m10g45ek/init.c  |    2 +-
>  arch/arm/boards/at91sam9x5ek/init.c      |    2 +-
>  arch/arm/boards/pm9263/init.c            |    2 +-
>  arch/arm/boards/pm9g45/init.c            |    2 +-
>  arch/arm/boards/qil-a9260/init.c         |    2 +-
>  arch/arm/boards/tny-a926x/init.c         |    2 +-
>  arch/arm/boards/usb-a926x/init.c         |    2 +-
>  arch/arm/mach-at91/at91rm9200_devices.c  |    2 +-
>  arch/arm/mach-at91/at91sam9260_devices.c |    2 +-
>  arch/arm/mach-at91/at91sam9263_devices.c |    2 +-
>  arch/arm/mach-at91/at91sam9g45_devices.c |    2 +-
>  arch/arm/mach-at91/at91sam9x5_devices.c  |    4 ++--
>  arch/arm/mach-at91/include/mach/board.h  |    3 ++-
>  drivers/net/at91_ether.c                 |    2 +-
>  drivers/net/macb.c                       |   69 ++++++++++++++++++++++++++++++---------------------------------------
>  drivers/net/macb.h                       |    6 ++++++
>  19 files changed, 55 insertions(+), 57 deletions(-)
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
