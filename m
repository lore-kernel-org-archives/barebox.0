Delivery-date: Thu, 29 Jun 2023 10:59:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEnUs-008EDH-BE
	for lore@lore.pengutronix.de; Thu, 29 Jun 2023 10:59:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEnUq-0000s7-09
	for lore@pengutronix.de; Thu, 29 Jun 2023 10:59:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ytuPPfU0YO3F3zEOamUj33s5mHXJgApZyvE+C+Pra6I=; b=0yugqP5f73e3CQXmFwFhkuaW8Z
	gnj13ZMyBPehVPdUh4WU5gCZJLzaLgPGP2GpiD1MbFukJ6wh3/7pkDEmqGaO9xttN0RlP+0G9OIS5
	sQeLrxOqVwbrj4qFUwuyYWQ9aTCRJNwFnkDTpb7IeJE/1w/0n+Lwo7+MeZqUC3KXWwBKW/naxJLO5
	XjKqA3np7sc966xF/vGH6OqBc42TYnqsOoLFaoMpY2ilEyqCFNQBDLZ4SYOtVDL2s+7XDC9mIkrFV
	wdFV7wr3h8kWYoep1G0V7Om7N/Fn1n4g2UOZfkZg6GxQKe5RODgk/4N9nX+A6NIY0v4ZONhH0/eeD
	GbVW2diw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEnTF-000TlD-1Y;
	Thu, 29 Jun 2023 08:57:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEnTC-000Tji-2v
	for barebox@lists.infradead.org;
	Thu, 29 Jun 2023 08:57:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qEnT6-0000oN-5q; Thu, 29 Jun 2023 10:57:36 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qEnT5-0002SO-UT; Thu, 29 Jun 2023 10:57:35 +0200
Date: Thu, 29 Jun 2023 10:57:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, uol@pengutronix.de
Message-ID: <20230629085735.ae5uc2f5grthkoev@pengutronix.de>
References: <20230626153335.3592017-1-a.fatoum@pengutronix.de>
 <20230626153335.3592017-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230626153335.3592017-2-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_015742_942115_AA1617EC 
X-CRM114-Status: GOOD (  12.31  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master v1 1/6] firmware: reference pointer alignment
 defined in <asm-generic/pointer.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-06-26, Ahmad Fatoum wrote:
> We already define pointer size constants for use in assembly. Make use
> of this header. No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  firmware/Makefile | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/firmware/Makefile b/firmware/Makefile
> index efdd5c0da541..8050d0418d33 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -41,13 +41,13 @@ obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
>  
>  FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
>  FWSTR     = $(subst /,_,$(subst .,_,$(subst -,_,$(FWNAME))))
> -ASM_ALIGN = $(if $(CONFIG_64BIT),3,2)
>  
>  filechk_fwbin = { \
>  	echo "/* Generated by $(src)/Makefile */"		;\
> +	echo "\#include <asm-generic/pointer.h>"		;\
>  	echo ".section .note.GNU-stack,\"\",%progbits"		;\
>  	echo "    .section $2,\"$3\""				;\
> -	echo "    .p2align $(ASM_ALIGN)"			;\
> +	echo "    .p2align $(ASM_LGPTR)"			;\
>  	echo ".global _fw_$(FWSTR)_start"			;\
>  	echo "_fw_$(FWSTR)_start:"				;\
>  	echo "    .incbin \"$(fwdir)/$(FWNAME)\""		;\
> @@ -57,7 +57,7 @@ filechk_fwbin = { \
>  
>  __fwbin_sha = { \
>  	echo "    .section .rodata.$(FWSTR).sha"		;\
> -	echo "    .p2align $(ASM_ALIGN)"			;\
> +	echo "    .p2align $(ASM_LGPTR)"			;\
>  	echo ".global _fw_$(FWSTR)_sha_start"			;\
>  	echo "_fw_$(FWSTR)_sha_start:"				;\
>  	echo "    .incbin \"$(fwobjdir)/$(FWNAME).sha.bin\""	;\
> -- 
> 2.39.2
> 
> 
> 


