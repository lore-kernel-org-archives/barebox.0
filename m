Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eOeOs-0000V5-1x
 for barebox@lists.infradead.org; Tue, 12 Dec 2017 06:50:48 +0000
Date: Tue, 12 Dec 2017 07:50:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171212065023.lm3byrk22lc2lflu@pengutronix.de>
References: <20171209095938.30160-1-linux@rempel-privat.de>
 <20171209095938.30160-4-linux@rempel-privat.de>
 <20171209195448.aab27cc3fc8eb0cd1de05611@gmail.com>
 <73ee3115-bff4-7a0f-e8b0-cc14db2d1b86@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73ee3115-bff4-7a0f-e8b0-cc14db2d1b86@rempel-privat.de>
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
Subject: Re: [PATCH v1 4/4] MIPS: add support for DPTechnics DPT-Module v1
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Mon, Dec 11, 2017 at 06:53:25AM +0100, Oleksij Rempel wrote:
> Am 09.12.2017 um 17:54 schrieb Antony Pavlov:
> > On Sat,  9 Dec 2017 10:59:38 +0100
> > Oleksij Rempel <linux@rempel-privat.de> wrote:
> > 
> >> This product can be found here:
> >> https://dptechnics.com/en/products/dpt-module-v1.html
> >>
> >> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> >> ---
> >>  arch/mips/Makefile                                 |  1 +
> >>  arch/mips/boards/dptechnics-dpt-module/Makefile    |  1 +
> >>  arch/mips/boards/dptechnics-dpt-module/board.c     |  8 ++
> >>  .../include/board/board_pbl_start.h                | 20 +++++
> >>  arch/mips/configs/dptechnics-dpt-module_defconfig  | 89 ++++++++++++++++++++++
> >>  arch/mips/dts/ar9331-dptechnics-dpt-module.dts     | 31 ++++++++
> >>  arch/mips/mach-ath79/Kconfig                       |  7 ++
> >>  7 files changed, 157 insertions(+)
> >>  create mode 100644 arch/mips/boards/dptechnics-dpt-module/Makefile
> >>  create mode 100644 arch/mips/boards/dptechnics-dpt-module/board.c
> >>  create mode 100644 arch/mips/boards/dptechnics-dpt-module/include/board/board_pbl_start.h
> >>  create mode 100644 arch/mips/configs/dptechnics-dpt-module_defconfig
> >>  create mode 100644 arch/mips/dts/ar9331-dptechnics-dpt-module.dts
> >>
> >> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> >> index dd5ceea20..b965a9c17 100644
> >> --- a/arch/mips/Makefile
> >> +++ b/arch/mips/Makefile
> >> @@ -79,6 +79,7 @@ machine-$(CONFIG_MACH_MIPS_AR231X)	:= ar231x
> >>  board-$(CONFIG_BOARD_NETGEAR_WG102)	:= netgear-wg102
> >>  
> >>  machine-$(CONFIG_MACH_MIPS_ATH79)	:= ath79
> >> +board-$(CONFIG_BOARC_DPTECHNICS_DPT_MODULE)	:= dptechnics-dpt-module
> >>  board-$(CONFIG_BOARD_TPLINK_MR3020)	:= tplink-mr3020
> >>  board-$(CONFIG_BOARD_TPLINK_WDR4300)	:= tplink-wdr4300
> >>  board-$(CONFIG_BOARD_BLACK_SWIFT)	:= black-swift
> >> diff --git a/arch/mips/boards/dptechnics-dpt-module/Makefile b/arch/mips/boards/dptechnics-dpt-module/Makefile
> >> new file mode 100644
> >> index 000000000..dcfc2937d
> >> --- /dev/null
> >> +++ b/arch/mips/boards/dptechnics-dpt-module/Makefile
> >> @@ -0,0 +1 @@
> >> +obj-y += board.o
> >> diff --git a/arch/mips/boards/dptechnics-dpt-module/board.c b/arch/mips/boards/dptechnics-dpt-module/board.c
> >> new file mode 100644
> >> index 000000000..7ec7ef8a5
> >> --- /dev/null
> >> +++ b/arch/mips/boards/dptechnics-dpt-module/board.c
> >> @@ -0,0 +1,8 @@
> >> +#include <common.h>
> >> +#include <init.h>
> >> +
> >> +static int dummy_init(void)
> >> +{
> >> +	return 0;
> >> +}
> >> +postcore_initcall(dummy_init);
> > 
> > 
> > Do we really need this dummy_init()?
> 
> No, but other ways we need to fix the build system. And right now i have
> no time for that :(

Are you sure you need the dummy_init()? I just gave it a test and I
indeed needed a C file to get it through the linker, but that C file
can equally well be empty.

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
