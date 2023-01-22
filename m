Delivery-date: Mon, 23 Jan 2023 00:23:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJjg9-002XQP-4B
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 00:23:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJjg7-0001bx-1k
	for lore@pengutronix.de; Mon, 23 Jan 2023 00:23:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pz2lTj9O9GBEoT0O1Omkii5JhEegpzFHWYvQREMQq+w=; b=0FKo8XK/MB70GsV261MvFjn5lb
	hIMD5XV65X7lRP4fyQN1uU50Mt6H0CCzYp9dQjzfL9wNUZBicGtO1YdbsG6/FLk0eya4Ux43yhCxb
	ZxOYIrOAIRAesj35HvbqVJFFyJqS03V+StaOuIOiAnI5nllWIh8DSfHRxlpl8D1D1mCbFJkjoimPa
	8sMAt/7a1YQyWQNjyKmynfVCJG9T1Oihp5roDefQo5kfv1zxLaB2LaFgzU0DaNo97Dy9I3s70L+hU
	yXxGy9V7v35BIX90wYxSO+dFKHIB2QQcWMzuP1gdu31n5avhsgpgJ1JZeMRKF6ZWVKGkooeenSf5b
	bzaJG24w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJjeN-00FrpH-ML; Sun, 22 Jan 2023 23:21:23 +0000
Received: from out0.migadu.com ([94.23.1.103])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJjeG-00Frod-GO
	for barebox@lists.infradead.org; Sun, 22 Jan 2023 23:21:20 +0000
Date: Mon, 23 Jan 2023 10:20:48 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674429670;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pz2lTj9O9GBEoT0O1Omkii5JhEegpzFHWYvQREMQq+w=;
	b=YVKldV4ArSiHHAV6wmbq6vSUB+GsPNbfd6Css9X3Rpger9ajVj3uyxfQ03kFiuQvkt0tHE
	USggR/WNW3AhFGO+Vg4tvfGRUXW7a4EGnRbG9iHQ0y7C/x1OvQR3V0ecILhC/2RLsiWEb2
	JChvOlcKcT3wsZjfMnkgesu6NwO13vOkDUOHWidEsx8BOozd3Bu1MH2OPpct2WycuVYgXz
	bVZzQmbq4i16fSa3Vx7rS4mKBViHU3s1i8H/GOFSt1JyNeJ8eROQOX1GPohpY3ZDLy0UD+
	8OlQGhDe0KZMEolfwGsMxhfPXsgVFNiy/gUCHaeOYA8lHAO63qBKqqIYEmnLJQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Message-ID: <Y83E0Ir3wSwLVwXF@novena-choice-citizen>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230122175141.119834-6-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230122175141.119834-6-contact@jookia.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_152118_716804_9F794B5E 
X-CRM114-Status: GOOD (  31.02  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] ARM: novena: Use DDR3 information from SPD EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Just a note to myself: After doing some more testing on this code I've found it
doesn't work exactly right:

- It calculates cs_density and density wrong
- I'm still not entirely sure if ddr_spd needs to be changed to aid calibration

Speaking of calibration: I spent a while trying to figure this out but the
Barebox version of mmdc_do_write_level_calibration does not handle calibration
errors. I'll have a patch on the way to fix both of these soon.

With those bugs fixed I can confirm just switching in a 2GB stick works and
Barebox's memtest runs successfully.

On Mon, Jan 23, 2023 at 04:51:41AM +1100, John Watts wrote:
> The Novena supports swappable memory which means we must query the memory
> for configuration details. This patch uses values stored in the SPD EEPROM
> to configure the i.MX6 memory controller.
> 
> If the SPD can't be read, the default configuration for a 4GB stick is used.
> 
> Calibration for the installed stick is run unconditionally.
> 
> Verification that this works was done by comparing MMDC registers before and
> after and carefully reading other people's source code.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  arch/arm/boards/novena/lowlevel.c | 113 ++++++++++++++++++++++++++++++
>  arch/arm/mach-imx/Kconfig         |   2 +
>  2 files changed, 115 insertions(+)
> 
> diff --git a/arch/arm/boards/novena/lowlevel.c b/arch/arm/boards/novena/lowlevel.c
> index ee71d9edd6..753fc5dd4a 100644
> --- a/arch/arm/boards/novena/lowlevel.c
> +++ b/arch/arm/boards/novena/lowlevel.c
> @@ -3,6 +3,8 @@
>  
>  #include <asm/barebox-arm.h>
>  #include <common.h>
> +#include <ddr_dimms.h>
> +#include <ddr_spd.h>
>  #include <debug_ll.h>
>  #include <mach/esdctl.h>
>  #include <mach/generic.h>
> @@ -10,6 +12,8 @@
>  #include <mach/imx6-mmdc.h>
>  #include <mach/iomux-mx6.h>
>  #include <mach/xload.h>
> +#include <pbl.h>
> +#include <pbl/i2c.h>
>  #include <soc/fsl/fsl_udc.h>
>  #include "ddr_regs.h"
>  
> @@ -18,6 +22,112 @@
>  
>  extern char __dtb_imx6q_novena_start[];
>  
> +static struct spd_eeprom spd_eeprom;
> +static struct dimm_params dimm_params;
> +
> +#if IN_PBL
> +/* I2C in the PBL requires udelay, provide our own */
> +void udelay(unsigned long us)
> +{
> +	volatile unsigned long i;
> +
> +	for (i = 0; i < us * 4; i++);
> +}
> +#endif
> +
> +static struct pbl_i2c *setup_spd_i2c(void)
> +{
> +	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
> +
> +	imx_setup_pad(iomuxbase, MX6Q_PAD_CSI0_DAT8__I2C1_SDA);
> +	imx_setup_pad(iomuxbase, MX6Q_PAD_CSI0_DAT9__I2C1_SCL);
> +	return imx6_i2c_early_init(IOMEM(MX6_I2C1_BASE_ADDR));
> +}
> +
> +static struct spd_eeprom *read_spd(void)
> +{
> +	struct spd_eeprom *eeprom = &spd_eeprom;
> +	struct pbl_i2c *i2c = setup_spd_i2c();
> +	int rc;
> +
> +	rc = spd_read_eeprom(i2c, 0x50, eeprom, SPD_MEMTYPE_DDR3);
> +	if (rc < 0) {
> +		pr_err("Couldn't read SPD EEPROM:  %x\n", rc);
> +		return NULL;
> +	}
> +
> +	rc = ddr3_spd_check(&eeprom->ddr3);
> +	if (rc < 0) {
> +		pr_err("Couldn't verify SPD data: %x\n", rc);
> +		return NULL;
> +	}
> +
> +	return eeprom;
> +}
> +
> +static bool check_spd_compatible(struct spd_eeprom *eeprom)
> +{
> +	if (eeprom->ddr3.mem_type != 0x0b) {
> +		pr_err("SPD data is not DDR3\n");
> +		return false;
> +	}
> +
> +	if ((eeprom->ddr3.bus_width & 0x1f) != 0x03) {
> +		pr_err("SPD data is for a 64-bit bus\n");
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
> +static void setup_dimm_settings(struct dimm_params *params,
> +				struct mx6_ddr_sysinfo *info,
> +				struct mx6_ddr3_cfg *cfg)
> +{
> +	info->ncs = params->n_ranks;
> +	info->cs_density = params->capacity / 0x8000000;
> +	cfg->mem_speed = params->tckmin_x_ps;
> +	cfg->density = info->cs_density / params->n_banks_per_sdram_device;
> +	cfg->width = params->data_width;
> +	cfg->banks = params->n_banks_per_sdram_device;
> +	cfg->rowaddr = params->n_row_addr;
> +	cfg->coladdr = params->n_col_addr;
> +	cfg->trcd = params->trcd_ps / 10;
> +	cfg->trcmin = params->trc_ps / 10;
> +	cfg->trasmin = params->tras_ps / 10;
> +	cfg->SRT = params->extended_op_srt;
> +
> +	if (params->device_width >= 16)
> +		cfg->pagesz = 2;
> +}
> +
> +static void read_dimm_settings(void)
> +{
> +	struct spd_eeprom *eeprom = read_spd();
> +	struct dimm_params *params = &dimm_params;
> +	int rc;
> +
> +	if (!eeprom) {
> +		pr_err("Couldn't read SPD EEPROM, using default settings\n");
> +		return;
> +	}
> +
> +	if (!check_spd_compatible(eeprom)) {
> +		pr_err("DIMM stick incompatible\n");
> +		hang();
> +	}
> +
> +	rc = ddr3_compute_dimm_parameters(&eeprom->ddr3, params);
> +	if (rc < 0) {
> +		pr_err("Couldn't compute DIMM params: %x\n", rc);
> +		return;
> +	}
> +
> +	setup_dimm_settings(params, &novena_ddr_info, &novena_ddr_cfg);
> +
> +	pr_info("Found DIMM: %s\n", params->mpart);
> +}
> +
>  static bool running_from_ram(void)
>  {
>  	return (get_pc() >= MX6_MMDC_PORT01_BASE_ADDR);
> @@ -37,6 +147,8 @@ static void setup_ram(void)
>  {
>  	mx6dq_dram_iocfg(64, &novena_ddr_regs, &novena_grp_regs);
>  	mx6_dram_cfg(&novena_ddr_info, &novena_mmdc_calib, &novena_ddr_cfg);
> +	mmdc_do_write_level_calibration();
> +	mmdc_do_dqs_calibration();
>  }
>  
>  static void load_barebox(void)
> @@ -74,6 +186,7 @@ ENTRY_FUNCTION_WITHSTACK(start_imx6q_novena, STACK_TOP, r0, r1, r2)
>  	if (!running_from_ram()) {
>  		imx6_ungate_all_peripherals();
>  		setup_uart();
> +		read_dimm_settings();
>  		setup_ram();
>  		load_barebox();
>  	} else {
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 5f2d4f4123..00c9aacb2b 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -436,6 +436,8 @@ config MACH_NITROGEN6
>  config MACH_NOVENA
>  	bool "Kosagi Novena board"
>  	select ARCH_IMX6
> +	select DDR_SPD
> +	select I2C_IMX_EARLY
>  	select MCI_IMX_ESDHC_PBL
>  	select REGULATOR_PFUZE
>  	select USB_GADGET_DRIVER_ARC_PBL
> -- 
> 2.39.0
> 


