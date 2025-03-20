Delivery-date: Thu, 20 Mar 2025 13:37:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvF9Z-001tFs-1o
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 13:37:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvF9Y-0005lp-FH
	for lore@pengutronix.de; Thu, 20 Mar 2025 13:37:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UbOAzm2I7mKBrksevNz6nkVwUK8F6j6cPy+hP5xSj9E=; b=Ug3D3yGRh6VFigt5ja+c0gMI6G
	WFTnw0lGum4Ybu4cd2l0OMETN2KJO0i0BufriT0zviZB2RNXJo4n/2/02XdOn1LBI60cZrmuxgVR8
	b7t643wxA4T4mv9lIS80khIln7zeKAJUgSRrWTFLnUNTUnXjRJb6g+5Nl9otCDKkJtbSxX4TVqNhK
	3muTZtVtmZFZ+ebpkmOmS9eW6jBzJ8dvSLdWMggRf+3PRqZh+198ev38M4vDWeIyIUre4tB5fBqVq
	Ic1GTaQiHijc3vxAyKNvyWpItfcwWQ1y4sohCvdCtpsqwL3ds1X73D3L15D4McdjWQcrXohYdIMZz
	EdvrI5Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvF95-0000000C89L-1eWE;
	Thu, 20 Mar 2025 12:37:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvF92-0000000C88i-3rEn
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 12:37:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tvF8z-0005YU-Kt; Thu, 20 Mar 2025 13:37:05 +0100
Message-ID: <59323f53-9587-4e6c-a010-fca15789656b@pengutronix.de>
Date: Thu, 20 Mar 2025 13:37:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250320120907.204013-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250320120907.204013-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_053708_959621_C728D193 
X-CRM114-Status: GOOD (  13.90  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] dma: add function to check a buffer for proper DMA
 alignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 3/20/25 13:09, Sascha Hauer wrote:
> Add dma_map_buf_is_aligned() which can be used to check if a buffer is
> sufficiently aligned for DMA.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  include/dma.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/include/dma.h b/include/dma.h
> index 5877f4b13c..41eeacc478 100644
> --- a/include/dma.h
> +++ b/include/dma.h
> @@ -141,4 +141,9 @@ void dma_free_coherent(struct device *dev, void *mem, dma_addr_t dma_handle, siz
>  void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_handle);
>  #endif
>  
> +static inline bool dma_map_buf_is_aligned(struct device *dev, void *buf, size_t size)

const void *.

So we don't need to case twice; once here and once at dma_map time.

> +{
> +	return IS_ALIGNED((uintptr_t)buf, ARCH_DMA_MINALIGN) &&

PTR_IS_ALIGNED

Thanks,
Ahmad

> +		IS_ALIGNED(size, ARCH_DMA_MINALIGN);
> +}
>  #endif /* __DMA_H */



