Delivery-date: Wed, 10 Jan 2024 07:46:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNSMD-00BIn6-26
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 07:46:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNSMD-0006vi-1L
	for lore@pengutronix.de; Wed, 10 Jan 2024 07:46:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SW2+vXwEAj+VKfuLEkl0R9ptZ1QcympQviFWwTzeqZQ=; b=vdusJIH7Fuazgqz6sE78ibmsiv
	YwkJJ2dK+wQ9VVGYs/pnQ5htJOCZqs0GbRMgQvPofWUvkwrpaJ79RwODCLGmc1/BA/YzYMoHFrFDj
	NdbcsOCBbTV7faj4FJky4F7MWjqm+wuCGVnSA2j+5MVc2D9rX4EXtR+No5P8f6XiCY1kqEVZ+c3C1
	jCW4xCNfSIlm/2E2vTv65sxNjTBjsEnjHfG1aITuTN6+L2+Ge1B0uhTdFlQOW2yGWDD5gWsKu1qk/
	cjcURhRgNNMI2eh9ysO1Z4SEodWKYBxKX4Ax7uzhr2hkiQfTLX5ykTitaXgC4rMhYrZjC35fXoSCA
	wUhv6WUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNSLC-00AW9Z-30;
	Wed, 10 Jan 2024 06:45:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNSL9-00AW8e-1R
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 06:45:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSL8-0006je-6z; Wed, 10 Jan 2024 07:45:26 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSL7-001e08-N5; Wed, 10 Jan 2024 07:45:25 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNSL7-00BAN5-Kg; Wed, 10 Jan 2024 07:45:25 +0100
Date: Wed, 10 Jan 2024 07:45:25 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>,
	Yann Sionneau <ysionneau@kalrayinc.com>
Message-ID: <20240110064525.GJ1318922@pengutronix.de>
References: <20240108102438.1318473-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240108102438.1318473-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_224527_489463_D8033201 
X-CRM114-Status: GOOD (  19.69  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/4] sandbox: set DMA_ALIGNMENT instead of defining
 dma_alloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 08, 2024 at 11:24:35AM +0100, Ahmad Fatoum wrote:
> <dma.h> will take care to define dma_alloc with DMA_ALIGNMENT as
> alignment. As 32 is the default and we for some reason, use 64 for
> sandbox, define DMA_ALIGNMENT and drop the now duplicate code.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/include/asm/dma.h | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/include/asm/dma.h b/arch/sandbox/include/asm/dma.h
> index ac8b408aae0b..cafbb7fe6a4c 100644
> --- a/arch/sandbox/include/asm/dma.h
> +++ b/arch/sandbox/include/asm/dma.h
> @@ -12,11 +12,7 @@
>  #include <linux/string.h>
>  #include <driver.h>
>  
> -#define dma_alloc dma_alloc
> -static inline void *dma_alloc(size_t size)
> -{
> -	return xmemalign(64, ALIGN(size, 64));
> -}
> +#define DMA_ALIGNMENT	64
>  
>  #define dma_alloc_coherent dma_alloc_coherent
>  static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
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


