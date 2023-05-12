Delivery-date: Fri, 12 May 2023 19:24:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxWVX-00FKjS-EM
	for lore@lore.pengutronix.de; Fri, 12 May 2023 19:24:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxWVV-00032I-Et
	for lore@pengutronix.de; Fri, 12 May 2023 19:24:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R0vsegdcmlLg7E5s1YFX4He8/4jYldGY3pQe/zxSVh8=; b=YX+/BhPPdqShs3t3L7/iIj7QeS
	pcoziI8mpUwcfjHThWpwPcH9IQnkwNlOLvzxsvTMMWVlf8EzqwzpqGdM4U9JgQMiVkN7lzR+V2snK
	3vfz95ST/i67vLMft7kqtLRpG9OHiSiyDCa41WV/dM12cHHTeaX7V/fx6imZ6llU98vuFGooAgCx4
	nAY+cAVOe1jBgtgHxFx74ahiTpE5mWghdjvqekP8E6qrXEPApe8LPswggNJtcj+3WV+3on5el7MIx
	N2qv3OMwz6/i6Rlxr1Ixta0UNs7VDfpZYorvOUa2Z/ZyNJcDmsuHcAKn410PAIb8SZPfxJ9j2NU4p
	IozCQdvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxWUY-00CZzw-04;
	Fri, 12 May 2023 17:23:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxWUV-00CZyz-0Z
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 17:23:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pxWUT-0002vk-RV; Fri, 12 May 2023 19:23:37 +0200
Message-ID: <3c81322c-a5d3-447f-ebe3-2f7228ad13d7@pengutronix.de>
Date: Fri, 12 May 2023 19:23:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
 <20230512111008.1120833-7-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230512111008.1120833-7-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_102339_216174_0507A31B 
X-CRM114-Status: GOOD (  17.24  )
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
Subject: Re: [PATCH 06/27] ARM: mmu32: rename mmu.h to mmu_32.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 12.05.23 13:09, Sascha Hauer wrote:
> mmu.h is 32bit specific, so rename it to mmu32.h like the C files

Nitpick: mmu_32.h

> have been renamed already.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/cache_32.c          | 2 +-
>  arch/arm/cpu/mmu-early_32.c      | 2 +-
>  arch/arm/cpu/mmu_32.c            | 2 +-
>  arch/arm/cpu/{mmu.h => mmu_32.h} | 0
>  arch/arm/cpu/sm.c                | 3 +--
>  5 files changed, 4 insertions(+), 5 deletions(-)
>  rename arch/arm/cpu/{mmu.h => mmu_32.h} (100%)
> 
> diff --git a/arch/arm/cpu/cache_32.c b/arch/arm/cpu/cache_32.c
> index 4202406d0d..0ac50c4d9a 100644
> --- a/arch/arm/cpu/cache_32.c
> +++ b/arch/arm/cpu/cache_32.c
> @@ -6,7 +6,7 @@
>  #include <asm/cache.h>
>  #include <asm/system_info.h>
>  
> -#include "mmu.h"
> +#include "mmu_32.h"
>  
>  struct cache_fns {
>  	void (*dma_clean_range)(unsigned long start, unsigned long end);
> diff --git a/arch/arm/cpu/mmu-early_32.c b/arch/arm/cpu/mmu-early_32.c
> index 4895911cdb..07c5917e6a 100644
> --- a/arch/arm/cpu/mmu-early_32.c
> +++ b/arch/arm/cpu/mmu-early_32.c
> @@ -9,7 +9,7 @@
>  #include <asm/cache.h>
>  #include <asm-generic/sections.h>
>  
> -#include "mmu.h"
> +#include "mmu_32.h"
>  
>  static uint32_t *ttb;
>  
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 78dd05577a..8ec21ee1d2 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -18,7 +18,7 @@
>  #include <asm/system_info.h>
>  #include <asm/sections.h>
>  
> -#include "mmu.h"
> +#include "mmu_32.h"
>  
>  #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
>  #define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
> diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu_32.h
> similarity index 100%
> rename from arch/arm/cpu/mmu.h
> rename to arch/arm/cpu/mmu_32.h
> diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
> index f5a1edbd4f..53f5142b63 100644
> --- a/arch/arm/cpu/sm.c
> +++ b/arch/arm/cpu/sm.c
> @@ -19,8 +19,7 @@
>  #include <linux/arm-smccc.h>
>  #include <asm-generic/sections.h>
>  #include <asm/secure.h>
> -
> -#include "mmu.h"
> +#include "mmu_32.h"
>  
>  static unsigned int read_id_pfr1(void)
>  {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



