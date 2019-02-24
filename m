Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gy1Vx-0001nQ-Lp
 for barebox@lists.infradead.org; Sun, 24 Feb 2019 21:40:51 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990901AbfBXVkoucaZD (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 24 Feb 2019 22:40:44 +0100
Date: Sun, 24 Feb 2019 22:40:43 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190224214043.GA25868@lenoch>
References: <20190224185259.28458-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190224185259.28458-1-sam@ravnborg.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 0/11] at91: Support PMC clock bindings
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Sun, Feb 24, 2019 at 07:52:48PM +0100, Sam Ravnborg wrote:
> Hi all.
> =

> The following patchset add supports for the PMC clk
> bindings for at91.
> The patchset was tested on:
> - at91sam9264ek - DT enabled
> - sama5d4-xplained - non DT
> =

> Ladislav and Ahmad did some additional testing on the boards they have av=
ailable.
> =

> Please await feedback from Ahmad and Ladislav before applying to master.

Serie applied on top of current master (plus my board support patches).
$ echo $soc.name   =

at91sam9g20

Tested-by: Ladislav Michl <ladis@linux-mips.org>

Btw, space spared by changing malloc implementation (now CONFIG_MALLOC_TLSF)
was almost all eaten by additional compatible code, but as it still fits
dataflash, let's optimize later :)

> The patchset includes sama5d2.c which is not used today.
> I have a sama5d27-som1-ek board that I hope to find time to work
> with and then this will be needed.
> =

> Patch was made on top of barebox master:
> 3c2dee2e7d62a32ba85f7bf94bb7abf5b4f09dab ("doc: bootchooser: add retry ha=
ndling to algorithm description")
> =

> On stray patch sneaked in - to kill a warning.
> =

> The patchset triggers some checkpatch warnings:
> - SPDX, the barebox variant of checkpatch is missing support for these
> - Too long lines. As code is copied from the kernel I left them as-is
> =

> Comments/review/testing very welcome!
> Note: I am at Embedded World N=FCrenberg for a few days, so no swift
> repsonses to feedback/comments.

Hmm, that's a shame. Seems I'll miss it again :-/

> v4:
> - added dt-compat required by sama5d3 (Ahmad)
> - added syscon_regmap_lookup_by_compatible (Ahmad)
> - Rebased on master
> - Added SOC_SAMA5D2 - as it is used later
>   Not used for now, but needed later
> =

> v3:
> - fixed build breakage in sama5d4 and clk-h32mx
> - added Tested-by: Ladislav Michl <ladis@linux-mips.org> to relevant patc=
hes
>   Not all, as only a subet was covered by the test
> =

> v2:
> - Split up in smaller patches
> - Fix builds in various configs
> - Reworked Kconfig changes
> - Fix checkpatch warnings (mostly whitespace)
> =

> v1:
> - Posted to mailing list as a WIP patch
> =

>         Sam
> =

> =

> Ahmad Fatoum (2):
>       regmap: Implement syscon_regmap_lookup_by_compatible()
>       clk: at91: add dt-compat to PMC bindings
> =

> Sam Ravnborg (9):
>       arm: at91: fix at91_configure_usart6 warning
>       clocksource: Do not mix depends and select for ATMEL_PIT
>       arm: at91: add SOC_SAMA5{D2,D3,D4}
>       clk: at91: add at91sam9260
>       clk: at91: add at91sam9rl
>       clk: at91: add at91sam9x5
>       clk: at91: add sama5d2
>       clk: at91: add sama5d4
>       clk: at91: update to PMC bindings
> =

>  arch/arm/mach-at91/Kconfig              |  37 +-
>  arch/arm/mach-at91/include/mach/board.h |   1 +
>  drivers/clk/at91/Makefile               |   6 +
>  drivers/clk/at91/at91sam9260.c          | 497 +++++++++++++++++
>  drivers/clk/at91/at91sam9rl.c           | 177 ++++++
>  drivers/clk/at91/at91sam9x5.c           | 315 +++++++++++
>  drivers/clk/at91/clk-generated.c        | 185 ++----
>  drivers/clk/at91/clk-h32mx.c            |  55 +-
>  drivers/clk/at91/clk-main.c             | 112 +---
>  drivers/clk/at91/clk-master.c           |  94 +---
>  drivers/clk/at91/clk-peripheral.c       |  82 +--
>  drivers/clk/at91/clk-pll.c              | 174 +-----
>  drivers/clk/at91/clk-plldiv.c           |  27 +-
>  drivers/clk/at91/clk-programmable.c     |  83 +--
>  drivers/clk/at91/clk-slow.c             |  33 +-
>  drivers/clk/at91/clk-smd.c              |  33 +-
>  drivers/clk/at91/clk-system.c           |  42 +-
>  drivers/clk/at91/clk-usb.c              |  94 +---
>  drivers/clk/at91/clk-utmi.c             | 100 ++--
>  drivers/clk/at91/dt-compat.c            | 961 ++++++++++++++++++++++++++=
++++++
>  drivers/clk/at91/pmc.c                  | 248 +++++++++
>  drivers/clk/at91/pmc.h                  | 169 ++++++
>  drivers/clk/at91/sama5d2.c              | 342 ++++++++++++
>  drivers/clk/at91/sama5d4.c              | 270 +++++++++
>  drivers/clocksource/Kconfig             |   1 -
>  drivers/mfd/syscon.c                    |  14 +
>  include/linux/clk.h                     |   7 +
>  include/mfd/syscon.h                    |   5 +
>  include/soc/at91/atmel-sfr.h            |  34 ++
>  29 files changed, 3220 insertions(+), 978 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
