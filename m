Delivery-date: Fri, 27 Jun 2025 19:17:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVChW-00Bh9m-2A
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 19:17:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVChW-0005jr-1C
	for lore@pengutronix.de; Fri, 27 Jun 2025 19:17:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n+g5F3R//h8Fksca97gWlBiSBpM2n6uDwDiy99Av5es=; b=341GUAZombGrfC58+uWndqjoXi
	bArR2HY0i6InnZq+6hUHQ2ofaihMq503yNLz3McjIGp20LOqSrkMaFaNxfVYRl7rbuB3jnafAWhse
	EPnI5kWEYK8D95ynuIArV2hA27fGu6pkBwV6tiG8V4KF2ahSuJRqO69AIAq8aljE1Pic5Fhx1ijgd
	NXAVglH6BEiwUcmkynq5zBeNErZHXxukeEIRTrqArL1fqbNs6KRhF9vrgDwwg3AZe+upTjELdDTCn
	RSTG6S9SVvaEuV6G5Pt0wyokOc4s3EuIEYVP9v6OfHsMBFosOz+PJbZn8GLyiADVDFD/bR8EF89lh
	RgETWMBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVCgy-0000000FNeL-108E;
	Fri, 27 Jun 2025 17:16:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVBS8-0000000FC3b-33cV
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 15:57:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVBS7-0004Zn-Ao; Fri, 27 Jun 2025 17:57:23 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVBS7-005dm4-0T;
	Fri, 27 Jun 2025 17:57:23 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uVBS7-003dBp-08;
	Fri, 27 Jun 2025 17:57:23 +0200
Date: Fri, 27 Jun 2025 17:57:23 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20250627155723.sqzulkbykzlf6ga6@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
 <20250627-arm-optee-early-helper-v1-8-4b098e8ac7cd@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250627-arm-optee-early-helper-v1-8-4b098e8ac7cd@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_085724_765932_B5A63E47 
X-CRM114-Status: GOOD (  26.03  )
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
Subject: Re: [PATCH 08/14] ARM: mach-imx: tzasc: add
 imx6[q|ul]_tzc380_is_bypassed()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-06-27, Sascha Hauer wrote:
> From: Marco Felsch <m.felsch@pengutronix.de>
> 
> The TZASC_BYP bits in the IOMUX GPR offer a great way to shoot yourself
> in the foot. These bits are cleared by default and with these bits
> cleared the TZASC will never check DDR transactions. The TZASC can be
> configured normally with the bits cleared, it just doesn't work and all
> secure regions can be accessed by the normal worls. These
> bits can only be set in the DCD table, trying to set them in code will
> make the system hang. As the DCD tables are board specific it's easy to

I think this is not entirely true. At least the i.MX6 TRM says, that any
DDR access must be done before the TZASC is turned on.

Since most i.MX6/7 boards do use the DCD RAM setup and tell the BootROM
to load the barebox(-pbl) directly into RAM, we can enable it only from
DCD. But it should still be possible to enable it within the code, like
we do for i.MX8M. This only requires that the barebox-pbl is loaded into
internal OCRAM which is the rare case for i.MX6/7 boards.

Keep in mind, I did not test the later case.

> forget setting them. This patch adds a function that checks if the bits
> are set as desired which will be called by the optee-early helper later.
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/tzasc.c | 26 ++++++++++++++++++++++++++
>  include/mach/imx/tzasc.h  |  2 ++
>  2 files changed, 28 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
> index 169c4b9801e5fdd01edd3c5661418a945cf21c55..ed20ad8803a2e91b67b5d8c3ab1a4265c4228ec7 100644
> --- a/arch/arm/mach-imx/tzasc.c
> +++ b/arch/arm/mach-imx/tzasc.c
> @@ -76,6 +76,9 @@
>  #define MX6_TZASC1_BASE			0x21d0000
>  #define MX6_TZASC2_BASE			0x21d4000
>  
> +#define MX6_GPR_TZASC1_EN		BIT(0)
> +#define MX6_GPR_TZASC2_EN		BIT(1)
> +
>  #define GPR_TZASC_EN					BIT(0)
>  #define GPR_TZASC_ID_SWAP_BYPASS		BIT(1)
>  #define GPR_TZASC_EN_LOCK				BIT(16)
> @@ -303,6 +306,29 @@ void imx6ul_tzc380_early_ns_region1(void)
>  				  TZC380_REGION_SP_NS_RW);
>  }
>  
> +bool imx6q_tzc380_is_bypassed(void)
> +{
> +	u32 __iomem *gpr = IOMEM(MX6_IOMUXC_BASE_ADDR);
> +
> +	/*
> +	 * MX6_GPR_TZASC1_EN and MX6_GPR_TZASC2_EN are sticky bits which
> +	 * preserve their values once set until the next power-up cycle.
> +	 */
> +	return (readl(&gpr[9]) & (MX6_GPR_TZASC1_EN | MX6_GPR_TZASC2_EN)) !=
> +	       (MX6_GPR_TZASC1_EN | MX6_GPR_TZASC2_EN);
> +}
> +
> +bool imx6ul_tzc380_is_bypassed(void)
> +{
> +	u32 __iomem *gpr = IOMEM(MX6_IOMUXC_BASE_ADDR + 0x4000);
> +
> +	/*
> +	 * MX6_GPR_TZASC1_EN is a sticky bit which preserves its value
> +	 * once set until the next power-up cycle.
> +	 */
> +	return !(readl(&gpr[9]) & MX6_GPR_TZASC1_EN);
> +}
> +
>  void imx8m_tzc380_init(void)
>  {
>  	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
> diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
> index eb479ad55c9c101a5fb47fc4a7178b3669b9e44f..0fbcdc2150e63864366a8dddeed2d1b97685903d 100644
> --- a/include/mach/imx/tzasc.h
> +++ b/include/mach/imx/tzasc.h
> @@ -8,6 +8,8 @@
>  
>  void imx6q_tzc380_early_ns_region1(void);
>  void imx6ul_tzc380_early_ns_region1(void);
> +bool imx6q_tzc380_is_bypassed(void);
> +bool imx6ul_tzc380_is_bypassed(void);
>  void imx8m_tzc380_init(void);
>  bool imx8m_tzc380_is_enabled(void);
>  
> 
> -- 
> 2.39.5
> 
> 


