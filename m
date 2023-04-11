Delivery-date: Tue, 11 Apr 2023 15:14:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmDpT-00HYlN-PU
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 15:14:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pmDpT-0006af-O1
	for lore@pengutronix.de; Tue, 11 Apr 2023 15:14:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bsrQq2U1bfDFCqzcq7PzVMlQvkNd0bJh3JzA5CqcNhs=; b=olEa8MQtBlcwVAXwGCEt6a1hJR
	Q5ZvWpaWogBpGosS+V37kYwW8XnCUvYYqo/4eP3QW9bnKOnVWdAx9+LgKrQlEBcJiLA0lS7WQaroO
	+1pEDf4zV3yQSDwvmw5VOkMy5t9vJ9VR2x2cteTVZ4PRMJ5nyzru5BFBTE8oRd17z+zbiVvF9bRt1
	SIf3BIVhDaCUtUGiPnobJd4RqUWLl5TfqmtB53iGZhoHe14iRW93vGWeTtzvlwNlmxcaF1Zbyk7V8
	UrAlt0eEAsxenqjuvr9PuLIUpKL4QtVpuc1NrEPmt1CXtYwKgrxHom0DRL/a1AWNw65ijxdU6mZmw
	3C8Stvpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDoW-00054K-33;
	Tue, 11 Apr 2023 13:13:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDoT-00053r-0Y
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 13:13:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmDoR-0006Tj-SS; Tue, 11 Apr 2023 15:13:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pmDoR-0002fs-Ll; Tue, 11 Apr 2023 15:13:31 +0200
Date: Tue, 11 Apr 2023 15:13:31 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230411131331.GO19113@pengutronix.de>
References: <20230404101914.2244083-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230404101914.2244083-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_061333_207120_26E718C8 
X-CRM114-Status: GOOD (  22.90  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clock: implement CLOCKSOURCE_MASK in terms of GENMASK_ULL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 04, 2023 at 12:19:14PM +0200, Ahmad Fatoum wrote:
> Clang doesn't like our implementation of CLOCKSOURCE_MASK:
> 
>   common/clock.c:33:10: warning: shift count >= width of type [-Wshift-count-overflow]
> 	.mask = CLOCKSOURCE_MASK(64),
>                 ^~~~~~~~~~~~~~~~~~~~
>   include/clock.h:8:63: note: expanded from macro 'CLOCKSOURCE_MASK'
> 	 #define CLOCKSOURCE_MASK(bits) (uint64_t)((bits) < 64 ? ((1ULL<<(bits))-1) : -1)
> 
> So the bits < 64 check we have is apparently not enough to suppress the
> warning when built with clang.
> 
> Let's do what the kernel does and use GENMASK_ULL instead to get rid of
> the last remaining warning when building ARCH=sandbox targettools_defconfig
> with clang version 16.0.1.
> 
> Not functional change intended.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/clock.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/clock.h b/include/clock.h
> index 8e07c35d374e..03a38911a7a7 100644
> --- a/include/clock.h
> +++ b/include/clock.h
> @@ -4,8 +4,9 @@
>  
>  #include <types.h>
>  #include <linux/time.h>
> +#include <linux/bitops.h>
>  
> -#define CLOCKSOURCE_MASK(bits) (uint64_t)((bits) < 64 ? ((1ULL<<(bits))-1) : -1)
> +#define CLOCKSOURCE_MASK(bits) GENMASK_ULL((bits) - 1, 0)
>  
>  struct clocksource {
>  	uint32_t	shift;
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


