Delivery-date: Thu, 21 Sep 2023 12:36:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjH3B-005lZR-Dt
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 12:36:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjH39-0005fj-9D
	for lore@pengutronix.de; Thu, 21 Sep 2023 12:36:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=beKtGWNuoo+xCZ7Z1SkVQt7mLpkD/iBwo/qqsn2v7/0=; b=F3kHZuCpkm0ZrxNmyYt5Syv3g9
	2mboYeT+mfwK2qtNBAjRUaIcORUpyZwF7PDN2NdH12BQ3S/mXUIuXmfUTs5xXOrpGh1p+0yu/hmL7
	LhUwjoj0teNDSOgbV5Zgybz78pFs3Pn/Kpt3bAWrY8DMw2fpV/UbbsYMgPAaTNSUaIwzE+l4bsc7g
	/kIGHP6G1TE4VZzPlUHz+y+T/H/l8WFMI+oZpcq9Z+kPnfxzhyUOqi1KORI6x/Zxv6rRKnsz3FCqF
	1rXg93r7N+Im2Q4C6WEuIhIfyQwflzKktgrKb57/2U7FTqS5YU1h06+wqlnqZmVlgl6XqFbWvrw1h
	zfl366+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjH1q-005lxM-09;
	Thu, 21 Sep 2023 10:35:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjH1n-005lu9-0U
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 10:35:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qjH1j-0005HC-UF; Thu, 21 Sep 2023 12:35:19 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qjH1j-007u76-Hw; Thu, 21 Sep 2023 12:35:19 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qjH1j-00AiA4-Fm; Thu, 21 Sep 2023 12:35:19 +0200
Date: Thu, 21 Sep 2023 12:35:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20230921103519.4drbblarfdbvvpgz@pengutronix.de>
References: <20230921095649.310666-1-a.fatoum@pengutronix.de>
 <20230921095649.310666-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921095649.310666-2-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_033523_193294_2C4DCF92 
X-CRM114-Status: GOOD (  14.00  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] ARM: dma: define DMA_ALIGNMENT instead of defining
 dma_alloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 23-09-21, Ahmad Fatoum wrote:
> There's a suitable fallback dma_alloc implementation already in dma.h,
> which we can use as soon as we define DMA_ALIGNMENT. By doing that, we
> also can use the __dma_aligned attribute that will come in handy in the
> follow-up commit.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

feel free to add my r-b for the whole series.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  arch/arm/include/asm/dma.h | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
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


