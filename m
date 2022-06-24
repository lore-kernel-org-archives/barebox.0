Delivery-date: Fri, 24 Jun 2022 09:53:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4e7p-00CzB7-09
	for lore@lore.pengutronix.de; Fri, 24 Jun 2022 09:53:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4e7p-00063S-1Z
	for lore@pengutronix.de; Fri, 24 Jun 2022 09:53:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kj1514KXzvm0shGSFN+c3lfllYjWkJ5zkVu8R9k4V8E=; b=wL7xq7UbBWeDYUT/LUYIn6aB0r
	LVcgYCwCcc9WYT480r2axHa5WN1VhL41VcVUW3qMMKE9JABftjsUD8mdgfNptglTEzXGKXah6oIsO
	42rM/JtvegKpHQHJjWzxn6gjV0FJIUpIXIVvCqo1LRpyGsAV8jE6ma87DgdfVZ+U1ciZpvTXnxNt4
	Q8IPrhDVjB2JxtjdzXMYbcFHod6cbINUZzoKxuKqOvxjLnnZUrnkTPOr31KZ5tWNbb/A4SYsCHzov
	H8QzJ5xjhV0lIa0iaXWkVX9p2Tp+JKfjYdn4zfReFJoudJmXX6w00X+J4yosORX6Gom/g02larFNl
	XuHd6tfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4e68-0013O3-3h; Fri, 24 Jun 2022 07:51:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4e63-0013Kc-5H
	for barebox@lists.infradead.org; Fri, 24 Jun 2022 07:51:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o4e5w-0005pb-6f; Fri, 24 Jun 2022 09:51:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o4e5v-0003iV-TW; Fri, 24 Jun 2022 09:51:11 +0200
Date: Fri, 24 Jun 2022 09:51:11 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220624075111.GC1615@pengutronix.de>
References: <20220623085741.3680767-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220623085741.3680767-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_005119_232522_9CEF7EDD 
X-CRM114-Status: GOOD (  17.04  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ddr: imx8m: remove header including itself
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 23, 2022 at 10:57:41AM +0200, Ahmad Fatoum wrote:
> This line has noeffect because of the include guard, so just drop it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/soc/imx8m/ddr.h | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
> index 39e9e98a73a9..230a36cbe218 100644
> --- a/include/soc/imx8m/ddr.h
> +++ b/include/soc/imx8m/ddr.h
> @@ -8,7 +8,6 @@
>  
>  #include <io.h>
>  #include <asm/types.h>
> -#include <soc/imx8m/ddr.h>
>  
>  #define DDRC_DDR_SS_GPR0		0x3d000000
>  #define DDRC_IPS_BASE_ADDR_0		0x3f400000
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


