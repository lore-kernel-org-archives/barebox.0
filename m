Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBdSm-0006WT-Ds
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 05:27:09 +0000
Date: Mon, 28 Jul 2014 07:26:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140728052644.GR23235@pengutronix.de>
References: <1406302136-26747-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406302136-26747-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 0/4] Freescale P1010RDB board support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 25, 2014 at 04:28:52PM +0100, Renaud Barbier wrote:
> This patch set adds support for the Freescale P1010RDB board.
> The first patch 1/4 is a resend and fix an issue that prevented
> the P1010 from booting. It has also been tested for regression
> on other platforms. The remaining patches adds limited
> SOC support for the P1010 platform with driver enabled for
> the NOR storage device, serial, I2C and Ethernet port.
> 
> Renaud Barbier (4):
>   ppc: 85xx: CCSRBAR mapping moved to start-up code.
>   ppc: Freescale P1010 headers
>   ppc: Freescale P1010 SoC support
>   ppc: minimal Freescale P1010RDB board support

Applied, thanks

Sascha

> 
>  arch/ppc/Makefile                                  |   1 +
>  arch/ppc/boards/freescale-p1010rdb/Makefile        |   4 +
>  arch/ppc/boards/freescale-p1010rdb/config.h        |  58 +++++
>  arch/ppc/boards/freescale-p1010rdb/ddr.c           |  60 +++++
>  arch/ppc/boards/freescale-p1010rdb/env/bin/init    |   2 +
>  arch/ppc/boards/freescale-p1010rdb/env/config      |   2 +
>  arch/ppc/boards/freescale-p1010rdb/law.c           |  24 ++
>  arch/ppc/boards/freescale-p1010rdb/p1010rdb.c      | 209 ++++++++++++++++
>  arch/ppc/boards/freescale-p1010rdb/p1010rdb.h      |  14 ++
>  arch/ppc/boards/freescale-p1010rdb/tlb.c           |  59 +++++
>  arch/ppc/configs/p1010rdb_defconfig                |  55 +++++
>  arch/ppc/cpu-85xx/start.S                          | 106 ++++++++
>  arch/ppc/include/asm/fsl_ifc.h                     | 267 +++++++++++++++++++++
>  arch/ppc/include/asm/fsl_law.h                     |   1 +
>  arch/ppc/include/asm/processor.h                   |   3 +-
>  arch/ppc/mach-mpc85xx/Kconfig                      |  69 ++++--
>  arch/ppc/mach-mpc85xx/cpu_init.c                   | 134 +++++++++--
>  arch/ppc/mach-mpc85xx/cpuid.c                      |   1 +
>  arch/ppc/mach-mpc85xx/fsl_gpio.c                   |  19 ++
>  .../ppc/mach-mpc85xx/include/mach/config_mpc85xx.h |   9 +
>  arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h    |  13 +-
>  arch/ppc/mach-mpc85xx/speed.c                      |  38 ++-
>  22 files changed, 1091 insertions(+), 57 deletions(-)
>  create mode 100644 arch/ppc/boards/freescale-p1010rdb/Makefile
>  create mode 100644 arch/ppc/boards/freescale-p1010rdb/config.h
>  create mode 100644 arch/ppc/boards/freescale-p1010rdb/ddr.c
>  create mode 100644 arch/ppc/boards/freescale-p1010rdb/env/bin/init
>  create mode 100644 arch/ppc/boards/freescale-p1010rdb/env/config
>  create mode 100644 arch/ppc/boards/freescale-p1010rdb/law.c
>  create mode 100644 arch/ppc/boards/freescale-p1010rdb/p1010rdb.c
>  create mode 100644 arch/ppc/boards/freescale-p1010rdb/p1010rdb.h
>  create mode 100644 arch/ppc/boards/freescale-p1010rdb/tlb.c
>  create mode 100644 arch/ppc/configs/p1010rdb_defconfig
>  create mode 100644 arch/ppc/include/asm/fsl_ifc.h
> 
> --
> 1.8.3.1
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
