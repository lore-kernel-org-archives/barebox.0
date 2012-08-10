Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Szugw-0006Bg-OJ
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 19:16:15 +0000
Date: Fri, 10 Aug 2012 21:16:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120810191612.GD1451@pengutronix.de>
References: <1343232061-1789-1-git-send-email-renaud.barbier@ge.com>
 <1344349858-6068-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344349858-6068-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH V2 0/4] ppc: Freescale TSEC driver
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 07, 2012 at 03:30:54PM +0100, Renaud Barbier wrote:
> The patchset v2 addresses the comments from version 1. 'printf' in the
> Ethernet driver are replaced by dev_dbg, dev_err or dev_info and excessive
> NULL checkings are removed. The platform Ethernet initialization is a
> generic architecture function (moved to mach-mpc85xx).
> Finally, the send function uses 'is_timeout' to wait for packet 
> transmission but the send function still uses 2 descriptors as using only
> one fails.
> 
> Renaud Barbier (4):
>   ppc: GIANFAR base address definition
>   net: GIANFAR driver
>   fsl: Freescale TSEC specific initialization.
>   ppc: P2020RDB Ethernet configuration

Applied, thanks

Sascha

> 
>  arch/ppc/boards/freescale-p2020rdb/p2020rdb.c   |   14 +
>  arch/ppc/configs/p2020rdb_defconfig             |    6 +
>  arch/ppc/mach-mpc85xx/Makefile                  |    1 +
>  arch/ppc/mach-mpc85xx/eth-devices.c             |   49 ++
>  arch/ppc/mach-mpc85xx/include/mach/gianfar.h    |   31 ++
>  arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h |    7 +
>  drivers/net/Kconfig                             |    5 +
>  drivers/net/Makefile                            |    1 +
>  drivers/net/gianfar.c                           |  548 +++++++++++++++++++++++
>  drivers/net/gianfar.h                           |  284 ++++++++++++
>  10 files changed, 946 insertions(+), 0 deletions(-)
>  create mode 100644 arch/ppc/mach-mpc85xx/eth-devices.c
>  create mode 100644 arch/ppc/mach-mpc85xx/include/mach/gianfar.h
>  create mode 100644 drivers/net/gianfar.c
>  create mode 100644 drivers/net/gianfar.h
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
