Delivery-date: Mon, 04 Sep 2023 11:10:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd5b0-003WWA-MF
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 11:10:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd5ay-0005FM-HN
	for lore@pengutronix.de; Mon, 04 Sep 2023 11:10:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=itCbzr6FV+xXWrPH2NYKw/CCP3WxuT62ztxtd7z7PoI=; b=Y8yljcTHzU3doYtowLkzi1mR+R
	YvNKZgg70LHLxlwLz7pvjGmn6P9X7VizrqsPJ68g2Sd3irblixa8AVV1E8SC4h2UGaQ3+yLORasrc
	F3y2VZMdU7O8jayFYK/2UigKkVJV0x9Ba1ACpxuFKq29vL4zeTCJ+VELQZ8TdcyVyTE085jWJYvd7
	NhVqW/vhNbw4y0+NYAMytp4bNWNLDv6x8+6ycEj7RQbq4d62HFGgcX/YW5D/eAMGLSLvZ8cBYe49h
	WuxK7TLHdxaedgYlZPLwVfNzMLBopK34lFwcl/i6yBEJ4lKTe12g/3zqH5PLM92Zq1+sub/9Jcasi
	sdP9EsWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd5Zt-003bxK-30;
	Mon, 04 Sep 2023 09:09:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd5Zr-003bws-02
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 09:09:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd5Zp-0003bS-R1; Mon, 04 Sep 2023 11:08:57 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd5Zp-003qLR-80; Mon, 04 Sep 2023 11:08:57 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd5Zo-000xqc-UD; Mon, 04 Sep 2023 11:08:56 +0200
Date: Mon, 4 Sep 2023 11:08:56 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230904090856.GE189379@pengutronix.de>
References: <20230831090943.3778087-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230831090943.3778087-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_020859_050721_E207FCA9 
X-CRM114-Status: GOOD (  21.23  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: mmu32: mark whole early pagetable region as
 reserved
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Aug 31, 2023 at 11:09:43AM +0200, Ahmad Fatoum wrote:
> The TTB area allocated for early MMU is now 64K instead of 16K, yet only
> the old 16K were requested to ensure e.g. memtest doesn't touch them.
> 
> Fix this by requesting the full region.
> 
> Fixes: 407ff71a3b5d ("ARM: mmu: alloc 64k for early page tables")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index ebe92969997e..3ed76e30840a 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -561,7 +561,8 @@ void __mmu_init(bool mmu_on)
>  	struct memory_bank *bank;
>  	uint32_t *ttb = get_ttb();
>  
> -	if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
> +	if (!request_sdram_region("ttb", (unsigned long)ttb,
> +				  ARM_EARLY_PAGETABLE_SIZE))
>  		/*
>  		 * This can mean that:
>  		 * - the early MMU code has put the ttb into a place
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


