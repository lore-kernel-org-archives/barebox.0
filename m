Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVwQt-0003pz-3l
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 07:21:55 +0000
Date: Wed, 17 Feb 2016 08:21:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160217072133.GL19372@pengutronix.de>
References: <1455619502-19908-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455619502-19908-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH 0/7] AM335x related patches
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 16, 2016 at 11:44:55AM +0100, Teresa Remmet wrote:
> Different AM335x changes containing new RAM timings and
> reducing image size of all am335x boards.
> 
> Patches have been tested on PHYTEC boards and beaglebone black.
> 
> Regards
> Teresa
> 
> Arnd Beuscher (1):
>   ARM: board: phytec-som-am335x: RAM timings for phyCORE-AM335x-R2
> 
> Jan Remmet (1):
>   ARM: dts: am335x-phytec: eeprom name
> 
> Teresa Remmet (4):
>   ARM: am335x_defconfig: Enable watchdog support
>   ARM: boards: phytec-som-am335x: New RAM Timings for phyCORE-AM335x-R2
>   ARM: dts: beaglebone: Strip clocks in MLO device tree
>   ARM: AM335x: Make use of ARM_USE_COMPRESSED_DTB
> 
> Wadim Egorov (1):
>   ARM: am335x_defconfig: Enable NANDTEST command
> 
>  arch/arm/boards/afi-gf/lowlevel.c               |  6 ++--
>  arch/arm/boards/beaglebone/lowlevel.c           | 12 ++++----
>  arch/arm/boards/phytec-som-am335x/lowlevel.c    | 10 ++++---
>  arch/arm/boards/phytec-som-am335x/ram-timings.h | 40 +++++++++++++++++++++++++
>  arch/arm/configs/am335x_defconfig               |  4 +++
>  arch/arm/dts/am335x-bone-common.dts             |  1 +
>  arch/arm/dts/am335x-phytec-phycard-som.dtsi     |  2 +-
>  arch/arm/dts/am335x-phytec-phycore-som.dtsi     |  2 +-
>  arch/arm/mach-omap/Kconfig                      |  1 +
>  images/Makefile.am33xx                          | 12 ++++++++
>  10 files changed, 75 insertions(+), 15 deletions(-)

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
