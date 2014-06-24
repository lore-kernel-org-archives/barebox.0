Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WzJxb-000183-NR
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 06:12:04 +0000
Date: Tue, 24 Jun 2014 08:11:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140624061121.GZ15686@pengutronix.de>
References: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403554235-12674-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 0/7] Marvell MVEBU assorted fixes and cleanup
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 23, 2014 at 10:10:28PM +0200, Sebastian Hesselbarth wrote:
> This patch set comprises cleanup and some fixes for outstanding bugs in
> Marvell MVEBU SoC support.
> 
> Patch 1 adds default model and hostname for Dove SoCs.
> 
> Patch 2 consolidates TEXT_BASE from per-board to per-SoC selection.
> 
> Patch 3 removes an unused include.
> 
> Patch 4 consolidates lowlevel code from two different files to a single file.
> 
> Patch 5 fixes typos in Armada 370 TCLK frequencies.
> 
> Patch 6 adds a 25MHz reference clock to Armada XP SoC init.
> 
> Patch 7 splits timer initialization for Armada 370 and XP, which uses a
> fixed 25MHz reference clock instead of divided TCLK.
> 
> The patches are based on today's next.
> 
> A branch based on *unstable* next is available at:
> https://github.com/shesselba/barebox-dove.git mvebu/cleanup

Applied, thanks

Sascha

> 
> Sebastian Hesselbarth (7):
>   ARM: mvebu: set model and default hostname for Dove
>   ARM: mvebu: set default TEXT_BASE by SoC
>   ARM: mvebu: delete unused mach/mvebu.h
>   ARM: mvebu: move lowlevel code to lowlevel.c
>   clk: mvebu: fix Armada 370 TCLK frequencies
>   ARM: mvebu: add 25MHz fixed clock for Armada XP
>   clocksource: mvebu: split initialization for Armada 370/XP
> 
>  arch/arm/mach-mvebu/Kconfig              | 10 ++---
>  arch/arm/mach-mvebu/Makefile             |  2 +-
>  arch/arm/mach-mvebu/armada-370-xp.c      |  5 +++
>  arch/arm/mach-mvebu/common.c             | 40 --------------------
>  arch/arm/mach-mvebu/dove.c               |  3 ++
>  arch/arm/mach-mvebu/include/mach/mvebu.h | 22 -----------
>  arch/arm/mach-mvebu/lowlevel.c           | 37 ++++++++++++++++++
>  drivers/clk/mvebu/armada-370.c           |  4 +-
>  drivers/clocksource/mvebu.c              | 65 ++++++++++++++++++++------------
>  9 files changed, 92 insertions(+), 96 deletions(-)
>  delete mode 100644 arch/arm/mach-mvebu/include/mach/mvebu.h
> 
> ---
> Cc: barebox@lists.infradead.org
> -- 
> 2.0.0
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
