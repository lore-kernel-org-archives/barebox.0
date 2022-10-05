Delivery-date: Wed, 05 Oct 2022 08:32:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofxx1-006Sre-Lp
	for lore@lore.pengutronix.de; Wed, 05 Oct 2022 08:32:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofxx0-0005Eq-58
	for lore@pengutronix.de; Wed, 05 Oct 2022 08:32:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dgUFT0NvKKd+0AfzEVNXTdnGWB8U7TDpJ8uMD7X7r4g=; b=FR7bCC1Nd4GRyWw8QsY5usSMWA
	H7GlCqRvoto4icSpBfu2KGWz79PTmiKoJcSiY4tgSpPOji2TkHbVvW/tCo3zm6sblkAG/W1Cmx1NS
	bR4Mw3MceQJ6tIef9upP3xvsO6zdAHepPI3hpS4JyLHZWN4ynBOYiiwTrDTv8qnwNnrxXjmuwp2w4
	UUu43w1aH7JuUB+Wi9l+fLGIlBKj/gnjvJ3HKTE/YVpSel1O1eoE6abaU3uI22ft+0WcnuoDpgK9J
	z0I1fgdVEf5BcvFQSuFJ5YYhXibU4e9IZOhXKGo/c9wYYRnYqwQp5FFEVEip+yHT+04R0BumhqIEA
	Wdlic7nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofxvj-00CfmL-TF; Wed, 05 Oct 2022 06:30:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofxvf-00Cflb-AR
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 06:30:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofxve-0004wJ-12; Wed, 05 Oct 2022 08:30:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ofxvd-00054F-P4; Wed, 05 Oct 2022 08:30:49 +0200
Date: Wed, 5 Oct 2022 08:30:49 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221005063049.GO986@pengutronix.de>
References: <20220930154247.756577-1-a.fatoum@pengutronix.de>
 <20220930154247.756577-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220930154247.756577-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_233051_382167_328DD973 
X-CRM114-Status: GOOD (  24.35  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] relocate_to_current_adr: hang directly on error
 instead of panic()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 30, 2022 at 05:42:47PM +0200, Ahmad Fatoum wrote:
> panic() will format a panic message, turn on a panic LED, dump a
> stack trace and finally either restart the system or print a
> message to ask the user to restart the system before hanging.
> 
> When relocation fails, all of these aren't possible, so instead of
> devolving into undefined behavior, fall directly into an infinite loop.
> 
> Motivation for this change is to avoid linking printf code when it's
> only usage is the relocation error case.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/common.c  | 4 ++--
>  arch/riscv/lib/reloc.c | 2 +-
>  include/common.h       | 6 ++++++
>  3 files changed, 9 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> index 5ccacf204751..7cd97e938b3d 100644
> --- a/arch/arm/cpu/common.c
> +++ b/arch/arm/cpu/common.c
> @@ -90,7 +90,7 @@ void relocate_to_current_adr(void)
>  			putc_ll(' ');
>  			puthex_ll(rel->r_addend);
>  			putc_ll('\n');
> -			panic("");
> +			__hang();
>  		}
>  
>  		dstart += sizeof(*rel);
> @@ -120,7 +120,7 @@ void relocate_to_current_adr(void)
>  			putc_ll(' ');
>  			puthex_ll(rel->r_offset);
>  			putc_ll('\n');
> -			panic("");
> +			__hang();
>  		}
>  
>  		dstart += sizeof(*rel);
> diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
> index da53c50448d7..13118a9ac54f 100644
> --- a/arch/riscv/lib/reloc.c
> +++ b/arch/riscv/lib/reloc.c
> @@ -66,7 +66,7 @@ void relocate_to_current_adr(void)
>  			putc_ll(' ');
>  			puthex_ll(rela->r_addend);
>  			putc_ll('\n');
> -			panic("");
> +			__hang();
>  		}
>  	}
>  
> diff --git a/include/common.h b/include/common.h
> index bd120356883a..cf3e0447a09a 100644
> --- a/include/common.h
> +++ b/include/common.h
> @@ -43,6 +43,12 @@
>   */
>  void reginfo(void);
>  
> +/* For use when unrelocated */
> +static inline void __hang(void)
> +{
> +	while (1);
> +}
> +
>  void __noreturn hang (void);
>  
>  char *size_human_readable(unsigned long long size);
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


