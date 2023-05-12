Delivery-date: Fri, 12 May 2023 20:11:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxXEb-00FNNW-Ha
	for lore@lore.pengutronix.de; Fri, 12 May 2023 20:11:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxXEZ-0000l4-Fv
	for lore@pengutronix.de; Fri, 12 May 2023 20:11:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SU2yGq8OsVK+VeESrfIiV0z9wVyX09kAJ/zEBg2ancY=; b=XoqPwjizF3fs3fow7KWd5jUU4G
	Zy/JJdclNCBuCb0DogjWKuOXJqwfXdJaJLD/r0dLITdYEsLqgFIxtKdg8R5OVTUOfhbLhhyxMqgfD
	HFuauTfMNNLTp48EhRKupavprcXyMHbcpXVESvklG5dKmwuifooVQLiuBOTFQSn25lbH2rXl1jYNW
	YI6IXzvfVyK+dbFYbVYtjG2W12zuZhpCDFMu6tgn2QxDHmVdQxAf9ZG8Ud5ER2pCHZr93SowNhoP+
	XijS8i+LmhkUVLvgukU5hoDzI3Du8ukZqORvXBxQnKib3m6WeVNTXqtKeQTXzH6jCgoIh8Pp3Xp0+
	xC6DTc1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxXDU-00Ce53-3A;
	Fri, 12 May 2023 18:10:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxXDS-00Ce4N-0W
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 18:10:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pxXDQ-0000Kf-RU; Fri, 12 May 2023 20:10:04 +0200
Message-ID: <d3a5994b-11b0-2f58-bc1a-70b9b50c913c@pengutronix.de>
Date: Fri, 12 May 2023 20:10:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
 <20230512111008.1120833-12-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230512111008.1120833-12-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_111006_203293_9BAC4F64 
X-CRM114-Status: GOOD (  19.38  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 11/27] ARM: Move early MMU after malloc initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 12.05.23 13:09, Sascha Hauer wrote:
> Initialize the MMU after malloc so that we can use malloc in the
> MMU code, for example to allocate memory for page tables.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/start.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index bcfc630f3b..9d788eba2b 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -167,16 +167,6 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
>  	arm_barebox_size = barebox_size;
>  	malloc_end = barebox_base;
>  
> -	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
> -		unsigned long ttb = arm_mem_ttb(membase, endmem);
> -
> -		if (!IS_ENABLED(CONFIG_PBL_IMAGE)) {
> -			pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
> -			arm_early_mmu_cache_invalidate();
> -			mmu_early_enable(membase, memsize - OPTEE_SIZE, ttb);
> -		}
> -	}
> -
>  	if (boarddata) {
>  		uint32_t totalsize = 0;
>  		const char *name;
> @@ -226,6 +216,16 @@ __noreturn __no_sanitize_address void barebox_non_pbl_start(unsigned long membas
>  
>  	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
>  
> +	if (IS_ENABLED(CONFIG_MMU_EARLY)) {
> +		unsigned long ttb = arm_mem_ttb(membase, endmem);
> +
> +		if (!IS_ENABLED(CONFIG_PBL_IMAGE)) {
> +			pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
> +			arm_early_mmu_cache_invalidate();
> +			mmu_early_enable(membase, memsize - OPTEE_SIZE, ttb);
> +		}
> +	}
> +
>  	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
>  		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1);
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



