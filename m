Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCAOw-0000MK-V3
 for barebox@lists.infradead.org; Sun, 03 Mar 2013 15:00:35 +0000
Date: Sun, 3 Mar 2013 15:58:10 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20130303145810.GB10708@pengutronix.de>
References: <cover.1362273612.git.joshc@eso.teric.us>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1362273612.git.joshc@eso.teric.us>
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
Subject: Re: [PATCH 0/5] Zynq support for barebox
To: Josh Cartwright <joshc@eso.teric.us>
Cc: barebox@lists.infradead.org, Michal Simek <monstr@monstr.eu>

Hi!

On Sat, Mar 02, 2013 at 07:20:12PM -0600, Josh Cartwright wrote:
> In San Francisco a couple weeks ago (ELC2013), Thomas Petazzoni
> informally mentioned barebox in passing, so I decided to toy with it a
> bit...
> 
> This patchset adds basic support for the Zynq SoC to barebox.  So far,
> it's only been tested as a 'secondary' bootloader (after u-boot).  Also
> added is support for the zc702 development board.
> 

I have some patches laying around, that have support for booting first stage
from a SD-Card on a ZedBoard. I didn't send them as of yet, because I'm not
completely satisfied with them in one or two places. (The clocksource seems to
be inverse to what barebox expects, which would be a quick fix, and barebox boots
uuultra slow, if I do everything according to the TRM)
At the moment, I do not have access to the board though. But I hope I can get a
hand on it in the next days.
What I do not have atm is the clkdev stuff, that you already have.

Regards,
Steffen

> The first two patches are simple typos I found getting acclimated to the
> barebox source.
> 
> Josh Cartwright (5):
>   trivial: doc: fix typos in mach-arm.dox
>   defaultenv: fixed mismatched braces in bin/boot
>   ARM: zynq: add driver for Zynq uarts
>   ARM: zynq: add support for Zynq 7000 SoC
>   ARM: zynq: add support for zc702 development board
> 
>  arch/arm/Kconfig                           |   9 +
>  arch/arm/Makefile                          |   2 +
>  arch/arm/boards/zynq-zc702/Makefile        |   1 +
>  arch/arm/boards/zynq-zc702/config.h        |   0
>  arch/arm/boards/zynq-zc702/devices.c       |  70 ++++++
>  arch/arm/boards/zynq-zc702/lowlevel.c      |  28 +++
>  arch/arm/mach-arm.dox                      |   4 +-
>  arch/arm/mach-zynq/Kconfig                 |  22 ++
>  arch/arm/mach-zynq/Makefile                |   1 +
>  arch/arm/mach-zynq/clocks.c                | 341 +++++++++++++++++++++++++++++
>  arch/arm/mach-zynq/include/mach/clkdev.h   |   7 +
>  arch/arm/mach-zynq/include/mach/debug_ll.h |  21 ++
>  arch/arm/mach-zynq/include/mach/slcr.h     |  26 +++
>  arch/arm/mach-zynq/reset.c                 |  28 +++
>  defaultenv/bin/boot                        |   2 +-
>  drivers/serial/Kconfig                     |   6 +
>  drivers/serial/Makefile                    |   1 +
>  drivers/serial/serial_zynq.c               | 144 ++++++++++++
>  18 files changed, 710 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/boards/zynq-zc702/Makefile
>  create mode 100644 arch/arm/boards/zynq-zc702/config.h
>  create mode 100644 arch/arm/boards/zynq-zc702/devices.c
>  create mode 100644 arch/arm/boards/zynq-zc702/lowlevel.c
>  create mode 100644 arch/arm/mach-zynq/Kconfig
>  create mode 100644 arch/arm/mach-zynq/Makefile
>  create mode 100644 arch/arm/mach-zynq/clocks.c
>  create mode 100644 arch/arm/mach-zynq/include/mach/clkdev.h
>  create mode 100644 arch/arm/mach-zynq/include/mach/debug_ll.h
>  create mode 100644 arch/arm/mach-zynq/include/mach/slcr.h
>  create mode 100644 arch/arm/mach-zynq/reset.c
>  create mode 100644 drivers/serial/serial_zynq.c
> 
> -- 
> 1.8.1.2
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
