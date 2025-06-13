Delivery-date: Fri, 13 Jun 2025 11:42:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0vn-006ozT-2U
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 11:42:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0vn-0005cO-7H
	for lore@pengutronix.de; Fri, 13 Jun 2025 11:42:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KWT/ClcaBn9UAnghWXXwNfQHHnrXxhx28O8FbF3PM4M=; b=K1bgDdACgMSTRNdv8WlbsiGdwY
	GX97lkLQ4fizebhWHyQpSqAd1JYvg765kfs2GyyfAmLxCHOC8/kCglQBRBuGlRIvZXPW8ym1fBDvW
	sQOFB2vga1FRv6/mIQcUMRi7EHrNcqkWd4+Cq/vLAsDY1h+BXrMTR3HoMjy1Nle7l4rxxEnlQoRoA
	rZKBSnD6D/UkuJLviVYKSynq0V4F9LsjAM51rsMtmadESHn0DK1j+AqOYVhA3IP1bOzIJeS6Fd+ga
	S3VMtnEPwRGh3nAt7cRW2vkdsquGZbgK1n7q0gjYkfPXkfsaA+LCDF60G5O/kHxu4JDuXCQltAER5
	dViQJqFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0vK-0000000FwAR-3GCS;
	Fri, 13 Jun 2025 09:42:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0YO-0000000Ftde-3P6z
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 09:18:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uQ0YN-0007aj-JK; Fri, 13 Jun 2025 11:18:27 +0200
Message-ID: <86f1f125-357b-48f6-a56b-5c8aae5717b6@pengutronix.de>
Date: Fri, 13 Jun 2025 11:18:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
 <20250613-arm-mmu-xn-ro-v1-3-60f05c6e7b4b@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-3-60f05c6e7b4b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_021828_856837_47C8070D 
X-CRM114-Status: GOOD (  16.83  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/7] ARM: mmu: move ARCH_MAP_WRITECOMBINE to header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 6/13/25 09:58, Sascha Hauer wrote:
> ARCH_MAP_WRITECOMBINE is defined equally for both mmu_32 and mmu_64 and
> we'll add more mapping types later, so move it to a header file to be
> shared by both mmu implementations.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/mmu-common.h | 2 ++
>  arch/arm/cpu/mmu_32.c     | 1 -
>  arch/arm/cpu/mmu_64.c     | 2 --
>  3 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
> index d0b50662570a48fafd47edac9fbc12fe2a62458a..0f11a4b73d1199ec2400f64a2f057cf940d4ff2d 100644
> --- a/arch/arm/cpu/mmu-common.h
> +++ b/arch/arm/cpu/mmu-common.h
> @@ -9,6 +9,8 @@
>  #include <linux/kernel.h>
>  #include <linux/sizes.h>
>  
> +#define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
> +
>  struct device;
>  
>  void dma_inv_range(void *ptr, size_t size);
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 2754bea88a514c2886e43ffc4dbf310d75055fca..3e0c761cd43486d3193b80b5f79097bdd5cd333c 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -23,7 +23,6 @@
>  #include "mmu_32.h"
>  
>  #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
> -#define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
>  
>  static inline uint32_t *get_ttb(void)
>  {
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 65c6f1bb9f8ac2f4b55baf46c2af3d3714060088..440258fa767735a4537abd71030a5540813fc443 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -24,8 +24,6 @@
>  
>  #include "mmu_64.h"
>  
> -#define ARCH_MAP_WRITECOMBINE  ((unsigned)-1)
> -
>  static uint64_t *get_ttb(void)
>  {
>  	return (uint64_t *)get_ttbr(current_el());
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



