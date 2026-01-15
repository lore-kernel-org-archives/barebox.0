Delivery-date: Thu, 15 Jan 2026 14:09:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgN6j-001bGr-0p
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 14:09:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgN6i-0001a2-8J
	for lore@pengutronix.de; Thu, 15 Jan 2026 14:09:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2rf6OpR8ovqV5ckTZUEpbk5DDbXQNXXTbyn4xaNL6mM=; b=lmKOFUDCJyt0nS3pKnTpV25AJU
	ffAqZ/9uzZcmCPH4oIEq0Xu6A+v75g5n3Du0pQeGwlrz2ZUUMFgjw8WjGdHzlSC3riXKvMS/7v18/
	kKSpTBe0OalSVUCGKpMh4Wd33peT0ffjplc3A/9H1JTgE7KQLgCo1PDeKfTPUIrkcNWh4bWGh/5yw
	5I0AdyLfVcuh1BjBy6rTBoz4HcI9/5LLMOYLLbIMOpIzznLIKCDfiOX8d7JYT3r/8uT6bhxJ0q5aJ
	+/yWbG0JTpszMIvIbqrbJwX6o3mnoldQuy9OBUx4HRoVn3ZYAg3Kn7Tq6guqt4Ls6VTNDtaOdqSl7
	IEGV+5GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgN6I-0000000CO3U-489X;
	Thu, 15 Jan 2026 13:09:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgN6G-0000000CO2e-18Pz
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 13:09:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgN6E-0001O9-9T; Thu, 15 Jan 2026 14:09:18 +0100
Message-ID: <de4233ac-22dc-444c-a7e4-dddf01bbd549@pengutronix.de>
Date: Thu, 15 Jan 2026 14:09:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-12-8f0625ac5471@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-12-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_050920_311683_DBCEB10B 
X-CRM114-Status: GOOD (  17.96  )
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
Subject: Re: [PATCH 12/23] ARM: i.MX8M: esdctl: export imx8m_ddrc_sdram_size()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/10/25 9:34 PM, Marco Felsch wrote:
> imx8m_ddrc_sdram_size() returns the full memory size whereas
> imx8m_barebox_earlymem_size() limits the size to 4GiB.
> 
> This can be useful in cases like fixing up the FDT memory size for
> OP-TEE which uses the information to configure the TZASC accordingly.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  arch/arm/mach-imx/esdctl.c | 2 +-
>  include/mach/imx/esdctl.h  | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> index 0a1e042792bd90b40ffc8084efbdc5a25ba0dd02..964d438e3f3433332e351d9a70f91857ee33e0b4 100644
> --- a/arch/arm/mach-imx/esdctl.c
> +++ b/arch/arm/mach-imx/esdctl.c
> @@ -467,7 +467,7 @@ static void imx_ddrc_set_mstr_device_config(u32 *mstr, unsigned bits)
>  	*mstr |= FIELD_PREP(DDRC_MSTR_DEVICE_CONFIG, fls(bits / 8));
>  }
>  
> -static resource_size_t imx8m_ddrc_sdram_size(unsigned buswidth)
> +resource_size_t imx8m_ddrc_sdram_size(unsigned buswidth)
>  {
>  	void __iomem *ddrc = IOMEM(MX8M_DDRC_CTL_BASE_ADDR);
>  	const u32 addrmap[DDRC_ADDRMAP_LENGTH] = {
> diff --git a/include/mach/imx/esdctl.h b/include/mach/imx/esdctl.h
> index 97bd444b1a4ca2defdeb9f82180c0366296a32a0..47fb665a861bf2105b4d606ea1672caf27d8e285 100644
> --- a/include/mach/imx/esdctl.h
> +++ b/include/mach/imx/esdctl.h
> @@ -153,6 +153,7 @@ void __noreturn imx93_barebox_entry(void *boarddata);
>  void imx_esdctl_disable(void);
>  resource_size_t imx6_get_mmdc_sdram_size(void);
>  resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth);
> +resource_size_t imx8m_ddrc_sdram_size(unsigned buswidth);
>  resource_size_t imx9_ddrc_sdram_size(void);
>  #endif
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



