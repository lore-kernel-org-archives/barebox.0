Delivery-date: Wed, 04 Jan 2023 10:15:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pCzrR-001IQw-2K
	for lore@lore.pengutronix.de; Wed, 04 Jan 2023 10:15:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pCzrO-0002p6-Tb
	for lore@pengutronix.de; Wed, 04 Jan 2023 10:14:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w8oipwJ1ZZDi5fS8n9i75up1TI0b7KMvAXtYMDSZyKM=; b=D0EMDzkCWuXThWrBFrm3ksyXeS
	9iaKaYhcFte0UUZ4M7kEwpjJgS5ucafmikdvVu69IXnatfWaGzcpxuD9DBv6ViGFf3dkl3jIArBLT
	zsmxJj8i/sV9ENH3WA3HMUE3HmdW1Vcx0KKqH+CCtmVfTvu3G38BFMujnleLzXt1PT0tiAEHeMNk0
	oYPMsyqZvgT0LY0IH/DlemmOmuGZRvSylJOfS6XGcdLwVB0VQg1/8lnYL98n0mLFpGmLtApwrCMbV
	BYpW+k4ZIMCkeNA3hO72IN0O1AXIBatHYRvL4dsXKM9CqJ/DZl0dypnw/yMVIa/f22urp4Ye4n8Og
	l1UZ7xKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCzpo-007wUn-35; Wed, 04 Jan 2023 09:13:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCzob-007vxQ-CQ
	for barebox@lists.infradead.org; Wed, 04 Jan 2023 09:12:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pCzoU-0002YK-Uu; Wed, 04 Jan 2023 10:11:58 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pCzoU-0002li-Ni; Wed, 04 Jan 2023 10:11:58 +0100
Date: Wed, 4 Jan 2023 10:11:58 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230104091158.GM11668@pengutronix.de>
References: <20230104072848.3693607-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230104072848.3693607-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_011205_469222_FCEB2B5A 
X-CRM114-Status: GOOD (  21.00  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: asm: simplify arm_mem_stack_top
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 04, 2023 at 08:28:48AM +0100, Ahmad Fatoum wrote:
> <asm-generic/memory_layout.h> always defines OPTEE_SIZE and sets it
> to zero when CONFIG_OPTEE_SIZE is undefined. As CONFIG_OPTEE_SIZE
> definition is dependent on BOOTM_OPTEE || PBL_OPTEE, we can replace
> the #ifdeffery and directly use OPTEE_SIZE in the macro.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/include/asm/barebox-arm.h | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index 2dcd4153200f..515525e49d31 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -80,13 +80,7 @@ static inline const void *arm_mem_scratch_get(void)
>  	return (const void *)__arm_mem_scratch(arm_mem_endmem_get());
>  }
>  
> -#define __arm_mem_stack_top(membase, endmem) ((endmem) - SZ_64K)
> -
> -#if defined(CONFIG_BOOTM_OPTEE) || defined(CONFIG_PBL_OPTEE)
> -#define arm_mem_stack_top(membase, endmem) (__arm_mem_stack_top(membase, endmem) - OPTEE_SIZE)
> -#else
> -#define arm_mem_stack_top(membase, endmem)  __arm_mem_stack_top(membase, endmem)
> -#endif
> +#define arm_mem_stack_top(membase, endmem) ((endmem) - SZ_64K - OPTEE_SIZE)
>  
>  static inline unsigned long arm_mem_stack(unsigned long membase,
>  					  unsigned long endmem)
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


