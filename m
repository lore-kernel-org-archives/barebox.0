Delivery-date: Wed, 17 May 2023 16:44:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzIOf-004PEo-3Q
	for lore@lore.pengutronix.de; Wed, 17 May 2023 16:44:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzIOc-000125-AA
	for lore@pengutronix.de; Wed, 17 May 2023 16:44:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cF5ABljY/9C2Njb/vm+iJp0a00Q0+/tgbhDKVzvXmqI=; b=NKTCJJHMWj5f5ZSPe5olvuYtlK
	8kUo+b/RMePHcyrEOm7RF99t0hG09LtHbyOw5ruWl+v6kHS1f8tp64z7xME59bx4PevrFvn16/0Qw
	zMy1o7FSCMR19tPeyQ3eENR2B6Qs/iVSyPglotNKoBB8twXspRq7O89tVgKJD53vkssPMvvfPAXq2
	y98T3teFTttFWDEMcgTrhhb+gHqtFyBrZlGusU+9DHIMrU71QJPmgJ4h8P8yJfcWNJn5b0ZY8cIpJ
	/9vRYJMo/q8Qidr4+cy6GtSgyKlVZDZP3bu6vNZwGjFpTmP7jPHe34RFbKYiVpAOrMuHntJZAkgoq
	iChlLvLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzINX-00AAUd-33;
	Wed, 17 May 2023 14:43:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzINV-00AATm-0x
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 14:43:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzINT-0000oX-8q; Wed, 17 May 2023 16:43:43 +0200
Message-ID: <1caed1b5-108d-7686-4e3b-0fd3bab04a58@pengutronix.de>
Date: Wed, 17 May 2023 16:43:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-34-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-34-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_074345_335639_CA90B1E4 
X-CRM114-Status: GOOD (  21.85  )
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
Subject: Re: [PATCH v2 33/34] ARM: mmu32: Skip reserved ranges during
 initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> The early MMU code now uses pages to map the OP-TEE area non executable.
> This mapping is overwritten with sections in barebox proper. Refrain
> from doing so by using arch_remap_range() and bypassing reserved areas.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 705d27a045..47711bed35 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -522,9 +522,17 @@ void __mmu_init(bool mmu_on)
>  	vectors_init();

Took me a while to parse the below code, so I think a comment may be apt:

/*
 * Early mmu init will have mapped everything but the initial memory area
 * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
 * all memory banks, so let's map all pages, excluding reserved memory areas,
 * cacheable and executable.
 */

>  
>  	for_each_memory_bank(bank) {
> -		create_sections(bank->start, bank->start + bank->size - 1,
> -				PMD_SECT_DEF_CACHED);
> -		__mmu_cache_flush();
> +		struct resource *rsv;
> +		resource_size_t pos;
> +
> +		pos = bank->start;
> +
> +		for_each_reserved_region(bank, rsv) {
> +			arch_remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
> +			pos = rsv->end + 1;
> +		}
> +
> +		arch_remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);

I am a bit bothered by the asymmetry here: Reserved regions in the extra memory banks
will be initially uncached (because outside initmem), so this loop does the correct thing.

For reserved regions within the initial memory, only the OP-TEE region would be uncached,
everything else would just be requested, but is still mapped cacheable.

IMO, that's surprising behavior.

Cheers,
Ahmad

>  	}
>  }
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



