Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdBeV-00070k-Qe
 for barebox@lists.infradead.org; Mon, 13 Feb 2017 08:06:29 +0000
Date: Mon, 13 Feb 2017 09:06:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170213080605.4v3ldwhyk7xtiodq@pengutronix.de>
References: <20170210155100.16463-1-u.kleine-koenig@pengutronix.de>
 <20170210155100.16463-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170210155100.16463-2-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] mvebu: make boards pass initial memory size
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Uwe,

On Fri, Feb 10, 2017 at 04:50:59PM +0100, Uwe Kleine-K=F6nig wrote:
> While assuming SZ_64M initially is save and fixed up later, the size of t=
he
> malloc area is determined from this value. So it might make sense for some
> boards to pass the correct version from the start to have more RAM availa=
ble
> for example to write big images into an FPGA.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/boards/globalscale-guruplug/lowlevel.c    |  2 +-
>  arch/arm/boards/globalscale-mirabox/lowlevel.c     |  2 +-
>  arch/arm/boards/lenovo-ix4-300d/lowlevel.c         |  2 +-
>  arch/arm/boards/marvell-armada-xp-gp/lowlevel.c    |  2 +-
>  arch/arm/boards/netgear-rn104/lowlevel.c           |  2 +-
>  arch/arm/boards/netgear-rn2120/lowlevel.c          |  2 +-
>  arch/arm/boards/plathome-openblocks-a6/lowlevel.c  |  2 +-
>  arch/arm/boards/plathome-openblocks-ax3/lowlevel.c |  2 +-
>  arch/arm/boards/solidrun-cubox/lowlevel.c          |  2 +-
>  arch/arm/boards/usi-topkick/lowlevel.c             |  2 +-
>  arch/arm/mach-mvebu/include/mach/lowlevel.h        |  2 +-
>  arch/arm/mach-mvebu/lowlevel.c                     | 15 +++++++--------
>  12 files changed, 18 insertions(+), 19 deletions(-)
> =

>  /*
>   * Determining the actual memory size is highly SoC dependent,
> - * but for all SoCs RAM starts at 0x00000000. Therefore, we start
> - * with a minimal memory setup of 64M and probe correct memory size
> - * later.
> + * but for all SoCs RAM starts at 0x00000000. If the available RAM isn't=
 known
> + * at the call-site of mvebu_barebox_entry, using a value that is not to=
o big is
> + * safe. The correct memory size will be probed later.
>   */
>  #define MVEBU_BOOTUP_MEMORY_BASE	0x00000000
> -#define MVEBU_BOOTUP_MEMORY_SIZE	SZ_64M
>  =

> -void __naked __noreturn mvebu_barebox_entry(void *boarddata)
> +void __naked __noreturn mvebu_barebox_entry(void *boarddata,
> +					    unsigned long memsize)
>  {
>  	mvebu_remap_registers();
> -	barebox_arm_entry(MVEBU_BOOTUP_MEMORY_BASE,
> -			  MVEBU_BOOTUP_MEMORY_SIZE, boarddata);
> +	barebox_arm_entry(MVEBU_BOOTUP_MEMORY_BASE, memsize, boarddata);
>  }

I would prefer if you could split mvebu_barebox_entry into
armada_370_xp_barebox_entry, dove_barebox_entry and
kirkwood_barebox_entry. Then you could call the SoC specific SDRAM
detection functions and call barebox with the correct amount of SDRAM
from the start.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
