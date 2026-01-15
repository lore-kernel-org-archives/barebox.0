Delivery-date: Thu, 15 Jan 2026 15:51:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgOha-001czs-0E
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 15:51:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgOhY-0004P6-Vg
	for lore@pengutronix.de; Thu, 15 Jan 2026 15:51:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qmCZViOuhDYzbJ6wjhJpNNdPxwfA7yxiS6I6N67sXlc=; b=VYtZ9NJXB+i4IoAFtryc8HLXO5
	li506C+hZhYQoT6SMzfHTnHhHidIGC1duiSxB+/lrmRb5DRzFSSRhSy3/xnqH+2JjkV6/LohItsJq
	VBPdVWRkseLVHetpNFdUNNl9Tu8WfPPFNpe+84BAJOJ9M1EYl4eV9hR/FC0BPgt6zBvxC7wSebnh2
	qNsfejI8boH7VSii2Cmg6bI4EHWoPEnBEDE1CdMEuz2or/PnMklrsOMvzu9OsgqhIAhGyE6JxwQT6
	2RAuyIiUbOeVHNc3VUTbjKxRFSKu/nK3A57OltVLZyt7LTYZiQXay7ehvVYDgt1FazCqaEWjLc923
	jeskxUyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOhA-0000000CXEe-27Ul;
	Thu, 15 Jan 2026 14:51:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgOh8-0000000CXDx-2lIf
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 14:51:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgOh7-0004IJ-2l; Thu, 15 Jan 2026 15:51:29 +0100
Message-ID: <3f5d3d5e-e2d2-4e9b-aa05-ec871392a5fc@pengutronix.de>
Date: Thu, 15 Jan 2026 15:51:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-21-8f0625ac5471@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-21-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_065130_701003_F7963843 
X-CRM114-Status: GOOD (  21.95  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 21/23] of: base: register optional OP-TEE overlay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 11/10/25 9:35 PM, Marco Felsch wrote:
> The BL32 OP-TEE binary can provide an overlay which contains all
> required configurations made by the secure-os, e.g. reserved-memory
> nodes, the firmware-interface (smc) and so on.
> 
> This overlay can be used to uniform the OP-TEE configuration handling
> for all OF platforms. While this patch is platform agnostic, the OP-TEE
> overlay supply handling still depends on platform specific integrations.
> Therefore only i.MX8MM/N/P platforms support this new feature yet.
> 
> However, prepare all ARMv8 platforms for the new loading mechanism.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-imx/imx9.c          | 2 +-
>  arch/arm/mach-rockchip/rockchip.c | 3 ++-
>  drivers/of/base.c                 | 3 +++
>  drivers/soc/imx/soc-imx8m.c       | 3 ++-
>  4 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx9.c b/arch/arm/mach-imx/imx9.c
> index dd4fbf099e601dda3c01a4e2d64a9552d2f616e5..7eccba4ed630c73b6b4fe266f742fe3d4ed63dd5 100644
> --- a/arch/arm/mach-imx/imx9.c
> +++ b/arch/arm/mach-imx/imx9.c
> @@ -173,7 +173,7 @@ int imx93_init(void)
>  	imx93_set_arm_clock();
>  	imx93_bootsource();
>  
> -	if (IS_ENABLED(CONFIG_PBL_OPTEE)) {
> +	if (IS_ENABLED(CONFIG_PBL_OPTEE) && !optee_overlay_applied()) {
>  		static struct of_optee_fixup_data optee_fixup_data = {
>  			.shm_size = OPTEE_SHM_SIZE,
>  			.method = "smc",
> diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
> index 0828f0fa72a9ad2495e012a42918c4b5431652e7..30cec0f0fe7cb651a1b157d5bb257fc67302422a 100644
> --- a/arch/arm/mach-rockchip/rockchip.c
> +++ b/arch/arm/mach-rockchip/rockchip.c
> @@ -33,7 +33,8 @@ static int rockchip_init(void)
>  {
>  	const struct optee_header *hdr = rk_scratch_get_optee_hdr();
>  
> -	if (IS_ENABLED(CONFIG_PBL_OPTEE) && optee_verify_header(hdr) == 0) {
> +	if (IS_ENABLED(CONFIG_PBL_OPTEE) && !optee_overlay_applied() &&
> +	    optee_verify_header(hdr) == 0) {
>  		static struct of_optee_fixup_data optee_fixup_data = {
>  			.shm_size = OPTEE_SHM_SIZE,
>  			.method = "smc",
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index c20fffb899a9c87910f424f5e4fd116f11cea546..203ebca1bf30cda5ce817a5d6b6eb437fc3befc6 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -22,6 +22,7 @@
>  #include <linux/clk.h>
>  #include <linux/ctype.h>
>  #include <linux/err.h>
> +#include <tee/optee.h>
>  
>  static struct device_node *root_node;
>  
> @@ -2129,6 +2130,8 @@ int barebox_register_fdt(const void *dtb)
>  		return PTR_ERR(root);
>  	}
>  
> +	optee_register_overlay();
> +
>  	return barebox_register_of(root);
>  }
>  
> diff --git a/drivers/soc/imx/soc-imx8m.c b/drivers/soc/imx/soc-imx8m.c
> index 3b83284fcbfd56d543cc300b8d42771202aa0bbb..ecc5f30df35dfd89a485a3f6883ab33fbafb897e 100644
> --- a/drivers/soc/imx/soc-imx8m.c
> +++ b/drivers/soc/imx/soc-imx8m.c
> @@ -207,7 +207,8 @@ static int imx8_soc_imx8m_init(struct soc_device_attribute *soc_dev_attr)
>  	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
>  	pr_info("%s unique ID: %s\n", cputypestr, uid);
>  
> -	if (IS_ENABLED(CONFIG_PBL_OPTEE) && imx8m_tzc380_is_enabled()) {
> +	if (IS_ENABLED(CONFIG_PBL_OPTEE) && imx8m_tzc380_is_enabled() &&
> +	    !optee_overlay_applied()) {
>  		static struct of_optee_fixup_data optee_fixup_data = {
>  			.shm_size = OPTEE_SHM_SIZE,
>  			.method = "smc",
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



