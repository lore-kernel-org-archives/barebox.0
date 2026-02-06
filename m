Delivery-date: Fri, 06 Feb 2026 14:25:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voLq5-009Uq7-0D
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 14:25:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voLq3-0002Cy-QG
	for lore@pengutronix.de; Fri, 06 Feb 2026 14:25:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CmAwUPIEIT+Bqms2WMIFh4m0SakEVsobnyta/6fd5LE=; b=aYwOYgaKQMQ1xrpJ9RxHhDC2dr
	oe+S2Y1HFAyiCDDaBLs5TVIciQfIsNGKVlHk8lbx2ihBuTuenyP2+5+uqCUEdUAcv9bewwR1U4aVk
	NuZxj+iYB/MijZW9bx9xPp9TY6eO5N0oRHIV1CZT3SN8VeUkBaLwXtMn0QTQYhQ9w6CIZKEvU1MVU
	hlt4ziJvNCfwUPBuWY5ZB6KwYKjpNh1pJdr2lrO0ht0g9aiimSoNPqo4o1ZYzh7boAaWHlOvqV5pH
	avKpbigax3HqHrB6gsm1hyXQmRfp7ymOvfdDeVRk0LyVnt38uT0ROzu4h0uJlW78HOgnN/7XUd8KS
	XIdUV0zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voLpW-0000000BMIG-2LLB;
	Fri, 06 Feb 2026 13:25:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voLpV-0000000BMHl-12Ut
	for barebox@bombadil.infradead.org;
	Fri, 06 Feb 2026 13:25:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=CmAwUPIEIT+Bqms2WMIFh4m0SakEVsobnyta/6fd5LE=; b=ftXRkesa9nkJ6VgC12jsaWeudi
	n/BSZ0Bl/etAZugWEtKNMLR9yKtvQRL33jVftMJ/qMdQ0EqHv5v/UTv92DOdwC1xtdOq3zIQvoflc
	DhxQw9cXPGbquT9LkI6ydr38Bu+3c2uTp33B+qKMjfTs9fpO5PlCUmLHb5KUY9hWVEOBGMgc/u1PN
	6gycjeOdepD5ck+/Yh3G+sYhCmz9NCPJQPeNE9VBpX2l93Dp9PP/8lBHB23/Tlu/DUmUsNyQs2sDE
	9stKuT/E6tyJdDMUEwXgi3StN48MLcVsCQnPNqaJdgFfbRjh/nh2X5FAbbjvFdO5g68Gj1VNFUT4+
	ZNRuXeLw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voLpR-00000003qV5-0Hwo
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 13:24:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1voLpP-00027I-Qv; Fri, 06 Feb 2026 14:24:55 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voLpQ-004Pb9-10;
	Fri, 06 Feb 2026 14:24:55 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1voLpP-002MHA-1k;
	Fri, 06 Feb 2026 14:24:55 +0100
Date: Fri, 6 Feb 2026 14:24:55 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260206132455.vwy5ddcfb5exy4re@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-14-da075e6818e0@pengutronix.de>
 <388370f2-c08a-4394-988f-d4686db50884@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <388370f2-c08a-4394-988f-d4686db50884@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_132457_521339_06C3105C 
X-CRM114-Status: GOOD (  31.49  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 14/15] of: base: register optional OP-TEE overlay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-02-06, Ahmad Fatoum wrote:
> On 2/4/26 9:01 PM, Marco Felsch wrote:
> > The BL32 OP-TEE binary can provide an overlay which contains all
> > required configurations made by the secure-os, e.g. reserved-memory
> > nodes, the firmware-interface (smc) and so on.
> > 
> > This overlay can be used to uniform the OP-TEE configuration handling
> > for all OF platforms. While this patch is platform agnostic, the OP-TEE
> > overlay handling still depends on platform and machine specific
> > integrations.
> > 
> > The previous patches added the required platform support for all
> > i.MX8MM/N/P SoCs, but each i.MX8MM/N/P machine need add the machine
> > support by itself.
> > 
> > Allthough only i.MX8MM/N/P platform support was added, this commit
> > prepare all ARMv8 platforms for the new overlay mechanism.
> 
> Why is this ARMv8-specific? Seems to me it applies to all architectures
> now even? (provided they have OPTEE support)

You're right the optee_register_overlay() applies to all OF
architectures.

I wanted to point out that optee_overlay_registered() is added to all
current ARMv8 platforms albeit it makes only sense for i.MX8MM/N/P
platforms at the moment, because these platforms actually do support
passing the HANDOFF_DATA_TEE_DT_OVL data.

I can drop this paragraph if you want to not confuse the reader.

Regards,
  Marco

> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> > ---
> >  arch/arm/mach-imx/imx9.c          | 2 +-
> >  arch/arm/mach-rockchip/rockchip.c | 3 ++-
> >  drivers/of/base.c                 | 3 +++
> >  drivers/soc/imx/soc-imx8m.c       | 3 ++-
> >  4 files changed, 8 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/arm/mach-imx/imx9.c b/arch/arm/mach-imx/imx9.c
> > index 25ba7e444843ea5ae817dd8103074e5a50fb48f0..ada4048d4ca07b5a2f8a5ee5ceb3e3b3ecb24af8 100644
> > --- a/arch/arm/mach-imx/imx9.c
> > +++ b/arch/arm/mach-imx/imx9.c
> > @@ -174,7 +174,7 @@ int imx93_init(void)
> >  	imx93_set_arm_clock();
> >  	imx93_bootsource();
> >  
> > -	if (IS_ENABLED(CONFIG_PBL_OPTEE)) {
> > +	if (IS_ENABLED(CONFIG_PBL_OPTEE) && !optee_overlay_registered()) {
> >  		static struct of_optee_fixup_data optee_fixup_data = {
> >  			.shm_size = OPTEE_SHM_SIZE,
> >  			.method = "smc",
> > diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
> > index 0828f0fa72a9ad2495e012a42918c4b5431652e7..6ed7802cc695a61253c937b24f5b1c2a1eea7732 100644
> > --- a/arch/arm/mach-rockchip/rockchip.c
> > +++ b/arch/arm/mach-rockchip/rockchip.c
> > @@ -33,7 +33,8 @@ static int rockchip_init(void)
> >  {
> >  	const struct optee_header *hdr = rk_scratch_get_optee_hdr();
> >  
> > -	if (IS_ENABLED(CONFIG_PBL_OPTEE) && optee_verify_header(hdr) == 0) {
> > +	if (IS_ENABLED(CONFIG_PBL_OPTEE) && !optee_overlay_registered() &&
> > +	    optee_verify_header(hdr) == 0) {
> >  		static struct of_optee_fixup_data optee_fixup_data = {
> >  			.shm_size = OPTEE_SHM_SIZE,
> >  			.method = "smc",
> > diff --git a/drivers/of/base.c b/drivers/of/base.c
> > index 54fd458bd9a1e38e665768d911934960358b42a9..3110f377212b272ae09bb15b20803b718c734f32 100644
> > --- a/drivers/of/base.c
> > +++ b/drivers/of/base.c
> > @@ -23,6 +23,7 @@
> >  #include <linux/ctype.h>
> >  #include <linux/err.h>
> >  #include <pm_domain.h>
> > +#include <tee/optee.h>
> >  
> >  static struct device_node *root_node;
> >  
> > @@ -2133,6 +2134,8 @@ int barebox_register_fdt(const void *dtb)
> >  		return PTR_ERR(root);
> >  	}
> >  
> > +	optee_register_overlay();
> > +
> >  	return barebox_register_of(root);
> >  }
> >  
> > diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
> > index 3b83284fcbfd56d543cc300b8d42771202aa0bbb..695fc3b027ae81cc8c83cbf27aff261c0459aa8a 100644
> > --- a/drivers/soc/imx/soc-imx8m.c
> > +++ b/drivers/soc/imx/soc-imx8m.c
> > @@ -207,7 +207,8 @@ static int imx8_soc_imx8m_init(struct soc_device_attribute *soc_dev_attr)
> >  	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
> >  	pr_info("%s unique ID: %s\n", cputypestr, uid);
> >  
> > -	if (IS_ENABLED(CONFIG_PBL_OPTEE) && imx8m_tzc380_is_enabled()) {
> > +	if (IS_ENABLED(CONFIG_PBL_OPTEE) && imx8m_tzc380_is_enabled() &&
> > +	    !optee_overlay_registered()) {
> >  		static struct of_optee_fixup_data optee_fixup_data = {
> >  			.shm_size = OPTEE_SHM_SIZE,
> >  			.method = "smc",
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


