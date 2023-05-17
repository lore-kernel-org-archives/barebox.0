Delivery-date: Wed, 17 May 2023 15:41:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzHOt-004LUL-UY
	for lore@lore.pengutronix.de; Wed, 17 May 2023 15:41:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzHOr-0000FB-B0
	for lore@pengutronix.de; Wed, 17 May 2023 15:41:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h2DxaOWZoCo5YkgbZSpEhnqD9upyUdxFpxtDHZeZId0=; b=sYYSjN11uuHHwwe0Yze3SwUjME
	kOr6/TYu/N3/QDkFboavyBEzaRybs5d6pJ2EPn/5oycMk9DLjdrf3FajbWqb2z92kx4JTnn9pt5i7
	p/AnVgI/dn7wtH+Lnr3zW3JhPhi3pXRKRMENy2MQ89QqQgyNAvgxs3M1z5RpwF6sIf0uffnMmBM64
	9jHPGxOapfu0jmty0/ePRIlJrB1eimcgbWTyvK3l9O7ycQ2wdyQ85QUgbhNMkUIzIy9lXZwFZGoGf
	pLxeBg5e1wphgPkLamUsfuVdWGVDMtXZ0v4VhPhLvDF+OrQtbAMHxzBtjkxt2+LArVvd2KjuKWysr
	7If3Igeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzHNv-00A12J-0u;
	Wed, 17 May 2023 13:40:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzHNo-00A11Z-2T
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 13:40:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzHNk-0008IA-Vw; Wed, 17 May 2023 15:39:57 +0200
Message-ID: <688e9b8d-0ecb-cff2-f56c-7c36a8ec8516@pengutronix.de>
Date: Wed, 17 May 2023 15:39:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-28-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-28-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_064000_808429_0D4BC0C8 
X-CRM114-Status: GOOD (  22.20  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 27/34] ARM: mmu32: Fix pmd_flags_to_pte() for ARMv4/5/6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> pmd_flags_to_pte() assumed ARMv7 page table format. This has the effect
> that random bit values end up in the access permission bits. This works

                                                              ^ for older CPUs.

> because the domain is configured as manager in the DACR and thus the

                                                          ^ for non-ARMv7

> access permissions are ignored by the MMU.
> Nevertheless fix this and take the cpu architecture into account when
> translating the bits. Don't bother to translate the access permission
> bits though, just hardcode them as PTE_SMALL_AP_UNO_SRW.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Apart from that:

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/mmu_32.c | 27 ++++++++++++++++-----------
>  1 file changed, 16 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 7cd732580e..4abaab7d87 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -167,17 +167,22 @@ static u32 pmd_flags_to_pte(u32 pmd)
>  		pte |= PTE_BUFFERABLE;
>  	if (pmd & PMD_SECT_CACHEABLE)
>  		pte |= PTE_CACHEABLE;
> -	if (pmd & PMD_SECT_nG)
> -		pte |= PTE_EXT_NG;
> -	if (pmd & PMD_SECT_XN)
> -		pte |= PTE_EXT_XN;
> -
> -	/* TEX[2:0] */
> -	pte |= PTE_EXT_TEX((pmd >> 12) & 7);
> -	/* AP[1:0] */
> -	pte |= ((pmd >> 10) & 0x3) << 4;
> -	/* AP[2] */
> -	pte |= ((pmd >> 15) & 0x1) << 9;
> +
> +	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
> +		if (pmd & PMD_SECT_nG)
> +			pte |= PTE_EXT_NG;
> +		if (pmd & PMD_SECT_XN)
> +			pte |= PTE_EXT_XN;
> +
> +		/* TEX[2:0] */
> +		pte |= PTE_EXT_TEX((pmd >> 12) & 7);
> +		/* AP[1:0] */
> +		pte |= ((pmd >> 10) & 0x3) << 4;
> +		/* AP[2] */
> +		pte |= ((pmd >> 15) & 0x1) << 9;
> +	} else {
> +		pte |= PTE_SMALL_AP_UNO_SRW;
> +	}
>  
>  	return pte;
>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



