Delivery-date: Tue, 05 Dec 2023 08:49:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQBn-003utw-0T
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 08:49:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAQBn-0000og-6a
	for lore@pengutronix.de; Tue, 05 Dec 2023 08:49:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rLZqAwOGywvjr1dhw9e7Kad3IyeCBHRpR3wCh/K+hTk=; b=g5Av9yrn9iflL2l+os/APRZ1NZ
	17F93PgKfkuTMtiIvh3FRH26/TldS5saT7fm3z7IkwPyttZDLhCYUtNyJRNynljLBMxOkEkuTMCQ2
	zOrq6h3UwQv06Pug7dEvnoTMzBGluZeJnHWnLOGoZeq5df1576KglUjhJ8B2pilNOpaoxaOt8kh70
	UVhtPiKyYg39/OL92/Du63wH3L4vELYOE+pbaY7WGSJe1j9yZNx/om5JU/HuB3B0SntLtRDSiw4u3
	bPSH0MrJap+On9LLbIRQGV3AlkcyGndNLDSDf1NXzh1sSETX/TFEIyVbkOrzkiqRe772ku8e6gj+K
	pCyeQ16A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQAP-006Xcj-39;
	Tue, 05 Dec 2023 07:48:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQAN-006XcK-0G
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 07:48:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQAL-0000Wi-Rw; Tue, 05 Dec 2023 08:48:25 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQAL-00Dh34-Fa; Tue, 05 Dec 2023 08:48:25 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rAQAL-005Lku-DE; Tue, 05 Dec 2023 08:48:25 +0100
Date: Tue, 5 Dec 2023 08:48:25 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20231205074825.GH1057032@pengutronix.de>
References: <20231129061030.1780596-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231129061030.1780596-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_234827_119755_E5C681B9 
X-CRM114-Status: GOOD (  17.76  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: dma: define DMA_ALIGNMENT instead of defining
 dma_alloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 29, 2023 at 07:10:30AM +0100, Ahmad Fatoum wrote:
> There's a suitable fallback dma_alloc implementation already in dma.h,
> which we can use as soon as we define DMA_ALIGNMENT.
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/include/asm/dma.h | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
> index 53953a486393..0774a11c5a30 100644
> --- a/arch/arm/include/asm/dma.h
> +++ b/arch/arm/include/asm/dma.h
> @@ -3,11 +3,7 @@
>  
>  #include <common.h>
>  
> -#define dma_alloc dma_alloc
> -static inline void *dma_alloc(size_t size)
> -{
> -	return xmemalign(64, ALIGN(size, 64));
> -}
> +#define DMA_ALIGNMENT	64
>  
>  #ifndef CONFIG_MMU
>  #define dma_alloc_coherent dma_alloc_coherent
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


