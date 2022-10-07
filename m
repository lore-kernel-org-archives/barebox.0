Delivery-date: Fri, 07 Oct 2022 10:32:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogimf-000I1N-RY
	for lore@lore.pengutronix.de; Fri, 07 Oct 2022 10:32:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ogimd-00049D-Hg
	for lore@pengutronix.de; Fri, 07 Oct 2022 10:32:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9tdjehUoA4GSqIGXu4B5yxNz4AUKNFrAdF7uLf8XtUw=; b=uMGnHFqynMH/64IIXw1vZFwQpX
	zgVLt2uNFBxJtB5pcy1L8XY7FWcuLw8m45dt0V6f1jKTaDg2tDSeeeJGo0MNvxYk776WkKJmm37FQ
	SEkJxADInC4bfSmo0I0+hLutOXs08DXFtguW+PJns93v+0DNHUXTyR2h/3npiXvITVVqFhPVMePcN
	IsrrwzHndCs61xT+U9w9ojVAFoSRfivxtx0owzBgg7PquHpnpCkz/uVtVIawUs7eeOKASGpE/m8dD
	fT7H1ErhyYCynDebYlK+mb7UezJOhHRfO9tssOiWzUO78zDub0kLi/Fg6f4/xwWtIrnE5QjqpK1nY
	D8JdIHSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogikN-0086qi-43; Fri, 07 Oct 2022 08:30:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogikI-0086pp-OJ
	for barebox@lists.infradead.org; Fri, 07 Oct 2022 08:30:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ogikC-0003kb-5V; Fri, 07 Oct 2022 10:30:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ogikB-0003jg-VX; Fri, 07 Oct 2022 10:30:07 +0200
Date: Fri, 7 Oct 2022 10:30:07 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221007083007.GY986@pengutronix.de>
References: <20221005111214.148844-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221005111214.148844-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221007_013014_810796_01399CFE 
X-CRM114-Status: GOOD (  20.23  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/7] RISC-V: cache: fix local_flush_icache_all enabling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 05, 2022 at 01:12:08PM +0200, Marco Felsch wrote:
> Commit fe181ffda9 ("RISC-V: support incoherent I-Cache") added the
> support to handle non-coherent caches and introduced the HAS_CACHE
> Kconfig symbol. The symbol must be used with CONFIG_ prefixed since this
> is the final Kconfig symbol which can be used within the code.
> 
> Fixes: fe181ffda9 ("RISC-V: support incoherent I-Cache")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/riscv/include/asm/cache.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/riscv/include/asm/cache.h b/arch/riscv/include/asm/cache.h
> index 9a0b9326b2..6d69ed49bd 100644
> --- a/arch/riscv/include/asm/cache.h
> +++ b/arch/riscv/include/asm/cache.h
> @@ -8,7 +8,7 @@
>  
>  static inline void local_flush_icache_all(void)
>  {
> -#ifdef HAS_CACHE
> +#ifdef CONFIG_HAS_CACHE
>  	asm volatile ("fence.i" ::: "memory");
>  #endif
>  }
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


