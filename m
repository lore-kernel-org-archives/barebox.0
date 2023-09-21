Delivery-date: Thu, 21 Sep 2023 12:36:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjH3C-005lZp-3d
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 12:36:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjH39-0005g3-Ul
	for lore@pengutronix.de; Thu, 21 Sep 2023 12:36:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iHaC7TAmF76W4USDqmbVIOnqmUW7LUG+OrYY9Y02SBo=; b=Sp32fBwQu5vKc+m+5Lq648BzoP
	1NF+jGBuRdzylyK3dVpwNTP84xGvhwLiw5YppYfNEu/1vuOoG3GYoxyVjDOgQj88PE5iPQjcVRYqk
	KK7QJOxHrDlcFaU/Uml4S1Joy1poC/HGXSmImXhDeT56LpYN9Lm31Lq6qrYSKvhRkltS62ehg53WD
	uGhnBRrSzutR8RuqjSbUcBUHBrJdt8iygWFBR0HfjgfdOhhPGuqof83u8uqIs+/2k/Mprob2T6aq9
	d6NRkvlvUlmPr4uAddjF51ZgWFoWpSgEb5ZyfxWeflT33HkmFL5PI9+Gx8am6TCPPQn0V5xHYQGl3
	3XrYlhWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjH28-005m9b-2a;
	Thu, 21 Sep 2023 10:35:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjH25-005m7D-2y
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 10:35:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qjH24-0005Lu-O9; Thu, 21 Sep 2023 12:35:40 +0200
Message-ID: <152bf451-e268-1fab-51ae-da1921c3b703@pengutronix.de>
Date: Thu, 21 Sep 2023 12:35:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de, mfe@pengutronix.de
References: <20230921095649.310666-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230921095649.310666-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_033541_961784_558CDA56 
X-CRM114-Status: GOOD (  25.57  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] dma: define __dma_aligned attribute
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 21.09.23 11:56, Ahmad Fatoum wrote:
> Unlike the kernel, we always map barebox stack 1:1, so DMA to barebox
> stack is ok if care is taken for alignment. Otherwise, cache maintenance
> may end up clobbering data unintentionally.
> 
> Provide a __dma_aligned attribute for use in such situations and use the
> already existing DMA_ALIGNMENT as alignment.
> 
> To be able to do that, we need to make sure that the default DMA_ALIGNMENT
> is only defined when architectures don't define their own dma_alloc. If
> they do, they are responsible to define their own DMA_ALIGNMENT as well.
> 
> The new attribute is intentionally not called __cacheline_aligned,
> because it differs functionally: We care about the cache line size of
> the outer cache, while in Linux __cacheline_aligned is for L1 cache.
> A __dma_aligned wouldn't make sense for Linux as it would be too easy to
> abuse (e.g. placing it on VMAP_STACK), but for barebox, we do this at
> many places and an attribute would increase readability and even safety.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Please dismiss this series. __dma_aligned as attribute only makes sense
if it would not only affect alignment, but also would round up variable
size to multiple of cache line to ensure, we don't touch adjacent unrelated
variables. I'll have to revisit this.

> ---
>  include/dma.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/include/dma.h b/include/dma.h
> index 2a09b747d1e2..469c482e7a3a 100644
> --- a/include/dma.h
> +++ b/include/dma.h
> @@ -17,17 +17,19 @@
>  
>  #define DMA_ADDRESS_BROKEN	NULL
>  
> +#ifndef dma_alloc
>  #ifndef DMA_ALIGNMENT
>  #define DMA_ALIGNMENT	32
>  #endif
>  
> -#ifndef dma_alloc
>  static inline void *dma_alloc(size_t size)
>  {
>  	return xmemalign(DMA_ALIGNMENT, ALIGN(size, DMA_ALIGNMENT));
>  }
>  #endif
>  
> +#define __dma_aligned __attribute__((__aligned__((DMA_ALIGNMENT))))
> +
>  #ifndef dma_free
>  static inline void dma_free(void *mem)
>  {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



