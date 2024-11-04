Delivery-date: Mon, 04 Nov 2024 11:32:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7uOC-004hxp-0x
	for lore@lore.pengutronix.de;
	Mon, 04 Nov 2024 11:32:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7uOB-0004nN-UJ
	for lore@pengutronix.de; Mon, 04 Nov 2024 11:32:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4IktN655eeHvxIuR2HaB37hEtQEwz3OdCAYYQJbBHao=; b=iTTUnjptvivxhpdl8lsZfdUBZx
	aa99B42Tnm/E+IRs41+kXzooUwR4S5+AU/yhtrJqd5xb44xvQfD6xqJFOkow9l2b26eII1+oHnjhp
	0aMpGUVcXSsr6YJ2jajvJpt0Lr7IP7diBblIVjMGRMYFIbNX8VzJxyhPig6Fy65MSRc+mTbjCiEXQ
	bZrbe7pwBdNCAqcaoGGX5Qac2kijzrommOTlt6+KqzQ54YActTkkn2nOfUfd+4N+xhHocMoUTUs10
	3g3MK/NIgLMTfMuGdL4d0C0iBbpnT8EoO7iZD1PsRlzvQmqeUeL0Rcv4NKDZgKPFK2bkt4ZnFKC16
	rbRhl6Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7uNS-0000000DK6z-2f1y;
	Mon, 04 Nov 2024 10:32:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7uNN-0000000DK6X-41mu
	for barebox@lists.infradead.org;
	Mon, 04 Nov 2024 10:32:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t7uNL-0004hw-BR; Mon, 04 Nov 2024 11:31:59 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t7uNL-001xkh-0W;
	Mon, 04 Nov 2024 11:31:59 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t7uNL-00DRSL-0G;
	Mon, 04 Nov 2024 11:31:59 +0100
Date: Mon, 4 Nov 2024 11:31:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZyiinyrkBF--ysyW@pengutronix.de>
References: <20241029-v2024-10-0-topic-socfpga-agilex5-v1-0-96df2d7dadf4@pengutronix.de>
 <20241029-v2024-10-0-topic-socfpga-agilex5-v1-4-96df2d7dadf4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241029-v2024-10-0-topic-socfpga-agilex5-v1-4-96df2d7dadf4@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_023202_344142_A70360A8 
X-CRM114-Status: GOOD (  37.74  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URG_BIZ
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/10] arm: socfgpa: add support for SoCFPGA Agilex5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 29, 2024 at 09:42:34AM +0100, Steffen Trumtrar wrote:
> diff --git a/arch/arm/mach-socfpga/Makefile b/arch/arm/mach-socfpga/Makefile
> index 008dbc38877211fe1f317cb8eb660d8514611ddd..81934a3ded7fe6dcfb4c8ac26473a25a96560863 100644
> --- a/arch/arm/mach-socfpga/Makefile
> +++ b/arch/arm/mach-socfpga/Makefile
> @@ -14,6 +14,19 @@ obj-pbl-$(CONFIG_ARCH_SOCFPGA_ARRIA10) += arria10-bootsource.o \
>  					  arria10-init.o \
>  					  arria10-sdram.o
>  
> +pbl-$(CONFIG_ARCH_SOCFPGA_AGILEX5) += soc64-system-manager.o \
> +				      soc64-wrap-handoff.o \
> +			        iossm_mailbox.o \
> +			        mailbox_s10.o \
> +				      agilex5-sdram.o \
> +				      agilex5-secreg.o \
> +				      agilex5-clock-manager.o \
> +				      atf.o
> +
> +obj-$(CONFIG_ARCH_SOCFPGA_AGILEX5) += secure_reg_helper.o \
> +			        mailbox_s10.o \
> +				      smc_api.o

Some whitespace inconsistencies here.

> +static void cm_wait_for_lock(u32 mask)
> +{
> +	u32 inter_val;
> +	u32 retry = 0;
> +
> +	do {
> +		inter_val = readl(SOCFPGA_CLKMGR_ADDRESS + CLKMGR_STAT) & mask;
> +		/* Wait for stable lock */
> +		if (inter_val == mask)
> +			retry++;
> +		else
> +			retry = 0;

This looks strange. Shouldn't you return once your lock condition is
satisfied?

> +		if (retry >= 10)
> +			break;
> +	} while (1);
> +}
> +
> +
> +	/* Enable Periph pll clkslices */
> +	CM_REG_WRITEL(plat, CM_REG_READL(plat, CLKMGR_PERPLL_PLLC0) |
> +		      CLKMGR_PLLCX_EN_SET_MSK,
> +		      CLKMGR_PERPLL_PLLC0);
> +	CM_REG_WRITEL(plat, CM_REG_READL(plat, CLKMGR_PERPLL_PLLC1) |
> +		      CLKMGR_PLLCX_EN_SET_MSK,
> +		      CLKMGR_PERPLL_PLLC1);
> +	CM_REG_WRITEL(plat, CM_REG_READL(plat, CLKMGR_PERPLL_PLLC2) |
> +		      CLKMGR_PLLCX_EN_SET_MSK,
> +		      CLKMGR_PERPLL_PLLC2);
> +	CM_REG_WRITEL(plat, CM_REG_READL(plat, CLKMGR_PERPLL_PLLC3) |
> +		      CLKMGR_PLLCX_EN_SET_MSK,
> +		      CLKMGR_PERPLL_PLLC3);

Use CM_REG_SETBITS instead?

> +
> +	cm_wait_for_lock(CLKMGR_STAT_ALLPLL_LOCKED_MASK);
> +
> +	CM_REG_WRITEL(plat, CLKMGR_LOSTLOCK_SET_MASK, CLKMGR_MAINPLL_LOSTLOCK);
> +	CM_REG_WRITEL(plat, CLKMGR_LOSTLOCK_SET_MASK, CLKMGR_PERPLL_LOSTLOCK);
> +
> +	CM_REG_WRITEL(plat, CM_REG_READL(plat, CLKMGR_MAINPLL_PLLGLOB) |
> +		      CLKMGR_PLLGLOB_CLR_LOSTLOCK_BYPASS_MASK,
> +		      CLKMGR_MAINPLL_PLLGLOB);
> +	CM_REG_WRITEL(plat, CM_REG_READL(plat, CLKMGR_PERPLL_PLLGLOB) |
> +		      CLKMGR_PLLGLOB_CLR_LOSTLOCK_BYPASS_MASK,
> +		      CLKMGR_PERPLL_PLLGLOB);

Here as well.

> +/* MPFE NOC registers */
> +#define F2SDRAM_SIDEBAND_FLAGOUTSET0	0x50
> +#define F2SDRAM_SIDEBAND_FLAGOUTSTATUS0	0x58
> +#define SIDEBANDMGR_FLAGOUTSET0_REG	SOCFPGA_F2SDRAM_MGR_ADDRESS +\
> +					F2SDRAM_SIDEBAND_FLAGOUTSET0
> +#define SIDEBANDMGR_FLAGOUTSTATUS0_REG	SOCFPGA_F2SDRAM_MGR_ADDRESS +\
> +					F2SDRAM_SIDEBAND_FLAGOUTSTATUS0
> +
> +#define PORT_EMIF_CONFIG_OFFSET 4
> +
> +/* Reset type */
> +enum reset_type {
> +	POR_RESET,
> +	WARM_RESET,
> +	COLD_RESET,
> +	NCONFIG,
> +	JTAG_CONFIG,
> +	RSU_RECONFIG
> +};
> +
> +phys_addr_t io96b_csr_reg_addr[] = {
> +	0x18400000, /* IO96B_0 CSR registers address */
> +	0x18800000  /* IO96B_1 CSR registers address */
> +};

Should be static

> +
> +static enum reset_type get_reset_type(u32 reg)
> +{
> +	return (reg & ALT_SYSMGR_SCRATCH_REG_3_DDR_RESET_TYPE_MASK) >>
> +		ALT_SYSMGR_SCRATCH_REG_3_DDR_RESET_TYPE_SHIFT;
> +}

It looks like the caller passes a register address in reg whereas this
function seems to interpret it as a register value.

> +
> +static int set_mpfe_config(void)
> +{
> +	/* Set mpfe_lite_intfcsel */
> +	setbits_le32(IOMEM(SOCFPGA_SYSMGR_ADDRESS) + SYSMGR_SOC64_MPFE_CONFIG, BIT(2));
> +
> +	/* Set mpfe_lite_active */
> +	setbits_le32(IOMEM(SOCFPGA_SYSMGR_ADDRESS) + SYSMGR_SOC64_MPFE_CONFIG, BIT(8));
> +
> +	pr_debug("%s: mpfe_config: 0x%x\n", __func__,
> +	      readl(IOMEM(SOCFPGA_SYSMGR_ADDRESS) + SYSMGR_SOC64_MPFE_CONFIG));
> +
> +	return 0;
> +}
> +
> +static void config_ccu_mgr(struct altera_sdram_plat *plat)
> +{
> +	int ret = 0;
> +
> +	if (plat->dualport || plat->dualemif) {
> +		pr_debug("%s: config interleaving on ccu reg\n", __func__);
> +		agilex5_security_interleaving_on();
> +	} else {
> +		pr_debug("%s: config interleaving off ccu reg\n", __func__);
> +		agilex5_security_interleaving_off();
> +	}
> +
> +	if (ret) {
> +		printf("interleaving on/off ccu settings init failed: %d\n", ret);
> +		hang();
> +	}

'ret' is never set to anything in this function.

> +}
> +
> +static bool hps_ocram_dbe_status(void)
> +{
> +	u32 reg = readl(IOMEM(SOCFPGA_SYSMGR_ADDRESS) +
> +			SYSMGR_SOC64_BOOT_SCRATCH_COLD3);
> +
> +	if (reg & ALT_SYSMGR_SCRATCH_REG_3_OCRAM_DBE_MASK)
> +		return true;
> +
> +	return false;
> +}
> +

...

> +	sdram_set_firewall(hw_size);
> +
> +	/* Firewall setting for MPFE CSR */
> +	/* IO96B0_reg */
> +	writel(0x1, 0x18000d00);
> +	/* IO96B1_reg */
> +	writel(0x1, 0x18000d04);
> +	/* noc_csr */
> +	writel(0x1, 0x18000d08);

SOCFPGA_MPFE_CSR_ADDRESS + 0xd08 instead?

> +
> +	pr_debug("DDR: firewall init success\n");
> +
> +	/* Ending DDR driver initialization success tracking */
> +	ddr_init_inprogress(false);
> +
> +	pr_debug("DDR: init success\n");
> +
> +	return 0;
> +}
> diff --git a/arch/arm/mach-socfpga/iossm_mailbox.c b/arch/arm/mach-socfpga/iossm_mailbox.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..de79b8370d8524553b31feb6e8845f7100408d1f
> --- /dev/null
> +++ b/arch/arm/mach-socfpga/iossm_mailbox.c
> @@ -0,0 +1,551 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2022-2024 Intel Corporation <www.intel.com>
> + *
> + */
> +

You're using pr_ functions here. Please define a pr_fmt to give the user
more context.

> +#include <common.h>
> +#include <io.h>
> +#include <linux/bitfield.h>
> +#include "iossm_mailbox.h"
> +#include <mach/socfpga/generic.h>
> +#include <mach/socfpga/soc64-regs.h>
> +#include <mach/socfpga/soc64-system-manager.h>
> +
> +#define ECC_INTSTATUS_SERR SOCFPGA_SYSMGR_ADDRESS + 0x9C
> +#define ECC_INISTATUS_DERR SOCFPGA_SYSMGR_ADDRESS + 0xA0
> +#define DDR_CSR_CLKGEN_LOCKED_IO96B0_MASK BIT(16)
> +#define DDR_CSR_CLKGEN_LOCKED_IO96B1_MASK BIT(17)
> +
> +#define DDR_CSR_CLKGEN_LOCKED_IO96B_MASK(x)	(i == 0 ? DDR_CSR_CLKGEN_LOCKED_IO96B0_MASK : \
> +							DDR_CSR_CLKGEN_LOCKED_IO96B1_MASK)
> +#define MAX_RETRY_COUNT 3
> +#define NUM_CMD_RESPONSE_DATA 3
> +
> +#define INTF_IP_TYPE_MASK	GENMASK(31, 29)
> +#define INTF_INSTANCE_ID_MASK	GENMASK(28, 24)
> +
> +/* supported DDR type list */
> +static const char *ddr_type_list[7] = {
> +		"DDR4", "DDR5", "DDR5_RDIMM", "LPDDR4", "LPDDR5", "QDRIV", "UNKNOWN"
> +};
> +
> +int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id
> +					, u32 usr_cmd_type, u32 usr_cmd_opcode, u32 cmd_param_0
> +					, u32 cmd_param_1, u32 cmd_param_2, u32 cmd_param_3
> +					, u32 cmd_param_4, u32 cmd_param_5, u32 cmd_param_6
> +					, u32 resp_data_len, struct io96b_mb_resp *resp)
> +{
> +	int i;
> +	int ret;
> +	u32 cmd_req, cmd_resp;
> +
> +	/* Initialized zeros for responses*/
> +	resp->cmd_resp_status = 0;
> +	for (i = 0; i < NUM_CMD_RESPONSE_DATA; i++)
> +		resp->cmd_resp_data[i] = 0;

Could be:

memset(resp, 0x0, sizeof(*resp));

> +
> +	/* Ensure CMD_REQ is cleared before write any command request */
> +	ret = wait_for_timeout((IOMEM(io96b_csr_addr) + IOSSM_CMD_REQ_OFFSET), GENMASK(31, 0), false);
> +	if (ret) {
> +		printf("%s: CMD_REQ not ready\n", __func__);

pr_err()

None of the callers checks the return value. Maybe print some of the
incoming parameters to see where we actually are in case of an error.

> +		return -1;
> +	}
> +
> +	/* Write CMD_PARAM_* */
> +	for (i = 0; i < 6 ; i++) {
> +		switch (i) {
> +		case 0:
> +			if (cmd_param_0)
> +				writel(cmd_param_0, io96b_csr_addr + IOSSM_CMD_PARAM_0_OFFSET);
> +			break;
> +		case 1:
> +			if (cmd_param_1)
> +				writel(cmd_param_1, io96b_csr_addr + IOSSM_CMD_PARAM_1_OFFSET);
> +			break;
> +		case 2:
> +			if (cmd_param_2)
> +				writel(cmd_param_2, io96b_csr_addr + IOSSM_CMD_PARAM_2_OFFSET);
> +			break;
> +		case 3:
> +			if (cmd_param_3)
> +				writel(cmd_param_3, io96b_csr_addr + IOSSM_CMD_PARAM_3_OFFSET);
> +			break;
> +		case 4:
> +			if (cmd_param_4)
> +				writel(cmd_param_4, io96b_csr_addr + IOSSM_CMD_PARAM_4_OFFSET);
> +			break;
> +		case 5:
> +			if (cmd_param_5)
> +				writel(cmd_param_5, io96b_csr_addr + IOSSM_CMD_PARAM_5_OFFSET);
> +			break;
> +		case 6:
> +			if (cmd_param_6)
> +				writel(cmd_param_6, io96b_csr_addr + IOSSM_CMD_PARAM_6_OFFSET);
> +			break;
> +		default:
> +			printf("%s: Invalid command parameter\n", __func__);
> +		}
> +	}

Do I miss something or is this loop together with the switch/case just
unnecessary and could be dropped? Should be plain

	if (cmd_param_0)
		writel(cmd_param_0, io96b_csr_addr + IOSSM_CMD_PARAM_0_OFFSET);
	if (cmd_param_1)
		writel(cmd_param_1, io96b_csr_addr + IOSSM_CMD_PARAM_1_OFFSET);
	...

What's the purpose of the if() before writing the registers? With the
if() check it looks like you only risk that the previous value is
reused, so maybe better drop it?

cmd_param_6 is always unused which is likely not intended.


> +
> +	/* Write CMD_REQ (IP_TYPE, IP_INSTANCE_ID, CMD_TYPE and CMD_OPCODE) */
> +	cmd_req = (usr_cmd_opcode << 0) | (usr_cmd_type << 16) | (instance_id << 24) |
> +				(ip_type << 29);
> +	writel(cmd_req, io96b_csr_addr + IOSSM_CMD_REQ_OFFSET);
> +	pr_debug("%s: Write 0x%x to IOSSM_CMD_REQ_OFFSET 0x%llx\n", __func__, cmd_req
> +		, io96b_csr_addr + IOSSM_CMD_REQ_OFFSET);
> +
> +	/* Read CMD_RESPONSE_READY in CMD_RESPONSE_STATUS*/
> +	ret = wait_for_timeout((IOMEM(io96b_csr_addr) + IOSSM_CMD_RESPONSE_STATUS_OFFSET),
> +			       IOSSM_STATUS_COMMAND_RESPONSE_READY, true);
> +	if (ret) {
> +		printf("%s: CMD_RESPONSE ERROR:\n", __func__);
> +		cmd_resp = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
> +		printf("%s: STATUS_GENERAL_ERROR: 0x%x\n", __func__, (cmd_resp >> 1) & 0xF);
> +		printf("%s: STATUS_CMD_RESPONSE_ERROR: 0x%x\n", __func__, (cmd_resp >> 5) & 0x7);

pr_something()

> +	}
> +
> +	/* read CMD_RESPONSE_STATUS*/
> +	resp->cmd_resp_status = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
> +	pr_debug("%s: CMD_RESPONSE_STATUS 0x%llx: 0x%x\n", __func__, io96b_csr_addr +
> +		IOSSM_CMD_RESPONSE_STATUS_OFFSET, resp->cmd_resp_status);
> +
> +	/* read CMD_RESPONSE_DATA_* */
> +	for (i = 0; i < resp_data_len; i++) {

Passing resp_data_len to this function looks rather unnecessary. Just
always read all 3 response data words. The caller should be able to pick
the desired onces by itself.

> +		switch (i) {
> +		case 0:
> +			resp->cmd_resp_data[i] =
> +					readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_0_OFFSET);
> +			pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_0_OFFSET 0x%llx: 0x%x\n", __func__
> +				, io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_0_OFFSET,
> +				resp->cmd_resp_data[i]);
> +			break;
> +		case 1:
> +			resp->cmd_resp_data[i] =
> +					readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_1_OFFSET);
> +			pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_1_OFFSET 0x%llx: 0x%x\n", __func__
> +				, io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_1_OFFSET,
> +				resp->cmd_resp_data[i]);
> +			break;
> +		case 2:
> +			resp->cmd_resp_data[i] =
> +					readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_2_OFFSET);
> +			pr_debug("%s: IOSSM_CMD_RESPONSE_DATA_2_OFFSET 0x%llx: 0x%x\n", __func__
> +				, io96b_csr_addr + IOSSM_CMD_RESPONSE_DATA_2_OFFSET,
> +				resp->cmd_resp_data[i]);
> +			break;
> +		default:
> +			printf("%s: Invalid response data\n", __func__);
> +		}
> +	}

Define a IOSSM_CMD_RESPONSE_DATA_OFFSET[x] and cleanup this loop.

> +
> +	resp->cmd_resp_status = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
> +	pr_debug("%s: CMD_RESPONSE_STATUS 0x%llx: 0x%x\n", __func__, io96b_csr_addr +
> +		IOSSM_CMD_RESPONSE_STATUS_OFFSET, resp->cmd_resp_status);
> +
> +	/* write CMD_RESPONSE_READY = 0 */
> +	clrbits_le32((u32 *)(uintptr_t)(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET)
> +					, IOSSM_STATUS_COMMAND_RESPONSE_READY);
> +
> +	resp->cmd_resp_status = readl(io96b_csr_addr + IOSSM_CMD_RESPONSE_STATUS_OFFSET);
> +	pr_debug("%s: CMD_RESPONSE_READY 0x%llx: 0x%x\n", __func__, io96b_csr_addr +
> +		IOSSM_CMD_RESPONSE_STATUS_OFFSET, resp->cmd_resp_status);
> +
> +	return 0;
> +}
> +
> +

...

> +void init_mem_cal(struct io96b_info *io96b_ctrl)
> +{
> +	int count, i, ret;
> +
> +	/* Initialize overall calibration status */
> +	io96b_ctrl->overall_cal_status = false;
> +
> +	/* Check initial calibration status for the assigned IO96B*/
> +	count = 0;
> +	for (i = 0; i < io96b_ctrl->num_instance; i++) {
> +		if (io96b_ctrl->ckgen_lock) {
> +			ret = is_ddr_csr_clkgen_locked(DDR_CSR_CLKGEN_LOCKED_IO96B_MASK(i),
> +						       io96b_ctrl->num_port);
> +			if (ret) {
> +				printf("%s: ckgena_lock iossm IO96B_%d is not locked\n",
> +				       __func__, i);
> +				hang();
> +			}
> +		}
> +		ret = io96b_cal_status(io96b_ctrl->io96b[i].io96b_csr_addr);
> +		if (ret) {
> +			io96b_ctrl->io96b[i].cal_status = false;
> +			printf("%s: Initial DDR calibration IO96B_%d failed %d\n", __func__, i
> +					, ret);
> +			hang();
> +		}
> +		io96b_ctrl->io96b[i].cal_status = true;
> +		printf("%s: Initial DDR calibration IO96B_%d succeed\n", __func__, i);
> +		count++;
> +	}
> +
> +	if (count == io96b_ctrl->num_instance)
> +		io96b_ctrl->overall_cal_status = true;

Is there any chance to leave the loop with this condition not met?

> +}
> +
> +/*
> + * Trying 3 times re-calibration if initial calibration failed
> + */
> +int trig_mem_cal(struct io96b_info *io96b_ctrl)
> +{
> +	struct io96b_mb_resp usr_resp;
> +	bool recal_success;
> +	int i, j, k;
> +	u32 cal_stat_offset;
> +	u8 cal_stat;
> +	u8 trig_cal_stat;
> +	int count = 0;
> +
> +	for (i = 0; i < io96b_ctrl->num_instance; i++) {
> +		if (!(io96b_ctrl->io96b[i].cal_status)) {

Invert this condition and continue the loop instead. Saves you one
indention level.

> +			for (j = 0; j < io96b_ctrl->io96b[i].mb_ctrl.num_mem_interface; j++) {
> +				/* Get the memory calibration status for memory interface */
> +				io96b_mb_req(io96b_ctrl->io96b[i].io96b_csr_addr, 0, 0
> +						, CMD_TRIG_MEM_CAL_OP, GET_MEM_CAL_STATUS, 0, 0, 0
> +						, 0, 0, 0, 0, 2, &usr_resp);

Move this into the loop below.

> +
> +				recal_success = false;
> +
> +				/* Re-calibration first memory interface with failed calibration */
> +				for (k = 0; k < MAX_RETRY_COUNT; k++) {
> +					cal_stat_offset = usr_resp.cmd_resp_data[j];
> +					cal_stat = readl(io96b_ctrl->io96b[i].io96b_csr_addr +
> +							cal_stat_offset);
> +					if (cal_stat == INTF_MEM_CAL_STATUS_SUCCESS) {
> +						recal_success = true;
> +						break;
> +					}
> +					io96b_mb_req(io96b_ctrl->io96b[i].io96b_csr_addr
> +						, io96b_ctrl->io96b[i].mb_ctrl.ip_type[j]
> +						, io96b_ctrl->io96b[i].mb_ctrl.ip_instance_id[j]
> +						, CMD_TRIG_MEM_CAL_OP, TRIG_MEM_CAL, 0, 0, 0, 0, 0
> +						, 0, 0, 2, &usr_resp);
> +
> +					trig_cal_stat =
> +					IOSSM_CMD_RESPONSE_DATA_SHORT(usr_resp.cmd_resp_status) &
> +					BIT(0);
> +					pr_debug("%s: Memory calibration triggered status = %d\n",
> +					      __func__, trig_cal_stat);
> +
> +					udelay(1);
> +
> +					io96b_mb_req(io96b_ctrl->io96b[i].io96b_csr_addr, 0, 0
> +							, CMD_TRIG_MEM_CAL_OP, GET_MEM_CAL_STATUS
> +							, 0, 0, 0, 0, 0, 0, 0, 2, &usr_resp);
> +				}
> +
> +				if (!recal_success) {
> +					printf("%s: Error as SDRAM calibration failed\n", __func__);
> +					hang();
> +				}
> +			}
> +
> +			io96b_ctrl->io96b[i].cal_status = true;
> +			io96b_ctrl->overall_cal_status = io96b_ctrl->io96b[i].cal_status;
> +			printf("%s: Initial DDR calibration IO96B_%d succeed\n", __func__, i);
> +			count++;
> +		}
> +	}
> +
> +	if (io96b_ctrl->overall_cal_status)
> +		pr_debug("%s: Overall SDRAM calibration success\n", __func__);
> +
> +	return 0;
> +}
> +
> +++ b/arch/arm/mach-socfpga/iossm_mailbox.h
> @@ -0,0 +1,152 @@
> +#ifndef IOSSM_MAILBOX_H_
> +#define IOSSM_MAILBOX_H_
> +
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2022-2023 Intel Corporation <www.intel.com>
> + */
> +
> +#define TIMEOUT				120000

This define is unused.

> +#define IOSSM_STATUS_CAL_SUCCESS	BIT(0)
> +#define IOSSM_STATUS_CAL_FAIL		BIT(1)
> +#define IOSSM_STATUS_CAL_BUSY		BIT(2)
> +#define IOSSM_STATUS_COMMAND_RESPONSE_READY	BIT(0)
> +#define IOSSM_CMD_RESPONSE_STATUS_OFFSET	0x45C
> +#define IOSSM_CMD_RESPONSE_DATA_0_OFFSET	0x458
> +#define IOSSM_CMD_RESPONSE_DATA_1_OFFSET	0x454
> +#define IOSSM_CMD_RESPONSE_DATA_2_OFFSET	0x450
> +#define IOSSM_CMD_REQ_OFFSET			0x43C
> +#define IOSSM_CMD_PARAM_0_OFFSET		0x438
> +#define IOSSM_CMD_PARAM_1_OFFSET		0x434
> +#define IOSSM_CMD_PARAM_2_OFFSET		0x430
> +#define IOSSM_CMD_PARAM_3_OFFSET		0x42C
> +#define IOSSM_CMD_PARAM_4_OFFSET		0x428
> +#define IOSSM_CMD_PARAM_5_OFFSET		0x424
> +#define IOSSM_CMD_PARAM_6_OFFSET		0x420
> +#define IOSSM_STATUS_OFFSET			0x400
> +#define IOSSM_CMD_RESPONSE_DATA_SHORT_MASK	GENMASK(31, 16)
> +#define IOSSM_CMD_RESPONSE_DATA_SHORT(data) (((data) & IOSSM_CMD_RESPONSE_DATA_SHORT_MASK) >> 16)
> +#define MAX_IO96B_SUPPORTED		2
> +
> +int io96b_mb_req(phys_addr_t io96b_csr_addr, u32 ip_type, u32 instance_id
> +			, u32 usr_cmd_type, u32 usr_cmd_opcode, u32 cmd_param_0
> +			, u32 cmd_param_1, u32 cmd_param_2, u32 cmd_param_3, u32 cmd_param_4
> +			, u32 cmd_param_5, u32 cmd_param_6, u32 resp_data_len
> +			, struct io96b_mb_resp *resp);

The majority of callers do not set any cmd_param, so maybe create
a static inline io96b_mb_req_no_param()?

> +
> +/* Supported IOSSM mailbox function */
> +void io96b_mb_init(struct io96b_info *io96b_ctrl);
> +int io96b_cal_status(phys_addr_t addr);
> +void init_mem_cal(struct io96b_info *io96b_ctrl);
> +int trig_mem_cal(struct io96b_info *io96b_ctrl);
> +int get_mem_technology(struct io96b_info *io96b_ctrl);
> +int get_mem_width_info(struct io96b_info *io96b_ctrl);
> +int ecc_enable_status(struct io96b_info *io96b_ctrl);
> +int bist_mem_init_start(struct io96b_info *io96b_ctrl);

Please give these functions a meaningful prefix. io96b_ maybe?

> +#include <mach/socfpga/mailbox_s10.h>
> +#include <mach/socfpga/soc64-regs.h>
> +#include <mach/socfpga/soc64-system-manager.h>
> +
> +#define MBOX_READL(reg)			\
> +	 readl(SOCFPGA_MAILBOX_ADDRESS + (reg))
> +
> +#define MBOX_WRITEL(data, reg)		\
> +	writel(data, SOCFPGA_MAILBOX_ADDRESS + (reg))
> +
> +#define MBOX_READ_RESP_BUF(rout)	\
> +	MBOX_READL(MBOX_RESP_BUF + ((rout) * sizeof(u32)))
> +
> +#define MBOX_WRITE_CMD_BUF(data, cin)	\
> +	MBOX_WRITEL(data, MBOX_CMD_BUF + ((cin) * sizeof(u32)))
> +
> +static __always_inline int mbox_polling_resp(u32 rout)

Why not let the compiler decide if this and the following functions
should be inlined or not?

> +{
> +	u32 rin;
> +	unsigned long i = 2000;
> +
> +	while (i) {
> +		rin = MBOX_READL(MBOX_RIN);
> +		if (rout != rin)
> +			return 0;
> +
> +		udelay(1000);
> +		i--;
> +	}
> +
> +	return -ETIMEDOUT;
> +}
> +
> +static __always_inline int mbox_write_cmd_buffer(u32 *cin, u32 data,
> +						 int *is_cmdbuf_overflow)

*is_cmdbuf_overflow is always initialized to 0 by the caller which makes
it rather unnecessary to be a function parameter.

> +{
> +	int timeout = 1000;
> +
> +	while (timeout) {
> +		if (mbox_is_cmdbuf_full(*cin)) {
> +			if (is_cmdbuf_overflow &&
> +			    *is_cmdbuf_overflow == 0) {
> +				/* Trigger SDM doorbell */
> +				MBOX_WRITEL(1, MBOX_DOORBELL_TO_SDM);
> +				*is_cmdbuf_overflow = 1;
> +			}
> +			udelay(1000);
> +		} else {
> +			/* write header to circular buffer */
> +			MBOX_WRITE_CMD_BUF(data, (*cin)++);
> +			*cin %= MBOX_CMD_BUFFER_SIZE;
> +			MBOX_WRITEL(*cin, MBOX_CIN);
> +			if (is_cmdbuf_overflow)
> +				*is_cmdbuf_overflow = 0;
> +			break;
> +		}
> +		timeout--;
> +	}
> +
> +	if (!timeout)
> +		return -ETIMEDOUT;
> +
> +	return 0;
> +}
> +
> +

...

> +
> +int mbox_init(void)

Please give exported functions a meaningful prefix.

> +{
> +	int ret;
> +
> +	/* enable mailbox interrupts */
> +	MBOX_WRITEL(MBOX_ALL_INTRS, MBOX_FLAGS);
> +
> +	/* Ensure urgent request is cleared */
> +	MBOX_WRITEL(0, MBOX_URG);
> +
> +	/* Ensure the Doorbell Interrupt is cleared */
> +	MBOX_WRITEL(0, MBOX_DOORBELL_FROM_SDM);
> +
> +	ret = mbox_send_cmd(MBOX_ID_BAREBOX, MBOX_RESTART, MBOX_CMD_DIRECT, 0,
> +		 	    NULL, 1, 0, NULL);
> +	if (ret)
> +		return ret;
> +
> +	pr_debug("%s: success...\n", __func__);
> +
> +	/* Renable mailbox interrupts after MBOX_RESTART */
> +	MBOX_WRITEL(MBOX_ALL_INTRS, MBOX_FLAGS);
> +
> +	return 0;
> +}
> +
> diff --git a/include/linux/intel-smc.h b/include/linux/intel-smc.h

Move somewhere in include/mach/socfpga/

> new file mode 100644
> diff --git a/include/mach/socfpga/soc64-init.h b/include/mach/socfpga/soc64-init.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..15113f70701c6452affad3725c3e8375133300f3
> --- /dev/null
> +++ b/include/mach/socfpga/soc64-init.h
> @@ -0,0 +1,4 @@
> +#ifndef SOC64-INIT_H_
> +#define SOC64-INIT_H_
> +
> +#endif // SOC64-INIT_H_

This file is empty and unused.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


