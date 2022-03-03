Delivery-date: Thu, 03 Mar 2022 11:08:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiO5-00GP9m-QV
	for lore@lore.pengutronix.de; Thu, 03 Mar 2022 11:08:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiO4-00010p-Bi
	for lore@pengutronix.de; Thu, 03 Mar 2022 11:08:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TSENfWsqD7udyxivfLbp2NaDr5mdpGEAMaoCvuCHbn8=; b=SL9KYyL7RyerA2r9wZotbIPu7E
	6WtMrAZiU2Pzy4g+OLtxaaS14e9Nvtf1+L82+Fl8JkCYRMWMHFQK1IPC7dkYa55+V63/0ZzFRV+xH
	7fvXu5SaqKKVgUGV1Sx1AJ/2274sJGR80JpGh47iSKOes7io22+vkxQNkeNlT0ZXhsa54hDLDGaCb
	VYk8Y34T4K+ytlNRMLhaXUSYsFQSdS67cDaBoA+aqt0EVwDbXdu1SLDDkoAfRYXHjmYEk8AawXlME
	Xq8UL6Mxbfo38CvxXzOnesgrAe8meEki4dZQ8N3QLo6tO/zV2JafjjBMX8qNQoqzSSfc4qdyuJ4I7
	5FVs4hVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPiMo-0060mP-QJ; Thu, 03 Mar 2022 10:07:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPiMi-0060kQ-BG
 for barebox@lists.infradead.org; Thu, 03 Mar 2022 10:07:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiMh-0000ms-4c; Thu, 03 Mar 2022 11:07:19 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiMg-0002Ze-Q4; Thu, 03 Mar 2022 11:07:18 +0100
Date: Thu, 3 Mar 2022 11:07:18 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220303100718.GG19585@pengutronix.de>
References: <20220302201215.658986-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220302201215.658986-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:07:11 up 82 days, 18:52, 83 users,  load average: 0.10, 0.25, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_020720_406551_04C86903 
X-CRM114-Status: GOOD (  24.94  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] compiler: add support for fallthrough attribute
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 02, 2022 at 09:12:15PM +0100, Ahmad Fatoum wrote:
> Use of it is enforced in Linux now, so code we'll port may contain it.
> Import the definition.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  include/linux/compiler_types.h | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index aa9cbcac7740..bc1b43aab0dc 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -112,6 +112,27 @@ struct ftrace_likely_data {
>  #define __deprecated
>  #define __deprecated_for_modules
>  
> +#ifndef __has_attribute
> +#define __has_attribute(...)		0
> +#endif
> +
> +/*
> + * Add the pseudo keyword 'fallthrough' so case statement blocks
> + * must end with any of these keywords:
> + *   break;
> + *   fallthrough;
> + *   continue;
> + *   goto <label>;
> + *   return [expression];
> + *
> + *  gcc: https://gcc.gnu.org/onlinedocs/gcc/Statement-Attributes.html#Statement-Attributes
> + */
> +#if __has_attribute(__fallthrough__)
> +# define fallthrough                    __attribute__((__fallthrough__))
> +#else
> +# define fallthrough                    do {} while (0)  /* fallthrough */
> +#endif
> +
>  #endif /* __KERNEL__ */
>  
>  #endif /* __ASSEMBLY__ */
> -- 
> 2.34.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

