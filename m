Delivery-date: Tue, 08 Feb 2022 09:16:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHLgD-009AZL-Hj
	for lore@lore.pengutronix.de; Tue, 08 Feb 2022 09:16:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHLgC-0006rj-Co
	for lore@pengutronix.de; Tue, 08 Feb 2022 09:16:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=It+Mkmm046I4um3ujaqoGOrt5VRamnWz4btv/xrFQ24=; b=g3QqVTnDbDO/3imvOgk+uy5Hq0
	UKTGLOQKTqcnLNquVhooKnSMfRvUDpPgatPU4BwPd/3SNw3UTYfVsw2kI9EMBOM4ZhBgqH0SoYP6f
	iLQw6okJYAwB/qdLeO28x/cJzAsTV9e9pptv6dG8/A7wEaOTj6CS8l7a69DI74XBAvx4/DMD8zMwz
	2r0y8Fh3K51GhzpLezb50+KdgqSAh920vIRbdtPfX0bRjyQmirmVY3nFKsPPZ2ORlDH/mcicdvNZZ
	NJ78eWme0wyVjZxSA9Wvm1CaSCSJ1okw4G1ACoLQSPgbyWQJLjNOr4Am9iDrr4WoK8kl4IFoBhfYe
	l/Z9F5Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHLey-00CtJG-O2; Tue, 08 Feb 2022 08:15:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHLet-00CtIl-LP
 for barebox@lists.infradead.org; Tue, 08 Feb 2022 08:15:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHLes-0006eB-Fa; Tue, 08 Feb 2022 09:15:30 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHLes-0003vz-5C; Tue, 08 Feb 2022 09:15:30 +0100
Date: Tue, 8 Feb 2022 09:15:30 +0100
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org
Message-ID: <20220208081530.GL18637@pengutronix.de>
References: <20220207134743.1775403-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220207134743.1775403-1-masahiroy@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:15:19 up 59 days, 17:00, 81 users,  load average: 0.15, 0.16, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_001531_724974_82AFAAF0 
X-CRM114-Status: GOOD (  21.50  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] kvx: remove unused CONFIG_ARCHINFO
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Feb 07, 2022 at 10:47:43PM +0900, Masahiro Yamada wrote:
> This is defined, but not used anywhere.
> 
>   $ git grep ARCHINFO
>   arch/kvx/Kconfig:config ARCHINFO
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied, thanks

Sascha

> 
>  arch/kvx/Kconfig | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
> index 1c3e29a9f..5e7ddeea1 100644
> --- a/arch/kvx/Kconfig
> +++ b/arch/kvx/Kconfig
> @@ -38,13 +38,6 @@ config ARCH_TEXT_BASE
>  	hex
>  	default 0x110000000
>  
> -menu "Kalray specific"
> -
> -config ARCHINFO
> -	string
> -	default "coolidge"
> -endmenu
> -
>  menu "Board configuration"
>  
>  config BUILTIN_DTB
> -- 
> 2.32.0
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

