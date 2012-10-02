Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJ3if-0003Nw-LE
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 14:45:10 +0000
Received: from corgarff.edi.geip.ge.com (corgarff.edi.geip.ge.com
 [3.26.68.194])
 by selma.edi.geip.ge.com (Postfix) with ESMTP id D51C1E05F8
 for <barebox@lists.infradead.org>; Tue,  2 Oct 2012 15:44:59 +0100 (BST)
Message-ID: <506AFDEB.4010805@ge.com>
Date: Tue, 02 Oct 2012 15:44:59 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <20120924093122.GD26553@game.jcrosoft.org>
In-Reply-To: <20120924093122.GD26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/1 v7] net: introduce phylib
To: barebox@lists.infradead.org

On 24/09/12 10:31, Jean-Christophe PLAGNIOL-VILLARD wrote:

> 
> Adapt phylib from linux
> 
> This will allow to have
>  - phy drivers
>  - to only connect the phy at then opening of the device
>  - if the phy is not ready or down fail on open
> 
> Same behaviour as in linux and will allow to share code and simplify porting.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (1):
>       net: introduce phylib
> 
>  arch/arm/boards/freescale-mx6-arm2/board.c      |   43 ++---
>  arch/arm/boards/freescale-mx6-sabrelite/board.c |   40 ++--
>  arch/arm/configs/phycard_a_l1_defconfig         |    2 +-
>  arch/arm/configs/tx51stk5_defconfig             |    2 +-
>  arch/ppc/boards/pcm030/pcm030.c                 |    4 +-
>  arch/ppc/mach-mpc5xxx/include/mach/fec.h        |   14 --
>  drivers/net/Kconfig                             |   30 +--
>  drivers/net/Makefile                            |    2 +-
>  drivers/net/altera_tse.c                        |   48 +++--
>  drivers/net/altera_tse.h                        |    3 +-
>  drivers/net/at91_ether.c                        |   49 ++---
>  drivers/net/designware.c                        |   62 ++++---
>  drivers/net/dm9k.c                              |   50 +++--
>  drivers/net/ep93xx.c                            |   35 ++--
>  drivers/net/ep93xx.h                            |    2 +-
>  drivers/net/fec_imx.c                           |   89 +++++----
>  drivers/net/fec_imx.h                           |    6 +-
>  drivers/net/fec_mpc5200.c                       |   58 +++---
>  drivers/net/fec_mpc5200.h                       |    4 +-
>  drivers/net/gianfar.c                           |   61 +++---
The mdiobus_scan performed when registering the mdio bus at probe time
has an impact on boot time. I have a 85xx board whose PHY needs 450ms to
be ready for access.

I will send a patch for the gianfar driver to register the mdio bus only
when the device is open.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
