Delivery-date: Tue, 24 Jun 2025 13:19:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1gm-00AaFt-2r
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 13:19:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uU1gm-0001vW-Bx
	for lore@pengutronix.de; Tue, 24 Jun 2025 13:19:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=47hT2dLLFbZ6qi1dYKofqsE7VVeNI0qwoVOzcv/2FiU=; b=L5j4SW1fHVbV1QmlYOPkSPPRHT
	SunW90i6nWi3th8XSImz2UJFrgalPMWd/kvqBV1PcCh2l30I/rVwWS719pTHkJ36+IWZuexuwHXZ9
	qTPjEHIh6U6yFtjjcmIwiUM2PhxAKNWRBOZXvYP94xVZvliR5T+EgvidW25Q/B66gN7TG8RuI0/cd
	6lwR+bFtuArW8DniDjiX0oOB7o8HnXMZrdbxpstEqPqzra17xt6ZPQ1VQf69JcTTFTJ4JAXk9HQXr
	AlzutqChaX7oq94GPnUDhoj2+55ocS3gEkUmzFlS7V5bKZ11ZzVPtseK96E0HQNcz6TuaH17u8Hg/
	GjwGXqiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU1gL-00000005Ppq-1Oht;
	Tue, 24 Jun 2025 11:19:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU135-00000005KWz-2HU5
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 10:38:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uU134-0003DV-C7; Tue, 24 Jun 2025 12:38:42 +0200
Message-ID: <7987c09e-d236-455e-b17d-efaa5e1ea791@pengutronix.de>
Date: Tue, 24 Jun 2025 12:38:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20250619152556.3749995-1-m.felsch@pengutronix.de>
 <20250619152556.3749995-4-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250619152556.3749995-4-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_033843_585413_C032C969 
X-CRM114-Status: GOOD (  12.08  )
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
Subject: Re: [PATCH 4/5] ARM: mach-imx: tzasc: add
 imx6q_tzc380_early_ns_region1()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 6/19/25 17:25, Marco Felsch wrote:
> +void imx6q_tzc380_early_ns_region1(void)
> +{
> +	resource_size_t ram_sz = imx6_get_mmdc_sdram_size();
> +
> +	imx_tzc380_init_and_setup(IOMEM(MX6_TZASC1_BASE), 1,
> +				  MX6_MMDC_PORT01_BASE_ADDR, ram_sz,
> +				  TZC380_REGION_SP_NS_RW);
> +	imx_tzc380_init_and_setup(IOMEM(MX6_TZASC2_BASE), 1,
> +				  MX6_MMDC_PORT01_BASE_ADDR, ram_sz,
> +				  TZC380_REGION_SP_NS_RW);

What's the point of having two TZASC's if you configure them the exact
same way..?

> +}
> +
>  void imx8m_tzc380_init(void)
>  {
>  	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
> diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
> index 51c86f168ee4..4d3f26fc82f1 100644
> --- a/include/mach/imx/tzasc.h
> +++ b/include/mach/imx/tzasc.h
> @@ -6,6 +6,7 @@
>  #include <linux/types.h>
>  #include <asm/system.h>
>  
> +void imx6q_tzc380_early_ns_region1(void);
>  void imx8m_tzc380_init(void);
>  bool imx8m_tzc380_is_enabled(void);
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



