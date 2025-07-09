Delivery-date: Wed, 09 Jul 2025 15:07:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZUWY-00FiCF-1j
	for lore@lore.pengutronix.de;
	Wed, 09 Jul 2025 15:07:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZUWX-0002uq-Vm
	for lore@pengutronix.de; Wed, 09 Jul 2025 15:07:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Psj+PFu9QWky09bJ0SMD8tFto62zP3F0CzeyDX+/lDQ=; b=Gv2JGM/HWqGQ5irJ9PiZiZbBUo
	2BXXSS6z1z7lqtl6HMNgdoDwqssXY/sDUQ9e5ZvgFEDH0CCwyCH5zoysebYYqAj40MrwSqZwkEPpF
	HXdQzqWrZNbhg7KXiaSnRqXzIfNBginAOGB7gK9ZABr57cXzcZcJYXTwJkSJKSrbtKbl/g027DGOA
	EmqcKwL3ULczNMmXW2ogDiDyD3MTbovyZjIielFwMfHw7tzG07WuRAr/fyn97qRMEbSWDtWrhhnUs
	VZQYhyRDU6P/Xtms7BTZcbvNdHwCOEaGS1rVJ1ww0SVLwKXLUnIeCvfxu1+QaT0SB1b5hXCeuKyqu
	ka9rSoIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZUVw-00000008jdG-0jmq;
	Wed, 09 Jul 2025 13:07:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZSLg-00000008MsJ-304B
	for barebox@lists.infradead.org;
	Wed, 09 Jul 2025 10:48:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZSLe-0001Uq-UQ; Wed, 09 Jul 2025 12:48:22 +0200
Message-ID: <d186c2c0-3ede-4e4c-bf8d-65af3bb785db@pengutronix.de>
Date: Wed, 9 Jul 2025 12:48:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20250709-feature-ahab-lifecycle-public-v1-1-82e1ce163014@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250709-feature-ahab-lifecycle-public-v1-1-82e1ce163014@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_034824_755495_6BADD4D2 
X-CRM114-Status: GOOD (  15.90  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: ele: make ele_life_cycle public
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 7/9/25 11:03, Stefan Kerkmann wrote:
> This allows using the string representation in other parts of barebox
> e.g. board code.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-imx/ele.c | 2 +-
>  include/mach/imx/ele.h  | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
> index ec0fd652160059eab7276070842d657bde9709db..c0d1ab605d341187ea8ae855a8f0569e015bbc82 100644
> --- a/arch/arm/mach-imx/ele.c
> +++ b/arch/arm/mach-imx/ele.c
> @@ -665,7 +665,7 @@ unsigned int imx93_ahab_read_lifecycle(void)
>  	return readl(MX9_OCOTP_BASE_ADDR + 0x41c) & 0x3ff;
>  }
>  
> -static const char *ele_life_cycle(u32 lc)
> +const char *ele_life_cycle(u32 lc)
>  {
>  	switch (lc) {
>  	case ELE_LIFECYCLE_BLANK: return "BLANK";
> diff --git a/include/mach/imx/ele.h b/include/mach/imx/ele.h
> index e7226e6576267fa0f92de0d1d1d7795989831714..1c8cc02b201a62760628fd030dc4e8fe44c92aa2 100644
> --- a/include/mach/imx/ele.h
> +++ b/include/mach/imx/ele.h
> @@ -160,6 +160,7 @@ int ele_authenticate_container(unsigned long addr, u32 *response);
>  int ele_release_container(u32 *response);
>  int ele_forward_lifecycle(u32 lc, u32 *response);
>  int ele_print_events(void);
> +const char *ele_life_cycle(u32 lc);
>  
>  int imx93_ele_load_fw(void *bl33);
>  unsigned int imx93_ahab_read_lifecycle(void);
> 
> ---
> base-commit: f49c873d7ec78a2df7bd3c7a86f5372fb1666517
> change-id: 20250709-feature-ahab-lifecycle-public-1c637d6f87df
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



