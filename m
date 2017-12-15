Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ePkKY-00080M-3m
 for barebox@lists.infradead.org; Fri, 15 Dec 2017 07:22:52 +0000
Date: Fri, 15 Dec 2017 08:22:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171215072227.2claf5mygvvkadps@pengutronix.de>
References: <20171212175557.20067-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171212175557.20067-1-linux@rempel-privat.de>
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
Subject: Re: [PATCH v2 0/5] add support for DPTechnics DPT-Module v1
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 12, 2017 at 06:55:52PM +0100, Oleksij Rempel wrote:
> changes v2:
> - remove dummy board code.
> - provide HAS_NO_BOARD_HL_CODE option
> 
> Oleksij Rempel (5):
>   MIPS: provide HAS_NO_BOARD_HL_CODE
>   MIPS: ar9331: add watchdog support
>   MIPS: ath79: ar9331: add generic RAM macro
>   MIPS: ath79: ar9331: add ar9331_pbl_generic_start macro
>   MIPS: add support for DPTechnics DPT-Module v1

Applied, thanks

Sascha

> 
>  arch/mips/Kconfig                                  |  3 +
>  arch/mips/Makefile                                 |  7 +-
>  .../include/board/board_pbl_start.h                | 20 +++++
>  arch/mips/configs/dptechnics-dpt-module_defconfig  | 89 ++++++++++++++++++++++
>  arch/mips/dts/ar9331-dptechnics-dpt-module.dts     | 31 ++++++++
>  arch/mips/dts/ar9331.dtsi                          |  6 ++
>  arch/mips/mach-ath79/Kconfig                       |  8 ++
>  arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |  1 +
>  arch/mips/mach-ath79/include/mach/pbl_macros.h     | 72 ++++++++++++++++-
>  drivers/watchdog/Kconfig                           |  2 +-
>  10 files changed, 234 insertions(+), 5 deletions(-)
>  create mode 100644 arch/mips/boards/dptechnics-dpt-module/include/board/board_pbl_start.h
>  create mode 100644 arch/mips/configs/dptechnics-dpt-module_defconfig
>  create mode 100644 arch/mips/dts/ar9331-dptechnics-dpt-module.dts
> 
> -- 
> 2.14.1
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
