Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLwa0-0007Xg-Hj
 for barebox@lists.infradead.org; Tue, 17 Sep 2013 14:48:41 +0000
Received: from mail437.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2768DFF8726
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 16:48:19 +0200 (CEST)
Date: Tue, 17 Sep 2013 16:49:29 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130917144929.GB28390@ns203013.ovh.net>
References: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
 <1379321300-8085-10-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379321300-8085-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 09/11] ARM: SoCFPGA: Add Terasic SoCkit board support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:48 Mon 16 Sep     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/terasic-sockit/Makefile            |   2 +
>  arch/arm/boards/terasic-sockit/board.c             |  37 ++++
>  arch/arm/boards/terasic-sockit/config.h            |   1 +
>  arch/arm/boards/terasic-sockit/lowlevel.c          |  99 ++++++++++
>  arch/arm/boards/terasic-sockit/pinmux_config.c     | 211 +++++++++++++++++++++
>  arch/arm/boards/terasic-sockit/pll_config.h        |  98 ++++++++++
>  arch/arm/boards/terasic-sockit/sdram_config.h      |  69 +++++++
>  arch/arm/boards/terasic-sockit/sequencer_auto.h    | 173 +++++++++++++++++
>  .../boards/terasic-sockit/sequencer_auto_ac_init.c |  40 ++++
>  .../terasic-sockit/sequencer_auto_inst_init.c      | 134 +++++++++++++
>  arch/arm/boards/terasic-sockit/sequencer_defines.h | 118 ++++++++++++
>  arch/arm/dts/Makefile                              |   2 +
>  arch/arm/dts/socfpga_cyclone5_sockit.dts           | 121 ++++++++++++
>  arch/arm/mach-socfpga/Kconfig                      |   4 +
>  images/Makefile.socfpga                            |   7 +
>  16 files changed, 1117 insertions(+)
>  create mode 100644 arch/arm/boards/terasic-sockit/Makefile
>  create mode 100644 arch/arm/boards/terasic-sockit/board.c
>  create mode 100644 arch/arm/boards/terasic-sockit/config.h
>  create mode 100644 arch/arm/boards/terasic-sockit/lowlevel.c
>  create mode 100644 arch/arm/boards/terasic-sockit/pinmux_config.c
>  create mode 100644 arch/arm/boards/terasic-sockit/pll_config.h
>  create mode 100644 arch/arm/boards/terasic-sockit/sdram_config.h
>  create mode 100644 arch/arm/boards/terasic-sockit/sequencer_auto.h
>  create mode 100644 arch/arm/boards/terasic-sockit/sequencer_auto_ac_init.c
>  create mode 100644 arch/arm/boards/terasic-sockit/sequencer_auto_inst_init.c
>  create mode 100644 arch/arm/boards/terasic-sockit/sequencer_defines.h
>  create mode 100644 arch/arm/dts/socfpga_cyclone5_sockit.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 38ef512..a9bc15f 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -75,6 +75,7 @@ obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
>  obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
>  obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
>  obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
> +obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
>  obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
>  obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
>  obj-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x/
> diff --git a/arch/arm/boards/terasic-sockit/Makefile b/arch/arm/boards/terasic-sockit/Makefile
> new file mode 100644
> index 0000000..8c927fe
> --- /dev/null
> +++ b/arch/arm/boards/terasic-sockit/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += lowlevel.o board.o
> +pbl-y += lowlevel.o
> diff --git a/arch/arm/boards/terasic-sockit/board.c b/arch/arm/boards/terasic-sockit/board.c
> new file mode 100644
> index 0000000..fdff76f
> --- /dev/null
> +++ b/arch/arm/boards/terasic-sockit/board.c
> @@ -0,0 +1,37 @@
> +#include <common.h>
> +#include <types.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <asm/armlinux.h>
> +#include <linux/micrel_phy.h>
> +#include <linux/phy.h>
> +#include <sizes.h>
> +#include <fcntl.h>
> +#include <fs.h>
> +#include <mach/socfpga-regs.h>
> +
> +static int phy_fixup(struct phy_device *dev)
> +{
> +	/* min rx data delay */
> +	phy_write(dev, 0x0b, 0x8105);
> +	phy_write(dev, 0x0c, 0x0000);
> +
> +	/* max rx/tx clock delay, min rx/tx control delay */
> +	phy_write(dev, 0x0b, 0x8104);
> +	phy_write(dev, 0x0c, 0xa0d0);
> +	phy_write(dev, 0x0b, 0x104);
> +
> +	return 0;
> +}
> +
> +static int socfpga_console_init(void)
> +{
> +	if (!of_machine_is_compatible("terasic,sockit"))
> +		return 0;
> +
> +	if (IS_ENABLED(CONFIG_PHYLIB))
> +		phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK, phy_fixup);
we should make the function an inline if !IS_ENABLED(CONFIG_PHYLIB)
> +
> +	return 0;
> +}
> +console_initcall(socfpga_console_init);

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
