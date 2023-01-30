Delivery-date: Mon, 30 Jan 2023 21:19:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMad5-007zIk-GL
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 21:19:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMad2-00081R-09
	for lore@pengutronix.de; Mon, 30 Jan 2023 21:19:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gBil+ESUYWzZxOGr/pZrVYg4KhhgH8rN63GEeDeq+1k=; b=bwiiSD7OuQkYvxScwvHs87O6w3
	uc594cftOOsLWvAu8XpIaHf/j2Kri9xy01pYQ1oRLFN57wyXsjJSvQBTInzxaPdLzqoqmSb50Urp+
	e5RKn6IsRKW7yVh4oeXyW7oDW0svo0z+5Xs3q9t7W51YVVKdG7BKv+PlKCvZthXiGb2riPAIoCdns
	VjOMsQF2lwDdJMXJ9jbDE6i5SRIoGU9rZwnieLOOSD89LYsI1kuc+zQJ+aSF0PK/BCMR1B4Cc0VR0
	J6cZFPX2s9/NtbiJUrz7syWRkE6a9CL1a0LwYGDAYL2HiDxJhraFSIJz3GMCwRMumpQOYYZgg1MQC
	wimlS7JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMabn-005Kwf-S5; Mon, 30 Jan 2023 20:18:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMabj-005Kvx-0F
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 20:18:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pMabh-0007uQ-4Y; Mon, 30 Jan 2023 21:18:25 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pMabg-00070T-Ti; Mon, 30 Jan 2023 21:18:24 +0100
Date: Mon, 30 Jan 2023 21:18:24 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230130201824.qgcrbyefwfg2psna@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230129232758.1799987-5-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230129232758.1799987-5-contact@jookia.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_121827_066502_59734240 
X-CRM114-Status: GOOD (  26.86  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 4/4] ARM: novena: Use DDR3 information from SPD EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi John,

thanks for your patch.

On 23-01-30, John Watts wrote:
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
>  arch/arm/boards/novena/lowlevel.c | 108 ++++++++++++++++++++++++++++++
>  arch/arm/mach-imx/Kconfig         |   2 +
>  2 files changed, 110 insertions(+)
> 
> diff --git a/arch/arm/boards/novena/lowlevel.c b/arch/arm/boards/novena/lowlevel.c
> index 3acf983ee0..54980bda4e 100644
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
> @@ -10,6 +12,7 @@
>  #include <mach/imx6-mmdc.h>
>  #include <mach/iomux-mx6.h>
>  #include <mach/xload.h>
> +#include <pbl/i2c.h>
>  #include <soc/fsl/fsl_udc.h>
>  #include "ddr_regs.h"
>  
> @@ -17,6 +20,106 @@
>  
>  extern char __dtb_imx6q_novena_start[];
>  
> +static struct spd_eeprom spd_eeprom;
> +static struct dimm_params dimm_params;
> +
> +static struct pbl_i2c *setup_spd_i2c(void)
> +{
> +	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
> +
> +	imx_setup_pad(iomuxbase, MX6Q_PAD_CSI0_DAT8__I2C1_SDA);
> +	imx_setup_pad(iomuxbase, MX6Q_PAD_CSI0_DAT9__I2C1_SCL);
> +
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
> +		pr_err("Couldn't read SPD EEPROM: %i\n", rc);
> +		return NULL;
> +	}
> +
> +	rc = ddr3_spd_check(&eeprom->ddr3);
> +	if (rc < 0) {
> +		pr_err("Couldn't verify SPD data: %i\n", rc);
> +		return NULL;
> +	}
> +
> +	return eeprom;
> +}
> +
> +static bool check_spd_compatible(struct spd_eeprom *eeprom)
> +{
> +	if (eeprom->ddr3.mem_type != 0x0b) {

Is this parameter and value standarized?

> +		pr_err("SPD data is not DDR3\n");
> +		return false;
> +	}
> +
> +	if ((eeprom->ddr3.bus_width & 0x1f) != 0x03) {

Same question as above. Would be nice to avoid magic numbers if this is
the case.

Regards,
  Marco

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
> +	int capacity_gbit = params->capacity / 0x8000000;
> +	int density_rank = capacity_gbit / params->n_ranks;
> +
> +	info->ncs = params->n_ranks;
> +	info->cs_density = density_rank;
> +	cfg->mem_speed = params->tckmin_x_ps;
> +	cfg->density = density_rank / params->n_banks_per_sdram_device;
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
> +		pr_err("Couldn't compute DIMM params: %i\n", rc);
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
> @@ -36,8 +139,13 @@ static void setup_uart(void)
>  
>  static void setup_ram(void)
>  {
> +	read_dimm_settings();
> +
>  	mx6dq_dram_iocfg(64, &novena_ddr_regs, &novena_grp_regs);
>  	mx6_dram_cfg(&novena_ddr_info, &novena_mmdc_calib, &novena_ddr_cfg);
> +
> +	mmdc_do_write_level_calibration();
> +	mmdc_do_dqs_calibration();
>  }
>  
>  static void load_barebox(void)
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 7993835be7..aa7a86da66 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -437,6 +437,8 @@ config MACH_NITROGEN6
>  config MACH_NOVENA
>  	bool "Kosagi Novena board"
>  	select ARCH_IMX6
> +	select DDR_SPD
> +	select I2C_IMX_EARLY
>  	select MCI_IMX_ESDHC_PBL
>  	select USB_GADGET_DRIVER_ARC_PBL
>  
> -- 
> 2.39.1
> 
> 
> 


