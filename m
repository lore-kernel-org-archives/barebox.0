Delivery-date: Mon, 14 Apr 2025 13:28:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HzY-000cY2-0W
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 13:28:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HzX-0007Vv-2L
	for lore@pengutronix.de; Mon, 14 Apr 2025 13:28:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Pt2z2urtxCrYhHypn9ZIilTeIR225h8aUoGHmUkQo8=; b=zECQOzlC39JkCYv7luyFlELXHZ
	vHd8GSj8xJ9S8eJ87hd1BvPqqbaj90YPqY9nh+wIXH3zdeqH2mmfsVrW8g36VpOFtkTxDOxoGGgal
	5LG7qEtC29aLdvpWveqMYssCqzDw97mbmmKsZiaOtA2p+MtR/kHhPsrh+i+jKoOfajrfXep2U5n8a
	WZHNb1j+tPixvFFoIFuWJ/Uto5qvrQuuqhDzZhpKBfE7TfYobbt9g08+hz+6i6OZ2uMCAf6hT9Xey
	WHPTZWGuaagYiKrahTBsZ0enaA/t2Tqs9s49L+jgqCiDfQkbKOgEQG1b4guRW4iMTT2OMl38hHlfh
	V3Woujdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Hz3-00000001lhp-0aIn;
	Mon, 14 Apr 2025 11:28:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HuJ-00000001keG-3AbD
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 11:23:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u4HuI-0005rf-7F; Mon, 14 Apr 2025 13:23:18 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4HuI-000F15-07;
	Mon, 14 Apr 2025 13:23:18 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4HuH-000H0k-2y;
	Mon, 14 Apr 2025 13:23:17 +0200
Date: Mon, 14 Apr 2025 13:23:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z_zwJauQq7sEshIw@pengutronix.de>
References: <20250411072748.2017367-1-a.fatoum@pengutronix.de>
 <20250411072748.2017367-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250411072748.2017367-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_042319_950368_708C0737 
X-CRM114-Status: GOOD (  34.46  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: stm32mp: add Linux Automation TAC board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Apr 11, 2025 at 09:27:47AM +0200, Ahmad Fatoum wrote:
> Add support for the Linux Automation GmbH Test Automation
> Controller (TAC). The board boots from eMMC, but requires USB loading if
> no previous barebox has been put into the eMMC boot partition.
> 
> Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                  |   1 +
>  arch/arm/boards/lxa-tac/Makefile          |   2 +
>  arch/arm/boards/lxa-tac/board.c           |  33 ++++++
>  arch/arm/boards/lxa-tac/lowlevel.c        |  71 ++++++++++++
>  arch/arm/configs/multi_v7_defconfig       |   1 +
>  arch/arm/configs/stm32mp_defconfig        |   1 +
>  arch/arm/dts/Makefile                     |   2 +
>  arch/arm/dts/stm32mp153c-lxa-tac-gen3.dts |  38 ++++++
>  arch/arm/dts/stm32mp157c-lxa-tac-gen1.dts |   7 ++
>  arch/arm/dts/stm32mp157c-lxa-tac-gen2.dts |  38 ++++++
>  arch/arm/dts/stm32mp15xc-lxa-tac.dtsi     | 134 ++++++++++++++++++++++
>  arch/arm/mach-stm32mp/Kconfig             |   4 +
>  images/Makefile.stm32mp                   |   2 +
>  include/mach/stm32mp/stm32.h              |   3 +
>  14 files changed, 337 insertions(+)
>  create mode 100644 arch/arm/boards/lxa-tac/Makefile
>  create mode 100644 arch/arm/boards/lxa-tac/board.c
>  create mode 100644 arch/arm/boards/lxa-tac/lowlevel.c
>  create mode 100644 arch/arm/dts/stm32mp153c-lxa-tac-gen3.dts
>  create mode 100644 arch/arm/dts/stm32mp157c-lxa-tac-gen1.dts
>  create mode 100644 arch/arm/dts/stm32mp157c-lxa-tac-gen2.dts
>  create mode 100644 arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 1e67b304f185..187bfed46f91 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -126,6 +126,7 @@ obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)		+= solidrun-microsom/
>  obj-$(CONFIG_MACH_STM32MP15XX_DKX)		+= stm32mp15xx-dkx/
>  obj-$(CONFIG_MACH_STM32MP13XX_DK)		+= stm32mp13xx-dk/
>  obj-$(CONFIG_MACH_LXA_MC1)			+= lxa-mc1/
> +obj-$(CONFIG_MACH_LXA_TAC)			+= lxa-tac/
>  obj-$(CONFIG_MACH_STM32MP15X_EV1)		+= stm32mp15x-ev1/
>  obj-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT)	+= technexion-pico-hobbit/
>  obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
> diff --git a/arch/arm/boards/lxa-tac/Makefile b/arch/arm/boards/lxa-tac/Makefile
> new file mode 100644
> index 000000000000..092c31d6b28d
> --- /dev/null
> +++ b/arch/arm/boards/lxa-tac/Makefile
> @@ -0,0 +1,2 @@
> +lwl-y += lowlevel.o
> +obj-y += board.o
> diff --git a/arch/arm/boards/lxa-tac/board.c b/arch/arm/boards/lxa-tac/board.c
> new file mode 100644
> index 000000000000..96ffc46500bf
> --- /dev/null
> +++ b/arch/arm/boards/lxa-tac/board.c
> @@ -0,0 +1,33 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +#include <common.h>
> +#include <linux/sizes.h>
> +#include <init.h>
> +#include <asm/memory.h>
> +#include <mach/stm32mp/bbu.h>
> +#include <bootsource.h>
> +#include <deep-probe.h>
> +#include <of.h>
> +
> +static int tac_probe(struct device *dev)
> +{
> +	barebox_set_hostname("lxatac");
> +
> +	stm32mp_bbu_mmc_fip_register("mmc", "/dev/mmc1", BBU_HANDLER_FLAG_DEFAULT);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id tac_of_match[] = {
> +	{ .compatible = "lxa,stm32mp157c-tac-gen1" },
> +	{ .compatible = "lxa,stm32mp157c-tac-gen2" },
> +	{ .compatible = "lxa,stm32mp153c-tac-gen3" },
> +	{ /* sentinel */ },
> +};
> +BAREBOX_DEEP_PROBE_ENABLE(tac_of_match);
> +
> +static struct driver tac_board_driver = {
> +	.name = "board-lxa-tac",
> +	.probe = tac_probe,
> +	.of_compatible = tac_of_match,
> +};
> +late_platform_driver(tac_board_driver);
> diff --git a/arch/arm/boards/lxa-tac/lowlevel.c b/arch/arm/boards/lxa-tac/lowlevel.c
> new file mode 100644
> index 000000000000..eee7f8c0cead
> --- /dev/null
> +++ b/arch/arm/boards/lxa-tac/lowlevel.c
> @@ -0,0 +1,71 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +#include <common.h>
> +#include <debug_ll.h>
> +#include <mach/stm32mp/entry.h>
> +#include <mach/stm32mp/stm32.h>
> +#include <soc/stm32/gpio.h>
> +
> +extern char __dtb_z_stm32mp157c_lxa_tac_gen1_start[];
> +extern char __dtb_z_stm32mp157c_lxa_tac_gen2_start[];
> +extern char __dtb_z_stm32mp153c_lxa_tac_gen3_start[];
> +
> +/*
> + * Major board generation is set via traces in copper
> + * Minor board generation can be changed via resistors.
> + * The revision is available on GPIOs:
> + * [PZ0, PZ1, PZ2, PZ3, PZ6, PZ7]
> + */
> +#define BOARD_GEN(major, minor)	(((major) << 2) | minor)
> +#define BOARD_GEN1		BOARD_GEN(0, 0)
> +#define BOARD_GEN2		BOARD_GEN(1, 0)
> +#define BOARD_GEN3		BOARD_GEN(2, 0)
> +
> +static const int board_rev_pins[] = {0, 1, 2, 3, 6, 7};
> +
> +static u32 get_board_rev(void)
> +{
> +	u32 board_rev = 0;
> +
> +	/* Enable GPIOZ bank */
> +	setbits_le32(STM32MP15_RCC_MP_AHB5ENSETR, BIT(0));
> +
> +	for (size_t i = 0; i < ARRAY_SIZE(board_rev_pins); i++) {
> +		int pin = board_rev_pins[i];
> +
> +		__stm32_pmx_gpio_input(STM32MP15_GPIOZ_BASE, pin);
> +		board_rev |= __stm32_pmx_gpio_get(STM32MP15_GPIOZ_BASE, pin) << i;
> +	}
> +
> +	return board_rev;
> +}

Is this information available during runtime with some pr_* message or
variable?

> +
> +static void noinline select_fdt_and_start(void *fdt)
> +{
> +	putc_ll('>');
> +
> +	switch (get_board_rev()) {
> +	case BOARD_GEN1:
> +		fdt = runtime_address(__dtb_z_stm32mp157c_lxa_tac_gen1_start);
> +		break;
> +	case BOARD_GEN2:
> +		fdt = runtime_address(__dtb_z_stm32mp157c_lxa_tac_gen2_start);
> +		break;
> +	case BOARD_GEN3:
> +		fdt = runtime_address(__dtb_z_stm32mp153c_lxa_tac_gen3_start);
> +		break;
> +	}

This check only matches for minor revision 0. Shouldn't the minor
version rather be ignored here?

> +
> +	stm32mp1_barebox_entry(fdt);
> +}
> +
> +ENTRY_FUNCTION(start_stm32mp15xc_lxa_tac, r0, r1, r2)
> +{
> +	stm32mp_cpu_lowlevel_init();
> +
> +	/*
> +	 * stm32mp_cpu_lowlevel_init sets up a stack. Do the remaining
> +	 * init in a non-naked function. Register r2 points to the fdt
> +	 * from the FIT image which can be used as a default.
> +	 */

"the fdt from the FIT image" seems to imply that this entry is only used
as a 2nd state entry, but it's used as a 1st stage entry as well, isn't
it?

I would rephrase that to something like "in case of a 2nd stage boot r2
points to the fdt..."

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


