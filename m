Delivery-date: Mon, 23 Jun 2025 10:24:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTcTU-00ACgg-1X
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 10:24:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTcTT-0004nV-HX
	for lore@pengutronix.de; Mon, 23 Jun 2025 10:24:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a3vxqK6q+4ELAZi7DiibbGk6eDlLCaJT+KifGJhNfyg=; b=UKmv7sE495pcOE0r0HYz/E/t1Y
	OFT6uTSKB5L5PSJ7PY8wYofHBsPp4kruOqY4CcBsRomLrtF/07c3dJtWNPlHpinI1V+NDB0DOO9Rl
	KVB0Bp58gaagrI/JI6Wyv3EJJdJS+pFxIqUI3wrcNRu6MgXIifa/VzYw3T6mnExrZcvmNH2yA6ayy
	tP1rhQWtk2s5eeuTrGggIhTbOebepmVnIL5yuT9koPH+WlhCSK6A7tQeP5hS6cgUc1OThmrA5cUQS
	ed6gSQHwGWkxxT2tXk9fKxepE2Qi0+XvyczmZij2wUWFlA0ADcWNZ4o6K8lcbBynmWMk+la1oAMAN
	tVZbuv4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTcSn-000000020Fy-1hcy;
	Mon, 23 Jun 2025 08:23:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTcSj-000000020Dy-3vEV
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 08:23:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uTcSg-0003z3-2O; Mon, 23 Jun 2025 10:23:30 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uTcSf-004up5-2s;
	Mon, 23 Jun 2025 10:23:29 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uTcSf-00D8Co-2U;
	Mon, 23 Jun 2025 10:23:29 +0200
Date: Mon, 23 Jun 2025 10:23:29 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20250623082329.7qtmxoe4szlp7sjr@pengutronix.de>
References: <20250619152556.3749995-1-m.felsch@pengutronix.de>
 <20250619152556.3749995-3-m.felsch@pengutronix.de>
 <aFVY9WegA7J0Tb7L@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aFVY9WegA7J0Tb7L@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_012334_136220_532FAA12 
X-CRM114-Status: GOOD (  32.32  )
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
Subject: Re: [PATCH 3/5] ARM: mach-imx: tzasc: add region configure helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-06-20, Sascha Hauer wrote:
> On Thu, Jun 19, 2025 at 05:25:54PM +0200, Marco Felsch wrote:
> > At the moment the TZC380 driver is very limited and focused on minimal
> > platform setup unlike the TZC400 driver.
> > 
> > This commit adds helper functions to setup any number of TZASC regions
> > of any size which is required by later commits to setup an early
> > non-secure TZASC region1.
> > 
> > The code is based on the TZC400 barebox driver and the TZC380 OP-TEE
> > driver.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/tzasc.c | 235 ++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 235 insertions(+)
> > 
> > diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
> > index 4cb4d7c5cffc..4f6da6016601 100644
> > --- a/arch/arm/mach-imx/tzasc.c
> > +++ b/arch/arm/mach-imx/tzasc.c
> > @@ -1,11 +1,76 @@
> >  // SPDX-License-Identifier: GPL-2.0-only
> >  
> > +#define pr_fmt(fmt) "tzc380: " fmt
> > +
> > +#include <common.h>
> >  #include <mach/imx/generic.h>
> >  #include <mach/imx/tzasc.h>
> > +#include <linux/bitfield.h>
> >  #include <linux/bitops.h>
> > +#include <linux/log2.h>
> > +#include <linux/sizes.h>
> >  #include <mach/imx/imx8m-regs.h>
> >  #include <io.h>
> >  
> > +/*******************************************************************************
> > + *                         TZC380 defines
> > + ******************************************************************************/
> > +
> > +#define TZC380_BUILD_CONFIG		0x000
> > +#define   TZC380_BUILD_CONFIG_AW	GENMASK(13, 8)
> > +#define   TZC380_BUILD_CONFIG_NR	GENMASK(4, 0)
> > +
> > +/*
> > + * All TZC region configuration registers are placed one after another. It
> > + * depicts size of block of registers for programming each region.
> > + */
> > +#define TZC380_REGION_REG_SIZE		0x10
> > +
> > +#define TZC380_REGION_SETUP_LOW_0	0x100
> > +#define TZC380_REGION_SETUP_HIGH_0	0x104
> > +#define TZC380_REGION_ATTR_0		0x108
> > +#define   TZC380_REGION_SP		GENMASK(31, 28)
> > +#define   TZC380_SUBREGION_DIS_MASK	GENMASK(15, 8)
> > +#define   TZC380_REGION_SIZE		GENMASK(6, 1)
> > +#define   TZC380_REGION_EN		BIT(0)
> > +
> > +/* ID Registers */
> > +#define TZC380_PID0_OFF			0xfe0
> > +#define TZC380_PID1_OFF			0xfe4
> > +#define   TZC380_PERIPHERAL_ID		0x380
> > +#define TZC380_PID2_OFF			0xfe8
> > +#define TZC380_PID3_OFF			0xfec
> > +#define TZC380_PID4_OFF			0xfd0
> > +#define TZC380_CID0_OFF			0xff0
> > +#define TZC380_CID1_OFF			0xff4
> > +#define TZC380_CID2_OFF			0xff8
> > +
> > +#define TZC380_REGION_OFFSET(region_no)		\
> > +		(TZC380_REGION_REG_SIZE * (region_no))
> > +#define TZC380_REGION_SETUP_LOW(region_no)	\
> > +		(TZC380_REGION_OFFSET(region_no) + TZC380_REGION_SETUP_LOW_0)
> > +#define TZC380_REGION_SETUP_HIGH(region_no)	\
> > +		(TZC380_REGION_OFFSET(region_no) + TZC380_REGION_SETUP_HIGH_0)
> > +#define TZC380_REGION_ATTR(region_no)		\
> > +		(TZC380_REGION_OFFSET(region_no) + TZC380_REGION_ATTR_0)
> > +
> > +#define TZC380_REGION_SP_NS_W		FIELD_PREP(TZC380_REGION_SP, BIT(0))
> > +#define TZC380_REGION_SP_NS_R		FIELD_PREP(TZC380_REGION_SP, BIT(1))
> > +#define TZC380_REGION_SP_S_W		FIELD_PREP(TZC380_REGION_SP, BIT(2))
> > +#define TZC380_REGION_SP_S_R		FIELD_PREP(TZC380_REGION_SP, BIT(3))
> > +
> > +#define TZC380_REGION_SP_ALL		\
> > +		(TZC380_REGION_SP_NS_W | TZC380_REGION_SP_NS_R | \
> > +		 TZC380_REGION_SP_S_W | TZC380_REGION_SP_S_R)
> > +#define TZC380_REGION_SP_S_RW		\
> > +		(TZC380_REGION_SP_S_W | TZC380_REGION_SP_S_R)
> > +#define TZC380_REGION_SP_NS_RW		\
> > +		(TZC380_REGION_SP_NS_W | TZC380_REGION_SP_NS_R)
> > +
> > +/*******************************************************************************
> > + *                         SoC specific defines
> > + ******************************************************************************/
> > +
> >  #define GPR_TZASC_EN					BIT(0)
> >  #define GPR_TZASC_ID_SWAP_BYPASS		BIT(1)
> >  #define GPR_TZASC_EN_LOCK				BIT(16)
> > @@ -14,6 +79,176 @@
> >  #define MX8M_TZASC_REGION_ATTRIBUTES_0		(MX8M_TZASC_BASE_ADDR + 0x108)
> >  #define MX8M_TZASC_REGION_ATTRIBUTES_0_SP	GENMASK(31, 28)
> >  
> > +/*
> > + * Implementation defined values used to validate inputs later.
> > + * Filters : max of 4 ; 0 to 3
> > + * Regions : max of 9 ; 0 to 8
> > + * Address width : Values between 32 to 64
> > + */
> > +struct tzc380_instance {
> > +	void __iomem *base;
> > +	uint8_t addr_width;
> > +	uint8_t num_regions;
> > +};
> > +/* Some platforms like i.MX6 does have two tzc380 controllers */
> > +static struct tzc380_instance tzc380_inst[2];
> > +
> > +static inline unsigned int tzc_read_peripheral_id(void __iomem *base)
> > +{
> > +	unsigned int id;
> > +
> > +	id = in_le32(base + TZC380_PID0_OFF);
> > +	/* Masks DESC part in PID1 */
> > +	id |= ((in_le32(base + TZC380_PID1_OFF) & 0xFU) << 8U);
> > +
> > +	return id;
> > +}
> > +
> > +static struct tzc380_instance *tzc380_init(void __iomem *base)
> > +{
> > +	struct tzc380_instance *tzc380 = &tzc380_inst[0];
> > +	unsigned int tzc380_id;
> > +	unsigned int tzc380_build;
> > +
> > +	if (tzc380->base)
> > +		tzc380 = &tzc380_inst[1];
> > +
> > +	if (tzc380->base)
> > +		panic("TZC-380: No free memory\n");
> > +
> > +	tzc380->base = base;
> > +
> > +	tzc380_id = tzc_read_peripheral_id(base);
> > +	if (tzc380_id != TZC380_PERIPHERAL_ID)
> > +		panic("TZC-380 : Wrong device ID (0x%x).\n", tzc380_id);
> > +
> > +	/* Save values we will use later. */
> > +	tzc380_build = in_le32(base + TZC380_BUILD_CONFIG);
> > +	tzc380->addr_width  = FIELD_GET(TZC380_BUILD_CONFIG_AW, tzc380_build) + 1;
> > +	tzc380->num_regions = FIELD_GET(TZC380_BUILD_CONFIG_NR, tzc380_build) + 1;
> > +
> > +	return tzc380;
> > +}
> > +
> > +static void
> > +tzc380_configure_region(struct tzc380_instance *tzc380, unsigned int region,
> > +			uint64_t region_base, unsigned int region_attr)
> > +{
> > +	void __iomem *base = tzc380->base;
> > +
> > +	/* Do range checks on regions */
> > +	ASSERT((region < tzc380->num_regions));
> > +
> > +	pr_debug("TrustZone : Configuring region %u\n", region);
> 
> pr_fmt is already set, so this expands to "tzc380: TrustZone :" which
> seems redundant. We should remove the "TrustZone :" No need to resend
> just for that, I can fix it while applying.

You're right, thanks for the fixup :)

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


