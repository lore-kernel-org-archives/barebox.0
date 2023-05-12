Delivery-date: Fri, 12 May 2023 19:24:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxWUx-00FKh7-Vh
	for lore@lore.pengutronix.de; Fri, 12 May 2023 19:24:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxWUw-0002zC-4T
	for lore@pengutronix.de; Fri, 12 May 2023 19:24:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WU82IORZ0sxPgMJU1Kky4YtVRcYfIL/ppC0bqy2XuZk=; b=BibJgG5SPgHONDXOMBI7+lC4TL
	2WV4LflBQ1R5NzJvZ8yWb4xaczbNulZOj/1FxkNguKG0f5D2GB+jPR0FOwmBK0ubcobae41011D4O
	TJvyMRYVjA3nBf7WaHVMD6w7DPP3L8ONJvTHjUROXccFIY5afmqC88mjhYCXx7/Od2b251HzMNY2y
	d7mgIMXASbzyQTaAUQaj6eppiSLNY0jiDjPM3ojSxjX0gODlTiQSGsCCbYQAj/wnT35jicRVH88ts
	Fbp8zJOAPj6GOTT06f6k7ydGrWCHXdDOJr0kXJoMGDz7eMRN93RnNmLAW8/JuHicpQHmUXB7TJMDe
	wCxU3uvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxWTy-00CZs9-33;
	Fri, 12 May 2023 17:23:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxWTv-00CZrO-2E
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 17:23:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pxWTu-0002q4-Cl; Fri, 12 May 2023 19:23:02 +0200
Message-ID: <9c42ee2d-522e-23ee-6a67-dbfcba51043c@pengutronix.de>
Date: Fri, 12 May 2023 19:23:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
 <20230512111008.1120833-6-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230512111008.1120833-6-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_102303_726787_B162CA17 
X-CRM114-Status: GOOD (  16.39  )
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
Subject: Re: [PATCH 05/27] ARM: mmu-common.c: use common mmu include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 12.05.23 13:09, Sascha Hauer wrote:
> mmu-common.c needs things from mmu-common.h, but not from mmu.h, so
> include the former instead.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/mmu-common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
> index 488a189f1c..e6cc3b974f 100644
> --- a/arch/arm/cpu/mmu-common.c
> +++ b/arch/arm/cpu/mmu-common.c
> @@ -11,7 +11,7 @@
>  #include <asm/system.h>
>  #include <asm/barebox-arm.h>
>  #include <memory.h>
> -#include "mmu.h"
> +#include "mmu-common.h"
>  
>  void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
>  			     enum dma_data_direction dir)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



