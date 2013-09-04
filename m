Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VH6ro-0004Rj-HP
 for barebox@lists.infradead.org; Wed, 04 Sep 2013 06:47:05 +0000
Date: Wed, 4 Sep 2013 08:46:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130904064642.GH30088@pengutronix.de>
References: <1378220067-22296-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1378220067-22296-1-git-send-email-renaud.barbier@ge.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 0/4] Update P2020RDB board support to allow NFS booting.
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 03, 2013 at 03:54:23PM +0100, Renaud Barbier wrote:
> This patchset addresses all the comments regarding the initial patch [2/4].
> The comments in respect of the function fdt_stdout_setup have been addressed
> by:
> - Removing the check on the existence of the /chosen node.
> - Returning an errno value instead of 1.
> 
> The comments in respect of the MAC fixup function have been addressed by:
> - Removing the fixup function from the initial patch.
> - Updating eth_of_fixup to set the MAC address based on the Ethernet device
>   node alias.
> 
> Since eth_of_fixup is conditionally compiled, the P2020RDB configuration file
> in patch [4/4] is updated to enable CONFIG_OFDEVICE.
> 
> Renaud Barbier (4):
>   of: base: import of_find_node_by_type
>   ppc: add and update device tree fixup functions
>   ppc: bootm: relocate fdt to valid boot memory
>   ppc: P2020RDB configuration update

Applied, thanks

I splitted up 2/4 into two patches because then we have one patch for
networking and one ppc specific patch.

Sascha

> 
>  arch/ppc/boards/freescale-p2020rdb/env/bin/init |    3 +
>  arch/ppc/boards/freescale-p2020rdb/env/config   |    2 +
>  arch/ppc/boards/freescale-p2020rdb/p2020rdb.c   |    7 +
>  arch/ppc/configs/p2020rdb_defconfig             |   14 ++-
>  arch/ppc/include/asm/processor.h                |    2 +
>  arch/ppc/lib/ppclinux.c                         |   49 ++++++++-
>  arch/ppc/mach-mpc85xx/Makefile                  |    1 +
>  arch/ppc/mach-mpc85xx/fdt.c                     |  146 +++++++++++++++++++++++
>  drivers/of/base.c                               |   29 +++++
>  include/of.h                                    |    2 +
>  net/eth.c                                       |   20 ++--
>  11 files changed, 264 insertions(+), 11 deletions(-)
>  create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/bin/init
>  create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/config
>  create mode 100644 arch/ppc/mach-mpc85xx/fdt.c
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
