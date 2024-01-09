Delivery-date: Tue, 09 Jan 2024 10:29:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Pz-00A6g4-25
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 10:29:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8Py-0003ae-JX
	for lore@pengutronix.de; Tue, 09 Jan 2024 10:29:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CJ5PyJV6/wvIitLPIKUJDKasupjNbe3saYaLctX82zA=; b=UaTbYqwxF4xY8b1BJXSmlWdbPr
	MxdjI4n0UxA+n/MmsMGPYPwzzYDqsrYjpMjFlM6J7Rd9tN97ouzkDzJ4IQ8n/CScmPbY3BP/THePF
	7KiaY6dI6fISwixVCPLXKJWNr6k/jrl4ISQf1SRzPzYXY/b/ptv9g5owPtzliVMvI+ptvlzs4n1IX
	/bh1e8lFpIPCgTKWGAhoH19WOPtIbvAEJOi0cRHTt7F4hj2Co6AX0MU+H1dB3/RooYWBisE4geNvz
	sA1W90DBiAM2nPUBz4UYKJCDmxDZbNiRZZ32sEK/0HAsWrg9SyRwoaQnvMmoda2W9XFnGgoLuluh4
	hx/6sI8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8P1-007VvB-2x;
	Tue, 09 Jan 2024 09:28:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8Ox-007Vu2-2E
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 09:28:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rN8Ow-0002xk-E2; Tue, 09 Jan 2024 10:28:02 +0100
Message-ID: <d05e1a33-6147-4366-a369-9704794ab819@pengutronix.de>
Date: Tue, 9 Jan 2024 10:28:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240109091603.235589-1-s.hauer@pengutronix.de>
 <20240109091603.235589-9-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240109091603.235589-9-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_012803_884947_00FEBDD5 
X-CRM114-Status: GOOD (  25.37  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 08/10] ARM: Layerscape: LS1028a: fixup icids
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 09.01.24 10:16, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

A short message on what ICIDs are would be nice.

Cheers,
Ahmad

> ---
>  arch/arm/mach-layerscape/icid.c      | 213 +++++++++++++++++++++++++++
>  arch/arm/mach-layerscape/soc.c       |   1 +
>  include/mach/layerscape/layerscape.h |   1 +
>  3 files changed, 215 insertions(+)
> 
> diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
> index f916ec7baf..93fec286c6 100644
> --- a/arch/arm/mach-layerscape/icid.c
> +++ b/arch/arm/mach-layerscape/icid.c
> @@ -5,6 +5,7 @@
>  #include <init.h>
>  #include <of_address.h>
>  #include <soc/fsl/immap_lsch2.h>
> +#include <soc/fsl/immap_lsch3.h>
>  #include <soc/fsl/fsl_qbman.h>
>  #include <soc/fsl/fsl_fman.h>
>  #include <mach/layerscape/layerscape.h>
> @@ -580,3 +581,215 @@ void ls1046a_setup_icids(void)
>  
>  	of_register_fixup(of_fixup_ls1046a, NULL);
>  }
> +
> +static const struct icid_id_table icid_tbl_ls1028a[] = {
> +	{
> +		.compat = "snps,dwc3",
> +		.id = 1,
> +		.reg = 1,
> +		.compat_addr = LSCH3_XHCI_USB1_ADDR,
> +		.reg_addr = offsetof(struct lsch3_ccsr_gur, usb1_amqr) + LSCH3_GUTS_ADDR,
> +	}, {
> +		.compat = "snps,dwc3",
> +		.id = 2,
> +		.reg = 2,
> +		.compat_addr = LSCH3_XHCI_USB2_ADDR,
> +		.reg_addr = offsetof(struct lsch3_ccsr_gur, usb2_amqr) + LSCH3_GUTS_ADDR,
> +	}, {
> +		.compat = "fsl,esdhc",
> +		.id = 3,
> +		.reg = 3,
> +		.compat_addr = LSCH3_ESDHC1_BASE_ADDR,
> +		.reg_addr = offsetof(struct lsch3_ccsr_gur, sdmm1_amqr) + LSCH3_GUTS_ADDR,
> +	}, {
> +		.compat = "fsl,esdhc",
> +		.id = 3,
> +		.reg = 3,
> +		.compat_addr = LSCH3_ESDHC2_BASE_ADDR,
> +		.reg_addr = offsetof(struct lsch3_ccsr_gur, sdmm2_amqr) + LSCH3_GUTS_ADDR,
> +	}, {
> +		.compat = "fsl,ls1028a-ahci",
> +		.id = 4,
> +		.reg = 4,
> +		.compat_addr = LSCH3_AHCI1_ADDR,
> +		.reg_addr = offsetof(struct lsch3_ccsr_gur, sata1_amqr) + LSCH3_GUTS_ADDR,
> +	}, {
> +		.compat = "fsl,vf610-edma",
> +		.id = 40,
> +		.reg = 40,
> +		.compat_addr = LSCH3_EDMA_ADDR,
> +		.reg_addr = offsetof(struct lsch3_ccsr_gur, spare3_amqr) + LSCH3_GUTS_ADDR,
> +	},  {
> +		.compat = "fsl,ls1028a-qdma",
> +		.id = 5,
> +		.reg = (1 << 31) | 5,
> +		.compat_addr = LSCH3_QDMA_ADDR,
> +		.reg_addr = LSCH3_QDMA_ADDR + QMAN_CQSIDR_REG,
> +	}, {
> +		.compat = NULL,
> +		.id = 5,
> +		.reg = (1 << 31) | 5,
> +		.compat_addr = LSCH3_QDMA_ADDR,
> +		.reg_addr = LSCH3_QDMA_ADDR + QMAN_CQSIDR_REG + 4,
> +	}, {
> +		.compat = "vivante,gc",
> +		.id = 71,
> +		.reg = 71,
> +		.compat_addr = LSCH3_GPU_ADDR,
> +		.reg_addr = offsetof(struct lsch3_ccsr_gur, misc1_amqr) + LSCH3_GUTS_ADDR,
> +	}, {
> +		.compat = "arm,mali-dp500",
> +		.id = 72,
> +		.reg = 72,
> +		.compat_addr = LSCH3_DISPLAY_ADDR,
> +		.reg_addr = offsetof(struct lsch3_ccsr_gur, spare2_amqr) + LSCH3_GUTS_ADDR,
> +	}, {
> +		.compat = "fsl,sec-v4.0-job-ring",
> +		.id = 65,
> +		.reg = 65,
> +		.compat_addr = LSCH3_SEC_JR0_ADDR,
> +		.reg_addr = offsetof(struct ccsr_sec, jrliodnr[0].ls) + LSCH3_SEC_ADDR,
> +        }, {
> +		.compat = "fsl,sec-v4.0-job-ring",
> +		.id = 66,
> +		.reg = 66,
> +		.compat_addr = LSCH3_SEC_JR1_ADDR,
> +		.reg_addr = offsetof(struct ccsr_sec, jrliodnr[1].ls) + LSCH3_SEC_ADDR,
> +	}, {
> +		.id = 67,
> +		.reg = 67,
> +		.compat_addr = LSCH3_SEC_JR2_ADDR,
> +		.reg_addr = offsetof(struct ccsr_sec, jrliodnr[2].ls) + LSCH3_SEC_ADDR,
> +	}, {
> +		.compat = "fsl,sec-v4.0-job-ring",
> +		.id = 68,
> +		.reg = 68,
> +		.compat_addr = LSCH3_SEC_JR3_ADDR,
> +		.reg_addr = offsetof(struct ccsr_sec, jrliodnr[3].ls) + LSCH3_SEC_ADDR,
> +	}, {
> +		.id = 64,
> +		.reg = 64,
> +		.compat_addr = 0,
> +		.reg_addr = offsetof(struct ccsr_sec, rticliodnr[0].ls) + LSCH3_SEC_ADDR,
> +	}, {
> +		.id = 64,
> +		.reg = 64,
> +		.compat_addr = 0,
> +		.reg_addr = offsetof(struct ccsr_sec, rticliodnr[1].ls) + LSCH3_SEC_ADDR,
> +	}, {
> +		.id = 64,
> +		.reg = 64,
> +		.compat_addr = 0,
> +		.reg_addr = offsetof(struct ccsr_sec, rticliodnr[2].ls) + LSCH3_SEC_ADDR,
> +	}, {
> +		.id = 64,
> +		.reg = 64,
> +		.compat_addr = 0,
> +		.reg_addr = offsetof(struct ccsr_sec, rticliodnr[3].ls) + LSCH3_SEC_ADDR,
> +	}, {
> +		.id = 64,
> +		.reg = 64,
> +		.compat_addr = 0,
> +		.reg_addr = offsetof(struct ccsr_sec, decoliodnr[0].ls) + LSCH3_SEC_ADDR,
> +	}, {
> +		.id = 64,
> +		.reg = 64,
> +		.compat_addr = 0,
> +		.reg_addr = offsetof(struct ccsr_sec, decoliodnr[1].ls) + LSCH3_SEC_ADDR,
> +	}
> +};
> +
> +static int of_fixup_icid_ls1028a(struct device_node *root, void *context)
> +{
> +	phandle iommu_handle;
> +
> +	iommu_handle = of_get_iommu_handle(root);
> +	if (!iommu_handle)
> +		return 0;
> +
> +	of_fixup_icid(root, iommu_handle, icid_tbl_ls1028a, ARRAY_SIZE(icid_tbl_ls1028a));
> +
> +	return 0;
> +}
> +
> +/* offset of IERB config register per PCI function */
> +static const int ierb_offset[] = {
> +	0x0800,
> +	0x1800,
> +	0x2800,
> +	0x3800,
> +	0x4800,
> +	0x5800,
> +	0x6800,
> +	-1,
> +	0x0804,
> +	0x0808,
> +	0x1804,
> +	0x1808,
> +};
> +
> +#define ECAM_IERB_BASE                0x1f0800000ULL
> +#define ECAM_IERB_MSICAR              (ECAM_IERB_BASE + 0xa400)
> +#define ECAM_IERB_MSICAR_VALUE                0x30
> +#define FSL_ECAM_STREAM_ID_START 41
> +
> +/*
> + * Use a custom function for LS1028A, for now this is the only SoC with IERB
> + * and we're currently considering reorganizing IERB for future SoCs.
> + */
> +static void ls1028a_set_ecam_icids(void)
> +{
> +	int i;
> +
> +	out_le32(ECAM_IERB_MSICAR, ECAM_IERB_MSICAR_VALUE);
> +
> +	for (i = 0; i < ARRAY_SIZE(ierb_offset); i++) {
> +		if (ierb_offset[i] < 0)
> +			continue;
> +
> +		out_le32(ECAM_IERB_BASE + ierb_offset[i],
> +			 FSL_ECAM_STREAM_ID_START + i);
> +	}
> +}
> +
> +static int of_fixup_ecam_ls1028a(struct device_node *root, void *context)
> +{
> +	struct device_node *np;
> +	int i, ret;
> +	const char *props[] = { "msi-map", "iommu-map" };
> +	uint32_t map[4];
> +
> +	np = of_find_compatible_node(root, NULL, "pci-host-ecam-generic");
> +	if (!np) {
> +		pr_info("No \"pci-host-ecam-generic\" node found, won't fixup\n");
> +		return 0;
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(props); i++) {
> +		ret = of_property_read_u32_array(np, props[i], map, 4);
> +		if (ret) {
> +			pr_err("Cannot read \"%s\" property: %pe", props[i], ERR_PTR(ret));
> +			return ret;
> +		}
> +
> +		map[2] = FSL_ECAM_STREAM_ID_START;
> +		map[3] = ARRAY_SIZE(ierb_offset);
> +		ret = of_property_write_u32_array(np, props[i], map, 4);
> +		if (ret) {
> +			pr_err("Cannot write \"%s\" property: %pe", props[i], ERR_PTR(ret));
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +void ls1028a_setup_icids(void)
> +{
> +	setup_icid_offsets(icid_tbl_ls1028a, ARRAY_SIZE(icid_tbl_ls1028a), true);
> +
> +	ls1028a_set_ecam_icids();
> +
> +	of_register_fixup(of_fixup_icid_ls1028a, NULL);
> +	of_register_fixup(of_fixup_ecam_ls1028a, NULL);
> +}
> diff --git a/arch/arm/mach-layerscape/soc.c b/arch/arm/mach-layerscape/soc.c
> index 5f9d0d5171..70c1dedb46 100644
> --- a/arch/arm/mach-layerscape/soc.c
> +++ b/arch/arm/mach-layerscape/soc.c
> @@ -90,6 +90,7 @@ static int ls1028a_init(void)
>  		return -EINVAL;
>  
>  	layerscape_register_pbl_image_handler();
> +	ls1028a_setup_icids();
>  
>  	reserve_sdram_region("tfa", LS1028A_TFA_RESERVED_START, LS1028A_TFA_RESERVED_SIZE);
>  
> diff --git a/include/mach/layerscape/layerscape.h b/include/mach/layerscape/layerscape.h
> index 6f420dd4f4..2905360c29 100644
> --- a/include/mach/layerscape/layerscape.h
> +++ b/include/mach/layerscape/layerscape.h
> @@ -58,6 +58,7 @@ void ls1046a_bootsource_init(void);
>  void layerscape_register_pbl_image_handler(void);
>  void ls102xa_smmu_stream_id_init(void);
>  void ls1021a_restart_register_feature(void);
> +void ls1028a_setup_icids(void);
>  void ls1046a_setup_icids(void);
>  
>  #endif /* __MACH_LAYERSCAPE_H */

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



