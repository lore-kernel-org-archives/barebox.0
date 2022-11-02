Delivery-date: Wed, 02 Nov 2022 09:00:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8fO-00C0i5-JS
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 09:00:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq8fN-00006A-GB
	for lore@pengutronix.de; Wed, 02 Nov 2022 09:00:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6O9Ajil33VcJUabOW5OTTmViounO6nCHKOeohWHdi6E=; b=e9bvRYNGuYIF6R7ZKP1cjrzz5k
	Y9r5x+zvgV6yxFO0DNY32Z6X8I6WKC4OdKk5uVLJZDBEudRj53WLApVHzVTuFU4x7d+gLEtDwGLfR
	Yx1Tlzn7WIyigZjyE8bWvYF5XvzisSskgmUM40rKgEkcvYdIyL4HUYEGMdpWn8vr2N3oOSuWmgujT
	+jl0yBbmg09CfSZRcbGmbZHlj8J9Z+fK7BfkY7fxQ/J9kKWSQwaNqW3EOWKwCt11zuBv3Qo84uwSS
	ekMQYY6+3rINtcicGe1+CvcQ1aQ6khyuPHj81RJLLMEq2AHqEN0XqyDqCzRQ0MMnlW1iM/nRPdQE5
	rWrdqTfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8e7-008ijn-Qq; Wed, 02 Nov 2022 07:58:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq8e3-008ijD-8M
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 07:58:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oq8e1-0008Sd-Qo; Wed, 02 Nov 2022 08:58:41 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oq8e1-00064A-JV; Wed, 02 Nov 2022 08:58:41 +0100
Date: Wed, 2 Nov 2022 08:58:41 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221102075841.t74tkl7l2wax6ils@pengutronix.de>
References: <20221101180421.241328-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221101180421.241328-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_005843_308184_13278A12 
X-CRM114-Status: GOOD (  14.51  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8M: atf: prefix log messages via pr_fmt()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-11-01, Ahmad Fatoum wrote:
> We have a couple of log messages in the file, so ensure they are
> appropriately prefixed.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/atf.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
> index 5301c0fbe8e5..67462bc36189 100644
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -1,5 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  
> +#define pr_fmt(fmt) "imx8m-atf: " fmt

Just "atf:" or "imx-atf:"? This code may shared with upcoming imx
processors as well, so "imx8m-atf:" would be a bit to specific.

Regards,
  Marco

> +
>  #include <asm/sections.h>
>  #include <common.h>
>  #include <firmware.h>
> -- 
> 2.30.2
> 
> 
> 


