Delivery-date: Mon, 11 Jul 2022 10:56:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oApD5-002I9j-QE
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 10:56:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oApD3-0003bS-6q
	for lore@pengutronix.de; Mon, 11 Jul 2022 10:56:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wc6dA9n8R3SYbPHwCi/ER0J5yt/Cwb7PmUEz4T6ALyA=; b=LnYWMu++xTywh9t9Fb2ps5tNnl
	4tHmVWe0cWOwvw1P6ywk2Mp+UPUsD1YVDRiiqH8bevUo7KlmHF8S5rRH8C86IbIpNUG3q4Hxq5m9G
	x7HQ1VrKRQdke0jodW+wlOWKp/LSQ9rBLPRScf4gN4fNZVZII1JqWN8GQatXl9VnrKBFL2N4ifKaI
	MLXmAziw+DCCs9N2fTG9M4+zSuRkq71SzDIKaxJHbtgohrf9zKKIVS8BAR+uSK+QSoM6TyTayvegx
	c74z13J1eXsliGBOTfzRE2MZJ2Q8IilLqiDy8n8OkWN5DSD+jP/IZ44hei2qcjbkAepOzQjCynf25
	J1qRr5Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oApBU-00HNrI-8e; Mon, 11 Jul 2022 08:54:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oApBO-00HNky-1G
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 08:54:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oApBH-0003Mb-LW; Mon, 11 Jul 2022 10:54:15 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oApBH-0001OY-Cg; Mon, 11 Jul 2022 10:54:15 +0200
Date: Mon, 11 Jul 2022 10:54:15 +0200
To: Steffen Trumtrar <str@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20220711085415.GM5208@pengutronix.de>
References: <20220711075209.2377254-1-str@pengutronix.de>
 <20220711075209.2377254-5-str@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220711075209.2377254-5-str@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_015422_284012_3EE8DDE5 
X-CRM114-Status: GOOD (  32.22  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 5/6] ARM: socfpga: add support for Enclustra AA1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 11, 2022 at 09:52:08AM +0200, Steffen Trumtrar wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/enclustra-aa1/Makefile        |   4 +
>  arch/arm/boards/enclustra-aa1/board.c         |  47 ++++++++
>  arch/arm/boards/enclustra-aa1/lowlevel.c      | 113 ++++++++++++++++++
>  .../enclustra-aa1/pinmux-config-arria10.c     | 104 ++++++++++++++++
>  .../boards/enclustra-aa1/pll-config-arria10.c |  56 +++++++++
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/socfpga_arria10_mercury_aa1.dts  |  83 +++++++++++++
>  arch/arm/mach-socfpga/Kconfig                 |   4 +
>  images/Makefile.socfpga                       |  12 ++
>  10 files changed, 425 insertions(+)
>  create mode 100644 arch/arm/boards/enclustra-aa1/Makefile
>  create mode 100644 arch/arm/boards/enclustra-aa1/board.c
>  create mode 100644 arch/arm/boards/enclustra-aa1/lowlevel.c
>  create mode 100644 arch/arm/boards/enclustra-aa1/pinmux-config-arria10.c
>  create mode 100644 arch/arm/boards/enclustra-aa1/pll-config-arria10.c
>  create mode 100644 arch/arm/dts/socfpga_arria10_mercury_aa1.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index d303999614..9d700cfbda 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -134,6 +134,7 @@ obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
>  obj-$(CONFIG_MACH_SEEED_ODYSSEY)		+= seeed-odyssey/
>  obj-$(CONFIG_MACH_SOCFPGA_ALTERA_SOCDK)		+= altera-socdk/
>  obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
> +obj-$(CONFIG_MACH_SOCFPGA_ENCLUSTRA_AA1)	+= enclustra-aa1/
>  obj-$(CONFIG_MACH_SOCFPGA_REFLEX_ACHILLES)	+= reflex-achilles/
>  obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE0_NANO_SOC)	+= terasic-de0-nano-soc/
>  obj-$(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO)	+= terasic-de10-nano/
> diff --git a/arch/arm/boards/enclustra-aa1/Makefile b/arch/arm/boards/enclustra-aa1/Makefile
> new file mode 100644
> index 0000000000..5678718188
> --- /dev/null
> +++ b/arch/arm/boards/enclustra-aa1/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +lwl-y += lowlevel.o
> +obj-y += board.o
> diff --git a/arch/arm/boards/enclustra-aa1/board.c b/arch/arm/boards/enclustra-aa1/board.c
> new file mode 100644
> index 0000000000..5b8e5a5c9f
> --- /dev/null
> +++ b/arch/arm/boards/enclustra-aa1/board.c
> @@ -0,0 +1,47 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <bbu.h>
> +
> +static int aa1_init(void)
> +{
> +	int pbl_index = 0;
> +	uint32_t flag_barebox1 = 0;
> +	uint32_t flag_barebox2 = 0;
> +
> +	if (!of_machine_is_compatible("enclustra,mercury-aa1"))
> +		return 0;
> +
> +	pbl_index = readl(0xFFD06210);

This is ARRIA10_SYSMGR_ROM_INITSWLASTLD, right? Please use it.

> +
> +	pr_debug("Current barebox instance %d\n", pbl_index);
> +
> +	switch (pbl_index) {
> +	case 0:
> +		flag_barebox1 |= BBU_HANDLER_FLAG_DEFAULT;
> +		break;
> +	case 1:
> +		flag_barebox2 |= BBU_HANDLER_FLAG_DEFAULT;
> +		break;
> +	};
> +
> +	bbu_register_std_file_update("emmc-barebox1-xload", flag_barebox1,
> +					"/dev/mmc0.barebox1-xload",
> +					filetype_socfpga_xload);
> +
> +	bbu_register_std_file_update("emmc-barebox1", 0,
> +					"/dev/mmc0.barebox1",
> +					filetype_arm_barebox);
> +
> +	bbu_register_std_file_update("emmc-barebox2-xload", flag_barebox2,
> +					"/dev/mmc0.barebox2-xload",
> +					filetype_socfpga_xload);
> +
> +	bbu_register_std_file_update("emmc-barebox2", 0,
> +					"/dev/mmc0.barebox2",
> +					filetype_arm_barebox);

Should this be turned into something more intelligent like failsafe
update?

> +	return 0;
> +}
> +postcore_initcall(aa1_init);

You could turn this into a postcore_platform_driver.

> +#define BAREBOX_PART 0
> +#define BITSTREAM_PART 1
> +#define BAREBOX1_OFFSET    SZ_1M
> +#define BAREBOX2_OFFSET    BAREBOX1_OFFSET + SZ_512K
> +#define BAREBOX3_OFFSET    BAREBOX2_OFFSET + SZ_512K
> +#define BAREBOX4_OFFSET    BAREBOX3_OFFSET + SZ_512K
> +#define BITSTREAM1_OFFSET  0x0

>From looking into the device tree I would expect BITSTREAM1_OFFSET to be 0x700000.

> +#define BITSTREAM2_OFFSET  BITSTREAM1_OFFSET + SZ_32M

You should add braces around the macro definitions to make them safe
to use.

> +
> +extern char __dtb_z_socfpga_arria10_mercury_aa1_start[];
> +
> +#define ARRIA10_STACKTOP	ARRIA10_OCRAM_ADDR + SZ_256K
> +
> +ENTRY_FUNCTION_WITHSTACK(start_socfpga_aa1_xload, ARRIA10_STACKTOP, r0, r1, r2)
> +{
> +	int pbl_index = 0;
> +	int barebox = 0;
> +	int bitstream = 0;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	relocate_to_current_adr();
> +
> +	setup_c();
> +
> +	arria10_init(&mainpll_cfg, &perpll_cfg, pinmux);
> +
> +	arria10_prepare_mmc(BAREBOX_PART, BITSTREAM_PART);
> +
> +	pbl_index = readl(ARRIA10_SYSMGR_ROM_INITSWLASTLD);
> +
> +	/* Allow booting from both PBL0 and PBL1 to allow atomic updates.
> +	 * Bitstreams redundant too and expected to reside in the second
> +	 * partition.
> +	 * There is a fixed relation between the PBL/barebox instance and its
> +	 * bitstream location (offset) that requires to update them together */
> +	switch (pbl_index) {
> +	case 0:
> +		barebox = BAREBOX1_OFFSET;
> +		bitstream = BITSTREAM1_OFFSET;
> +		break;
> +	case 1:
> +		barebox = BAREBOX2_OFFSET;
> +		bitstream = BITSTREAM1_OFFSET;
> +		break;
> +	case 2:
> +	case 3:
> +		/* Left blank for future extension */
> +		break;

You should either bail out or use a sane default for unhandled cases.

> +	}
> +
> +	arria10_load_fpga(bitstream, SZ_32M);
> +
> +	arria10_finish_io(&mainpll_cfg, &perpll_cfg, pinmux);
> +
> +	arria10_ddr_calibration_sequence();
> +
> +	arria10_start_image(barebox);
> +}
> +
> +ENTRY_FUNCTION(start_socfpga_aa1, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	fdt = __dtb_z_socfpga_arria10_mercury_aa1_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x0, SZ_2G, fdt);
> +}
> +
> +ENTRY_FUNCTION_WITHSTACK(start_socfpga_aa1_bringup, ARRIA10_STACKTOP, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	arria10_init(&mainpll_cfg, &perpll_cfg, pinmux);
> +
> +	/* wait for fpga_usermode */
> +	a10_wait_for_usermode(0x1000000);
> +
> +	arria10_finish_io(&mainpll_cfg, &perpll_cfg, pinmux);
> +
> +	arria10_ddr_calibration_sequence();
> +
> +	fdt = __dtb_z_socfpga_arria10_mercury_aa1_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x0, SZ_2G, fdt);
> +}
> diff --git a/arch/arm/dts/socfpga_arria10_mercury_aa1.dts b/arch/arm/dts/socfpga_arria10_mercury_aa1.dts
> new file mode 100644
> index 0000000000..ef3afc9b98
> --- /dev/null
> +&mmc {
> +	bus-width = <8>;
> +	non-removable;
> +	disable-wp;
> +	no-sd;
> +
> +	partitions {
> +		compatible = "fixed-partitions";
> +		#size-cells = <1>;
> +		#address-cells = <1>;
> +
> +		barebox1_xload: partition@100000 {
> +			label = "barebox1-xload";
> +			reg = <0x100000 0x40000>;
> +		};
> +
> +		barebox2_xload: partition@140000 {
> +			label = "barebox2-xload";
> +			reg = <0x140000 0x40000>;
> +		};
> +
> +		barebox1: partition@200000 {
> +			label = "barebox1";
> +			reg = <0x200000 0x80000>;
> +		};
> +
> +		barebox2: partition@280000 {
> +			label = "barebox2";
> +			reg = <0x280000 0x80000>;
> +		};

It might be worth increasing the size to 1MiB. It's easy to make barebox
bigger than 512KiB.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


