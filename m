Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SMffI-0004vk-S0
 for barebox@lists.infradead.org; Tue, 24 Apr 2012 13:20:22 +0000
Date: Tue, 24 Apr 2012 15:20:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120424132016.GW3852@pengutronix.de>
References: <20120424100916.GX20601@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120424100916.GX20601@game.jcrosoft.org>
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
Subject: Re: [FIXES Master] tny-a926x fixes
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 24, 2012 at 12:09:16PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	the following patch series fix the Calao tny-a926x
> 
> 	this is for the master branch
> 
> The following changes since commit 1d79f322f7a3bff9b6b9bde4ce7f391f0316063a:
> 
>   mtd: docg3 fixes backport from Linux kernel (2012-04-17 22:02:54 +0200)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git master-fixes
> 
> for you to fetch changes up to 60e03c64b0c7e6f3aedcf2c9328aa105de3ba11d:

pulled, thanks

Sascha

> 
>   tny-a926x: fix MOB-TNY-MD2 Motherboard support (2012-04-24 18:27:32 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (2):
>       at91: at91_register_uart use number instead of IDs
>       tny-a926x: fix MOB-TNY-MD2 Motherboard support
> 
>  arch/arm/boards/tny-a926x/init.c         |   38 +++--------------------------
>  arch/arm/configs/tny_a9260_defconfig     |    2 +-
>  arch/arm/configs/tny_a9263_defconfig     |    2 +-
>  arch/arm/configs/tny_a9g20_defconfig     |    2 +-
>  arch/arm/mach-at91/Kconfig               |   10 ++++++++
>  arch/arm/mach-at91/at91rm9200_devices.c  |   13 +++-------
>  arch/arm/mach-at91/at91sam9260_devices.c |   19 ++++----------
>  arch/arm/mach-at91/at91sam9261_devices.c |   10 ++-----
>  arch/arm/mach-at91/at91sam9263_devices.c |   10 ++-----
>  arch/arm/mach-at91/at91sam9g45_devices.c |   13 +++-------
>  10 files changed, 37 insertions(+), 82 deletions(-)
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
