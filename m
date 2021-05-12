Delivery-date: Wed, 12 May 2021 07:39:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghb0-0005Gx-Mk
	for lore@lore.pengutronix.de; Wed, 12 May 2021 07:39:46 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lghaz-0005UK-OT
	for lore@pengutronix.de; Wed, 12 May 2021 07:39:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AlYK7KgiPthVbYCCFK3UKWIdiu+XGv6rdhmxQA6csxM=; b=UKCgbLnSly/T+7qPTwLqTpF94
	3cCybxfv+8ig3O2k+ECnApfRtkHAtoQr1zuQIF9dUzLXsdYBCwcnUqTMOmNJt5n0FvfWb3fglOIhG
	0l7jssVGTw1Y/64BP5/X7jicpZjAoAhOT6QVknQb+yMNgoIgEeJziHOMBMk4YjrbPRYNuWAEy2QNM
	rCYJAPdf6Vh5/wUOmkQB0HpNii9QsOi44gdS9IhlwTCTPhHQgWo4WCiP6YoIywjNHnDveHxi9Jn2/
	qcoqVgwc9HvGp30Pm3zbI0Hk8zqD+Nc6r4xLHN08BgSw5Au4VvdV0LgJGIXN3GggfTv7eXGPdAvcS
	idajWf4wQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lghaG-0025y1-9b; Wed, 12 May 2021 05:39:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghaD-0025xh-43
 for barebox@desiato.infradead.org; Wed, 12 May 2021 05:38:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=52F8Tw8ejaw3hKeQGyzzkOm1CunILBqfiY9Dh1MzzXM=; b=RYdvBoGIRo3WSNBy+8vtHkc0mu
 yBuTACvksJJp1KGQijcyoREgI6F5LZs8OhAH28guo4YRjvK+0k+0hJLgzkqcOAF8vTCEjvH/p4u+8
 Bfr4Ld9BRZ26msimhvC9wSWKDWCKwCYcv+VkjhKwQszZaz9YoIGeIQMj5Q1rJwNndivjqZDooetVX
 R5cerN/6FbmbRsWe3/eZOjgj4u4c+3kSooI46TQbadM7xmRJrW+r3ACHMxOgX6sQpPjgykb082k7Q
 9GIvlo9+3BpTM9RgGMWtVxqFDPilKPuLr39nefhjoEIqJYQUPH7HkkIGzi29OCz7eqOZZAAa4JG9s
 jFP86RPQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lghaA-00A7oN-Et
 for barebox@lists.infradead.org; Wed, 12 May 2021 05:38:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lgha9-0005PH-7a; Wed, 12 May 2021 07:38:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lgha8-0003Oz-SC; Wed, 12 May 2021 07:38:52 +0200
Date: Wed, 12 May 2021 07:38:52 +0200
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org
Message-ID: <20210512053852.GN19819@pengutronix.de>
References: <20210511150845.10973-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210511150845.10973-1-masahiroy@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:38:34 up 83 days,  9:02, 76 users,  load average: 0.02, 0.06, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_223854_522023_E90A0518 
X-CRM114-Status: GOOD (  19.04  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kconfig: update to Linux 5.13-rc1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 12, 2021 at 12:08:45AM +0900, Masahiro Yamada wrote:
> The previous sync was Linux 5.9-rc2.
> 
> Resync scripts/kconfig/ with Linux 5.13-rc1.
> 
> Highlights:
> 
>  - make header names in include/config/ and CONFIG symbols match
>    (scripts/basic/fixdep.c was adjusted)
> 
>  - remove all 'option' syntax
>    (common/Kconfig was adjusted)
> 
>  - introduce KCONFIG_DEFCONFIG_LIST instead of 'option defconfig_list'
> 
>  - bug fixes and cleanups of nconfig
> 
>  - drop Qt4 support from xconfig
> 
>  - bug fixes, improvements, cleanups of xconfig
> 
>  - print a short log for syncconfig
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

