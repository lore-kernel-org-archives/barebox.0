Delivery-date: Fri, 27 Jun 2025 15:23:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV93P-00Bd3u-0Q
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 15:23:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uV93O-0005Gc-Ho
	for lore@pengutronix.de; Fri, 27 Jun 2025 15:23:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lnWLnIvZFTTL8JBBbH4tdMq0PVMbhB8/jPm8A+HKZZM=; b=Zz57cZCespfG00KuPVeJOOhtVG
	lPhQ1je3xozOgaWzoUkEMzrqPpo5QjM9yMx5AvU2Z4QCisd4cGQhcxO7YgERDONx2yCjsSdl+EWSJ
	zVTJUmGaLWUzkTjqB1Zc3f5yGvDKo2CmH1YL408lk1Fe2VkJbk2ypbN/ozocFtn6QlbNfUADpp/Hn
	PXv8sypFYgdqizEb9k5SFipGDqr5FF4q8BfpA8EH68t5Jlm8Wjczh9jyPg0dou2adaZ2vM52vieD8
	BxDN77Y39N8O9X1ZxMMUcx8JbsMv92RLDI7HcSj2mc7HhCXsEMivi6/pj2H08Pd5JU2x00vRAg7rI
	s6lPqpYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV92v-0000000ElKb-3MiI;
	Fri, 27 Jun 2025 13:23:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV8OV-0000000EfTC-41Vm
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 12:41:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uV8OS-0003VJ-Bl; Fri, 27 Jun 2025 14:41:24 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uV8OS-005cFI-0Z;
	Fri, 27 Jun 2025 14:41:24 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uV8OS-003Ztd-0G;
	Fri, 27 Jun 2025 14:41:24 +0200
Date: Fri, 27 Jun 2025 14:41:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aF6RdKeYUeCS7mW-@pengutronix.de>
References: <20250626144527.416697-1-m.felsch@pengutronix.de>
 <20250626144527.416697-6-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250626144527.416697-6-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_054127_994330_9B902EAF 
X-CRM114-Status: GOOD (  22.04  )
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
Subject: Re: [PATCH v2 5/6] ARM: mach-imx: tzasc: add imx6q_tzc380_is_enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jun 26, 2025 at 04:45:26PM +0200, Marco Felsch wrote:
> In preparation of adding an i.MX6QD optee-early helper add a helper to
> check if the early code e.g. PBL/BootROM enabled the TZC380 controllers
> on the i.MX6QDL.
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> Changelog:
> v2:
> - Add Ahmad r-b
> 
>  arch/arm/mach-imx/tzasc.c | 15 +++++++++++++++
>  include/mach/imx/tzasc.h  |  1 +
>  2 files changed, 16 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
> index 54f7d1d49715..b8270a4afdc8 100644
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
> @@ -294,6 +297,18 @@ void imx6q_tzc380_early_ns_region1(void)
>  				  TZC380_REGION_SP_NS_RW);
>  }
>  
> +bool imx6q_tzc380_is_enabled(void)

I think the function name is misleading. The function does not return
the tzc380 enabled status, but whether SDRAM accesses are checked or
bypassed.

When bypassed you can still enable the tzc380, but SDRAM accesses are
not checked anymore.

imx6q_tzc380_is_bypassed() would be a better name.

I am currently working on a unified series which includes this series
with i.MX6UL support added and my fix-chainload series, so no need to
resend now.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


