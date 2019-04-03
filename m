Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBb3F-00061S-Pk
 for barebox@lists.infradead.org; Wed, 03 Apr 2019 08:15:19 +0000
Date: Wed, 3 Apr 2019 10:15:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190403081515.37zvy6f6yvo3liya@pengutronix.de>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-15-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190401101822.7392-15-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v3 14/15] ARM: at91: microchip-ksz9477: provide board
 code fallback
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, sam@ravnborg.org

On Mon, Apr 01, 2019 at 12:18:22PM +0200, Ahmad Fatoum wrote:
> The newly added device tree based first stage fails to load the second
> stage from MMC, which might be in relation to a preceding atmel_mci
> "command/data timeout" message.
> 
> Due to this and because it's not clear yet how viable it's to use the device
> tree for the size-constrained first stage anyway, make CONFIG_OFDEVICE
> configurable and provide a legacy board code based fallback whenever it's
> unselected. The resulting image is 48K big with PBL_CONSOLE compared to
> 72K for the device tree based version without PBL_CONSOLE.

So where is the size limit for this SoC?

> 
> If barebox can be shrunk further and the device tree support in the
> first stage was fixed, this commit could be reverted for full device
> tree goodness.
> 
> The board code is a stripped down version of the sama5d3_xplained board's.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../arm/boards/microchip-ksz9477-evb/Makefile |   3 +
>  arch/arm/boards/microchip-ksz9477-evb/board.c | 127 ++++++++++++++++++
>  .../boards/microchip-ksz9477-evb/lowlevel.c   |   3 +-
>  ...rochip_ksz9477_evb_bootstrap_mmc_defconfig |  24 ++++
>  arch/arm/mach-at91/Kconfig                    |  14 +-
>  5 files changed, 167 insertions(+), 4 deletions(-)
>  create mode 100644 arch/arm/boards/microchip-ksz9477-evb/board.c
>  create mode 100644 arch/arm/configs/microchip_ksz9477_evb_bootstrap_mmc_defconfig

I'd like to keep the number of defconfigs small, I'm not keen on adding
such a specialized defconfig.

Do we need a full barebox as first stage anyway? I made good experience
on i.MX with adding specialized lowlevel drivers for MMC and NAND.

> +	.ocms			= 0,
> +	.trr			= 4,
> +	.twb			= 5,
> +	.rbnsel			= 3,
> +	.nfsel			= 1
> +};
> +
> +static void ek_add_device_nand(void)

ek_?

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
