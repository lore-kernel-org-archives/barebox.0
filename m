Delivery-date: Wed, 28 Sep 2022 11:13:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odT89-00HDG3-59
	for lore@lore.pengutronix.de; Wed, 28 Sep 2022 11:13:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odT87-0008Gu-W0
	for lore@pengutronix.de; Wed, 28 Sep 2022 11:13:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wDMD1Y3+JSxffAPlQPeLBu6JpkDdc0ecZlWPyCKPGLU=; b=lw7+H6YojKpCRKYPNgEVclwPrb
	soEH3uu/MNb4NY/t5HMfU6rw9BfzCPi+PX+R6Ctx4H4B5gA+qe2DrO9QBmvUdh6tZcbh9SfPv/Ozt
	JMxeG9KlpRlaggPYXZY9KQcku52RqT5HXBTZ4cMdCt46IEDSOfIlmKs0OAZ0OFxulz3gx6dLu4qTn
	ZLx0/1ltFJc7Gq09rY1R/lxeFJsDAKllPUNW2ZefoPMj9sM2yAXHkvGL1kpDB6oragr3uMzQoNebg
	R/KLCUYhWi7DdCT+XluFxKwZEcmutjQprNsHMgRI6vi4PHA+J9alb9YN/RsFvRPE49wy7hppU0Id+
	lvyxFTCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odT6i-00F6Oo-Du; Wed, 28 Sep 2022 09:11:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odT6W-00F6Js-5V
	for barebox@lists.infradead.org; Wed, 28 Sep 2022 09:11:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1odT6U-0007u7-7p; Wed, 28 Sep 2022 11:11:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1odT6T-0004Gh-Hj; Wed, 28 Sep 2022 11:11:41 +0200
Date: Wed, 28 Sep 2022 11:11:41 +0200
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220928091141.GV986@pengutronix.de>
References: <20220927172217.662321-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220927172217.662321-1-enrico.scholz@sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_021144_230805_E27D83BD 
X-CRM114-Status: GOOD (  18.90  )
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
Subject: Re: [PATCH] zstd: fix assert() logic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 27, 2022 at 07:22:17PM +0200, Enrico Scholz wrote:
> It should warn when condition does **not** hold
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  lib/zstd/common/zstd_deps.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

That fixes only the warnings, not the regression, right?

Sascha

> 
> diff --git a/lib/zstd/common/zstd_deps.h b/lib/zstd/common/zstd_deps.h
> index 7a5bf44839c9..f06df065dec0 100644
> --- a/lib/zstd/common/zstd_deps.h
> +++ b/lib/zstd/common/zstd_deps.h
> @@ -84,7 +84,7 @@ static uint64_t ZSTD_div64(uint64_t dividend, uint32_t divisor) {
>  
>  #include <linux/kernel.h>
>  
> -#define assert(x) WARN_ON((x))
> +#define assert(x) WARN_ON(!(x))
>  
>  #endif /* ZSTD_DEPS_ASSERT */
>  #endif /* ZSTD_DEPS_NEED_ASSERT */
> -- 
> 2.37.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


