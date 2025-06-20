Delivery-date: Fri, 20 Jun 2025 14:59:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSbKt-009Hm0-0i
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 14:59:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSbKs-0005u1-9e
	for lore@pengutronix.de; Fri, 20 Jun 2025 14:59:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EylBO1/Oz5R/xhHVC9G1GXPCA/Y3PVTi9aTJcF4W6Sk=; b=s03vK8j4fCy7OCtVoib7vnHYAp
	HrHRMWdgl+IjNkl369s/yo6CuWh0zd2S/gUai/wQXYg6Xc+tBH+yBsR+4Q1lSrb2qq6YtejmC1lOl
	a5jS4VEHwhATp84I1dvX7vQlydx5+l2a3xGEhTXm9jQNjQZ7C6owHXclxaylabtjIJGSiNfB2n9tR
	VL6+JZMbMHK3yaDCVYFdGVd5lngKOE8zXkyfi8TkcEfJg/TMULZbyYunx+iARk/Fv6vz7qpOdb0qq
	oSM/jWG/TKttaS1AGa1VpseJxXeBp6gSh/8HENej4E7KhQDf7xuhTORefVCBLO87mM7cYPL1dzDDs
	F/mTAidA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbKQ-0000000FdR8-0J91;
	Fri, 20 Jun 2025 12:58:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbBx-0000000FbX3-17kP
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 12:50:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uSbBu-0005pT-10; Fri, 20 Jun 2025 14:49:58 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uSbBt-004SoK-2k;
	Fri, 20 Jun 2025 14:49:57 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uSbBt-007NmH-2M;
	Fri, 20 Jun 2025 14:49:57 +0200
Date: Fri, 20 Jun 2025 14:49:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aFVY9WegA7J0Tb7L@pengutronix.de>
References: <20250619152556.3749995-1-m.felsch@pengutronix.de>
 <20250619152556.3749995-3-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250619152556.3749995-3-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_055001_314340_9443860C 
X-CRM114-Status: GOOD (  30.61  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/5] ARM: mach-imx: tzasc: add region configure helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 19, 2025 at 05:25:54PM +0200, Marco Felsch wrote:
> At the moment the TZC380 driver is very limited and focused on minimal
> platform setup unlike the TZC400 driver.
> 
> This commit adds helper functions to setup any number of TZASC regions
> of any size which is required by later commits to setup an early
> non-secure TZASC region1.
> 
> The code is based on the TZC400 barebox driver and the TZC380 OP-TEE
> driver.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/mach-imx/tzasc.c | 235 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 235 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
> index 4cb4d7c5cffc..4f6da6016601 100644
> --- a/arch/arm/mach-imx/tzasc.c
> +++ b/arch/arm/mach-imx/tzasc.c
> @@ -1,11 +1,76 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  
> +#define pr_fmt(fmt) "tzc380: " fmt
> +
> +#include <common.h>
>  #include <mach/imx/generic.h>
>  #include <mach/imx/tzasc.h>
> +#include <linux/bitfield.h>
>  #include <linux/bitops.h>
> +#include <linux/log2.h>
> +#include <linux/sizes.h>
>  #include <mach/imx/imx8m-regs.h>
>  #include <io.h>
>  
> +/*******************************************************************************
> + *                         TZC380 defines
> + ******************************************************************************/
> +
> +#define TZC380_BUILD_CONFIG		0x000
> +#define   TZC380_BUILD_CONFIG_AW	GENMASK(13, 8)
> +#define   TZC380_BUILD_CONFIG_NR	GENMASK(4, 0)
> +
> +/*
> + * All TZC region configuration registers are placed one after another. It
> + * depicts size of block of registers for programming each region.
> + */
> +#define TZC380_REGION_REG_SIZE		0x10
> +
> +#define TZC380_REGION_SETUP_LOW_0	0x100
> +#define TZC380_REGION_SETUP_HIGH_0	0x104
> +#define TZC380_REGION_ATTR_0		0x108
> +#define   TZC380_REGION_SP		GENMASK(31, 28)
> +#define   TZC380_SUBREGION_DIS_MASK	GENMASK(15, 8)
> +#define   TZC380_REGION_SIZE		GENMASK(6, 1)
> +#define   TZC380_REGION_EN		BIT(0)
> +
> +/* ID Registers */
> +#define TZC380_PID0_OFF			0xfe0
> +#define TZC380_PID1_OFF			0xfe4
> +#define   TZC380_PERIPHERAL_ID		0x380
> +#define TZC380_PID2_OFF			0xfe8
> +#define TZC380_PID3_OFF			0xfec
> +#define TZC380_PID4_OFF			0xfd0
> +#define TZC380_CID0_OFF			0xff0
> +#define TZC380_CID1_OFF			0xff4
> +#define TZC380_CID2_OFF			0xff8
> +
> +#define TZC380_REGION_OFFSET(region_no)		\
> +		(TZC380_REGION_REG_SIZE * (region_no))
> +#define TZC380_REGION_SETUP_LOW(region_no)	\
> +		(TZC380_REGION_OFFSET(region_no) + TZC380_REGION_SETUP_LOW_0)
> +#define TZC380_REGION_SETUP_HIGH(region_no)	\
> +		(TZC380_REGION_OFFSET(region_no) + TZC380_REGION_SETUP_HIGH_0)
> +#define TZC380_REGION_ATTR(region_no)		\
> +		(TZC380_REGION_OFFSET(region_no) + TZC380_REGION_ATTR_0)
> +
> +#define TZC380_REGION_SP_NS_W		FIELD_PREP(TZC380_REGION_SP, BIT(0))
> +#define TZC380_REGION_SP_NS_R		FIELD_PREP(TZC380_REGION_SP, BIT(1))
> +#define TZC380_REGION_SP_S_W		FIELD_PREP(TZC380_REGION_SP, BIT(2))
> +#define TZC380_REGION_SP_S_R		FIELD_PREP(TZC380_REGION_SP, BIT(3))
> +
> +#define TZC380_REGION_SP_ALL		\
> +		(TZC380_REGION_SP_NS_W | TZC380_REGION_SP_NS_R | \
> +		 TZC380_REGION_SP_S_W | TZC380_REGION_SP_S_R)
> +#define TZC380_REGION_SP_S_RW		\
> +		(TZC380_REGION_SP_S_W | TZC380_REGION_SP_S_R)
> +#define TZC380_REGION_SP_NS_RW		\
> +		(TZC380_REGION_SP_NS_W | TZC380_REGION_SP_NS_R)
> +
> +/*******************************************************************************
> + *                         SoC specific defines
> + ******************************************************************************/
> +
>  #define GPR_TZASC_EN					BIT(0)
>  #define GPR_TZASC_ID_SWAP_BYPASS		BIT(1)
>  #define GPR_TZASC_EN_LOCK				BIT(16)
> @@ -14,6 +79,176 @@
>  #define MX8M_TZASC_REGION_ATTRIBUTES_0		(MX8M_TZASC_BASE_ADDR + 0x108)
>  #define MX8M_TZASC_REGION_ATTRIBUTES_0_SP	GENMASK(31, 28)
>  
> +/*
> + * Implementation defined values used to validate inputs later.
> + * Filters : max of 4 ; 0 to 3
> + * Regions : max of 9 ; 0 to 8
> + * Address width : Values between 32 to 64
> + */
> +struct tzc380_instance {
> +	void __iomem *base;
> +	uint8_t addr_width;
> +	uint8_t num_regions;
> +};
> +/* Some platforms like i.MX6 does have two tzc380 controllers */
> +static struct tzc380_instance tzc380_inst[2];
> +
> +static inline unsigned int tzc_read_peripheral_id(void __iomem *base)
> +{
> +	unsigned int id;
> +
> +	id = in_le32(base + TZC380_PID0_OFF);
> +	/* Masks DESC part in PID1 */
> +	id |= ((in_le32(base + TZC380_PID1_OFF) & 0xFU) << 8U);
> +
> +	return id;
> +}
> +
> +static struct tzc380_instance *tzc380_init(void __iomem *base)
> +{
> +	struct tzc380_instance *tzc380 = &tzc380_inst[0];
> +	unsigned int tzc380_id;
> +	unsigned int tzc380_build;
> +
> +	if (tzc380->base)
> +		tzc380 = &tzc380_inst[1];
> +
> +	if (tzc380->base)
> +		panic("TZC-380: No free memory\n");
> +
> +	tzc380->base = base;
> +
> +	tzc380_id = tzc_read_peripheral_id(base);
> +	if (tzc380_id != TZC380_PERIPHERAL_ID)
> +		panic("TZC-380 : Wrong device ID (0x%x).\n", tzc380_id);
> +
> +	/* Save values we will use later. */
> +	tzc380_build = in_le32(base + TZC380_BUILD_CONFIG);
> +	tzc380->addr_width  = FIELD_GET(TZC380_BUILD_CONFIG_AW, tzc380_build) + 1;
> +	tzc380->num_regions = FIELD_GET(TZC380_BUILD_CONFIG_NR, tzc380_build) + 1;
> +
> +	return tzc380;
> +}
> +
> +static void
> +tzc380_configure_region(struct tzc380_instance *tzc380, unsigned int region,
> +			uint64_t region_base, unsigned int region_attr)
> +{
> +	void __iomem *base = tzc380->base;
> +
> +	/* Do range checks on regions */
> +	ASSERT((region < tzc380->num_regions));
> +
> +	pr_debug("TrustZone : Configuring region %u\n", region);

pr_fmt is already set, so this expands to "tzc380: TrustZone :" which
seems redundant. We should remove the "TrustZone :" No need to resend
just for that, I can fix it while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


