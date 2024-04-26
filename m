Delivery-date: Fri, 26 Apr 2024 12:51:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s0JAp-0017eO-32
	for lore@lore.pengutronix.de;
	Fri, 26 Apr 2024 12:51:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s0JAp-0005xw-BP
	for lore@pengutronix.de; Fri, 26 Apr 2024 12:51:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sSVGVx/f9Onk8zmuHLHDLcQsZj/a5tNp7o/qI4zY2jk=; b=V/RzHyKQ5L8Jh319I0UVA5pisb
	QOKFknnfYOpvYe2vbsZANbIZI6L3NT4oW5MVV3cUZcZLaHm6XfwEotQodpPCwJsY2lpbNu2bILUu3
	99Mg9Nbwaieb/bZbRKFSXSj98KjrjxGs39vs7mtLoh+mvD6DDl/VhOwXizguS52xUxbDRxFLGTICA
	nGSVDwtRobEpuV3CoJPmWw+PWBmVEWBVr25eD4DflaQcGkeGr+5QFD/imWJO+NFIGrb4FgnULAxNn
	UxwBa1WdF9UWzKyq/CjNiEgMY/vStZm65uAD/zcKjhWFwOECuRQM8NkBLjOEndnRH9+TYzKGsbSZj
	3on4/NcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0JAI-0000000CDjc-1qt8;
	Fri, 26 Apr 2024 10:50:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0J9o-0000000CDPm-11it
	for barebox@lists.infradead.org;
	Fri, 26 Apr 2024 10:50:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1s0J9l-00056Y-FX; Fri, 26 Apr 2024 12:50:17 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1s0J9l-00EQdy-1m; Fri, 26 Apr 2024 12:50:17 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1s0J9k-00ExEM-38;
	Fri, 26 Apr 2024 12:50:16 +0200
Date: Fri, 26 Apr 2024 12:50:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZiuG6JsawKgp_NSn@pengutronix.de>
References: <20240426104147.3555933-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240426104147.3555933-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_035020_412898_97E65CF1 
X-CRM114-Status: GOOD (  18.14  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] sandbox: dma: fix recursive dependency between
 headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Apr 26, 2024 at 12:41:47PM +0200, Ahmad Fatoum wrote:
> If <dma.h> includes <linux/kernel.h> via <asm/dma.h>, it will end up
> including <linux/slab.h>, which in turn includes <dma.h>.
> 
> This leads to use of symbols before definition, so remove the
> <linux/kernel.h> definition.
> 
> Fixes: 9b12861830e0 ("include: linux/slab: use dma_alloc for kmalloc")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/sandbox/include/asm/dma.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/include/asm/dma.h b/arch/sandbox/include/asm/dma.h
> index ab84166846a2..2dbce1ad6c9a 100644
> --- a/arch/sandbox/include/asm/dma.h
> +++ b/arch/sandbox/include/asm/dma.h
> @@ -8,7 +8,8 @@
>  #ifndef __ASM_DMA_H
>  #define __ASM_DMA_H
>  
> -#include <linux/kernel.h>
> +#include <xfuncs.h>
> +#include <linux/types.h>
>  #include <linux/string.h>
>  
>  #define DMA_ALIGNMENT	64
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


