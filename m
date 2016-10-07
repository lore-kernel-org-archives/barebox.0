Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bsQLJ-0003b0-S0
 for barebox@lists.infradead.org; Fri, 07 Oct 2016 08:17:23 +0000
Date: Fri, 7 Oct 2016 10:16:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161007081659.g3nmv7vm3nlgqa66@pengutronix.de>
References: <1475751308-27894-1-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1475751308-27894-1-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [PATCH v3] Add support for Baltos systems
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Thu, Oct 06, 2016 at 12:55:08PM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> OnRISC Baltos devices are based on a am335x SoC and can be booted
> either from MMC or NAND.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
> Changes:
> 	v3: - make hw_param a local variable
> 	    - implement memory size detection
> 	    - remove baltos_mem_init initcall
>         v2: - remove typedef
>             - rework invalid EEPROM content handling
>             - add mmc0 as boot device for MMC boot source
> 
>  arch/arm/boards/Makefile                |   1 +
>  arch/arm/boards/vscom-baltos/Makefile   |   2 +
>  arch/arm/boards/vscom-baltos/board.c    | 132 ++++++++++
>  arch/arm/boards/vscom-baltos/lowlevel.c | 134 ++++++++++
>  arch/arm/dts/Makefile                   |   1 +
>  arch/arm/dts/am335x-baltos-minimal.dts  | 439 ++++++++++++++++++++++++++++++++
>  arch/arm/mach-omap/Kconfig              |   7 +
>  images/Makefile.am33xx                  |   8 +
>  8 files changed, 724 insertions(+)
>  create mode 100644 arch/arm/boards/vscom-baltos/Makefile
>  create mode 100644 arch/arm/boards/vscom-baltos/board.c
>  create mode 100644 arch/arm/boards/vscom-baltos/lowlevel.c
>  create mode 100644 arch/arm/dts/am335x-baltos-minimal.dts

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
