Delivery-date: Thu, 12 Oct 2023 16:28:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqwfu-005qrg-Ss
	for lore@lore.pengutronix.de; Thu, 12 Oct 2023 16:28:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqwft-0004Mz-IL
	for lore@pengutronix.de; Thu, 12 Oct 2023 16:28:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=th/k6HyCiaalVSbKtKkGAyOM9vj7uccVJV+0i7yP04U=; b=P4zMTyFkz/zbxPbDjRTG5jI1JX
	xfRXd2flm2EC5mx2F/Wy7IAKjmEqqNdpHaTyKkU6XNkW91obo1oLe3c72xv6yeGI5iNeXjSNYErTo
	ul9VGZDrypX5x7DkZXSV0ptfJ7ZfCXkUg6C23iTQUDCMlWAwsS2+SR2lOHY+aVSzYwaUXttCTZbNZ
	aLDVOHmvyzjBg1phuBKQxZpydIkK2KrQA4nQMeFf4hWAzdDvZG2Nwi1MguyGNovWP/m2wOCkTZUQ5
	SzwzB3ajjViXScNOnQIIfuxvQjmsK6+ObE/4+kPdeR8bEbYLyDFHha/3tboXz35H11sRBOZ4rZ6Mf
	QmSDAIuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqwem-001B94-1V;
	Thu, 12 Oct 2023 14:27:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqweh-001B86-28
	for barebox@lists.infradead.org;
	Thu, 12 Oct 2023 14:27:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqweg-000474-Eg; Thu, 12 Oct 2023 16:27:14 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qqweg-001AoR-2K; Thu, 12 Oct 2023 16:27:14 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqweg-00E84C-08; Thu, 12 Oct 2023 16:27:14 +0200
Date: Thu, 12 Oct 2023 16:27:13 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231012142713.GE3359458@pengutronix.de>
References: <20231009115051.1931562-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231009115051.1931562-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_072715_728486_AC3FF03D 
X-CRM114-Status: GOOD (  21.76  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] x86: lib: setjmp: fix stack alignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 09, 2023 at 01:50:50PM +0200, Ahmad Fatoum wrote:
> x86 stack is expected to be 16-byte aligned to allow for instructions
> like movaps that involve xmm operands to directly use the stack.
> 
> However the 16-byte alignment is what's expected at startup time.
> All later functions will have the stack misaligned by a pointer size's
> worth because call pushes the return address to the call stack.
> 
> Add the missing (mis)alignment. This fixes a segmentation fault observed
> using initjmp on x86_64.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/x86/lib/setjmp_32.S | 4 +++-
>  arch/x86/lib/setjmp_64.S | 2 ++
>  2 files changed, 5 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/x86/lib/setjmp_32.S b/arch/x86/lib/setjmp_32.S
> index 38dcb68c1b59..30db5f989af6 100644
> --- a/arch/x86/lib/setjmp_32.S
> +++ b/arch/x86/lib/setjmp_32.S
> @@ -8,6 +8,7 @@
>  #define _REGPARM
>  
>  #include <linux/linkage.h>
> +#include <asm-generic/pointer.h>
>  
>  .text
>  .align 8
> @@ -53,7 +54,8 @@ ENDPROC(longjmp)
>  ENTRY(initjmp)
>  
>  	movl %edx, 20(%eax)	/* Return address */
> -	movl %ecx, 4(%eax)	/* Post-return %esp! */
> +	sub $ASM_SZPTR, %ecx	/* ESP - 4 has to be 16-byte aligned on entry */
> +	movl %ecx, 4(%eax)	/* Stack top */
>  	xorl %eax, %eax		/* Return value */
>  	ret
>  
> diff --git a/arch/x86/lib/setjmp_64.S b/arch/x86/lib/setjmp_64.S
> index 28ea576cd22e..d5cf99a1557f 100644
> --- a/arch/x86/lib/setjmp_64.S
> +++ b/arch/x86/lib/setjmp_64.S
> @@ -6,6 +6,7 @@
>   */
>  
>  #include <linux/linkage.h>
> +#include <asm-generic/pointer.h>
>  
>  .text
>  .align 8
> @@ -53,6 +54,7 @@ ENDPROC(longjmp)
>  ENTRY(initjmp)
>  
>  	movq	%rsi, (%rdi)	/* Return address */
> +	sub	$ASM_SZPTR, %rdx	/* RSP - 8 has to be 16-byte aligned on entry */
>  	movq	%rdx, 8(%rdi)	/* Stack top */
>  	xorq	%rax, %rax
>  	ret
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


