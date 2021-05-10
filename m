Delivery-date: Mon, 10 May 2021 09:21:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg0E9-0001hc-2x
	for lore@lore.pengutronix.de; Mon, 10 May 2021 09:21:17 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg0E8-0006wV-9t
	for lore@pengutronix.de; Mon, 10 May 2021 09:21:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LE7EY1dnywu8M4V/FuEP0A+xGZKcewHAUbxovltZpnM=; b=F/YkyQloqD4sgeK+Bquqqowxu
	y3pholRUKbXO9tjgsPZTAsH52boMMvf/f5TbPHW2z7wJ/3RlZkC0Yc63YXvwyxCfBc31DtuYQfg5X
	HZgoHu84g/S9hVcECTtlxRbm+atQQfGjV9tx97hUv80qlfDzypZKan1pBKt4LhO3A3KtE7EX+Fkes
	wLOZjkXNWkl8v7xB9DKYO5oRlMIdvgYq1h20pDzmdz9FTaPZ8DThJhbmwuOFQa3tugwg0vNtTFDex
	rDP8hMvlzmqdKBllgR8zInW+zpi4WKpCMSIPRdUrqCBkvbWMac7td+/rQxxBK8+Pbx+gtMi1dsHI3
	4Gzrbecrw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg0Cl-00DTxg-S5; Mon, 10 May 2021 07:19:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg0CI-00DTwa-JS
 for barebox@desiato.infradead.org; Mon, 10 May 2021 07:19:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0DFatZNGSmnpC69JVTcw7igxqaf0zMqZ6CpfFNG6xo4=; b=cV5V8o36+fL80GAVBepBp7sVX7
 NdBDmHL9Q1YGPmf8n8eVM6XpIA2GxeDX1K07dEJweuWMuK797BIxjMqRpB/iUZitMWK6bnZbN69fD
 gxFhmgqqkQj2gLfcYyA74eB8nEWEUk6qri+NLPjmQXQFlEFM9vyp0G1IvK0MLwQSAW5FPgnDktrDm
 TqFmAJEHFhTzEBuhTzZPjVotjJYYeYI8w0INq9udlpCLnRiLM4YC6W4+JzkJ6c5L1YYFFOcYh94qP
 Xlw1mDL9/8jK6KThRk5+9ZcgBPdD1HO0m+4UmUY9DHdATRF09lOKI6MMDRi7uZac75XUGCH3gwbgc
 haQP6IDw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg0CF-008MwB-Uv
 for barebox@lists.infradead.org; Mon, 10 May 2021 07:19:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lg0CC-0006YS-3m; Mon, 10 May 2021 09:19:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lg0CB-0008J9-HA; Mon, 10 May 2021 09:19:15 +0200
Date: Mon, 10 May 2021 09:19:15 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210510071915.GX19819@pengutronix.de>
References: <20210507102715.490841-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210507102715.490841-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:19:04 up 81 days, 10:42, 83 users,  load average: 1.62, 1.46, 0.95
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_001920_015980_354EFBD4 
X-CRM114-Status: GOOD (  24.68  )
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
Subject: Re: [PATCH] fixup! RISC-V: erizo: drop mach-erizo directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 07, 2021 at 12:27:15PM +0200, Ahmad Fatoum wrote:
> Erizo can't be built without DEBUG_LL at the moment, because
> debug_ll_ns16550_init is not defined when DEBUG_LL is off.
> 
> Add new debug_ll_init() which expands to nought when CONFIG_DEBUG_LL=n.
> ---
>  arch/riscv/boards/erizo/lowlevel.c        | 2 +-
>  arch/riscv/include/asm/debug_ll.h         | 4 ++++
>  arch/riscv/include/asm/debug_ll_ns16550.h | 2 ++
>  3 files changed, 7 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo/lowlevel.c
> index d9edb530b746..6acf15931cdf 100644
> --- a/arch/riscv/boards/erizo/lowlevel.c
> +++ b/arch/riscv/boards/erizo/lowlevel.c
> @@ -8,7 +8,7 @@ ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
>  {
>  	extern char __dtb_z_erizo_generic_start[];
>  
> -	debug_ll_ns16550_init();
> +	debug_ll_init();
>  	putc_ll('>');
>  
>  	/* On POR, we are running from read-only memory here. */
> diff --git a/arch/riscv/include/asm/debug_ll.h b/arch/riscv/include/asm/debug_ll.h
> index 6ef26280d14e..6904460af98f 100644
> --- a/arch/riscv/include/asm/debug_ll.h
> +++ b/arch/riscv/include/asm/debug_ll.h
> @@ -40,4 +40,8 @@ static inline void PUTC_LL(char ch)
>  
>  #endif
>  
> +#ifndef debug_ll_init
> +#define debug_ll_init() (void)0
> +#endif
> +
>  #endif /* __ASM_DEBUG_LL__ */
> diff --git a/arch/riscv/include/asm/debug_ll_ns16550.h b/arch/riscv/include/asm/debug_ll_ns16550.h
> index b09882ddad14..e208ef4fb1e1 100644
> --- a/arch/riscv/include/asm/debug_ll_ns16550.h
> +++ b/arch/riscv/include/asm/debug_ll_ns16550.h
> @@ -168,4 +168,6 @@ static inline void debug_ll_ns16550_init(void)
>  .endm
>  #endif /* __ASSEMBLY__ */
>  
> +#define debug_ll_init debug_ll_ns16550_init
> +
>  #endif /* __INCLUDE_RISCV_ASM_DEBUG_LL_NS16550_H__ */
> -- 
> 2.31.0
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

