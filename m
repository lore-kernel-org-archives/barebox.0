Delivery-date: Mon, 24 Oct 2022 10:57:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omtGZ-000SoN-19
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 10:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omtGX-0001Pr-Kb
	for lore@pengutronix.de; Mon, 24 Oct 2022 10:57:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ccZyzCWPmGhTtNbyCfxu7vWcMcFMgubDFw1i3kGYW+I=; b=afu8fQtg/hMhaRvOcsyiUlwUqy
	2CnTMZaDaouUhg8mdAQMZYbmupvlSwM1lKOds5b/x7ubzEJ9/lFgkZcnquhp3bsDZ2VdYX4eqNe6W
	PfF5mukIvlf5wFRJxw6rh9r2mTJRwpM4PFqPeEbceEwTpLz5JDdcecZaWS0ejJ9QWwSs23XEOJyvP
	8MuOx71i0L28sd5++htJAe3E/h2YywSyqVlwgF757B87gYp3UBuJLoWbVOUVXnPZvuV9PcDSJFQfv
	KHeUw1osK6RIFV17vx6XRA0q6QU0mpYNrVks5dVBvkv9KL3HkxnIhjB1OfTyGTOP68SMZn3T2RAeR
	t3sbXOQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtF0-000Fmk-NP; Mon, 24 Oct 2022 08:55:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtEw-000FmB-2Y
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 08:55:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omtEt-00019f-EA; Mon, 24 Oct 2022 10:55:19 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omtEt-0006a3-88; Mon, 24 Oct 2022 10:55:19 +0200
Date: Mon, 24 Oct 2022 10:55:19 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221024085519.GJ6702@pengutronix.de>
References: <20221024065716.1215046-1-a.fatoum@pengutronix.de>
 <20221024065716.1215046-6-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221024065716.1215046-6-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_015522_137412_8602D62D 
X-CRM114-Status: GOOD (  31.48  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/8] ARM64: asm: rewrite ENTRY_FUNCTION(_WITHSTACK) fully
 in assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 24, 2022 at 08:57:13AM +0200, Ahmad Fatoum wrote:
> Recent episode with pointer authentication showed again that for
> platforms without __attribute__((naked)), we are better off writing
> the early header in assembly. We still want to keep the board specific
> entry points in C for ease of use, so we have ENTRY_FUNCTION_WITHSTACK
> generate two symbols:
> 
>   - A 32-bit stack top value that's placed in .rodata
> 
>   - An entry point with the normal C code, including stack-using
>     prologues
> 
> The new common assembly head code will access the stack pointer in a
> position-independent manner and set it up, before continuing with the
> C code. The barebox header is part of the common assembly head code
> ensuring it's not moved around due to compiler code generation.
> 
> The common code will need access to board-specific entry point and stack
> top. The former is readily available as the alias __pbl_board_entry.
> The latter is a bit more complicated, as the symbol may not exist for
> boards not using the common header in a multi-image build.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Makefile                           |  3 +--
>  arch/arm/cpu/Makefile              |  2 ++
>  arch/arm/cpu/head_64.S             | 36 ++++++++++++++++++++++++++++++
>  arch/arm/include/asm/barebox-arm.h | 28 +++++++----------------
>  arch/arm/lib/pbl.lds.S             |  9 ++++++++
>  5 files changed, 56 insertions(+), 22 deletions(-)
>  create mode 100644 arch/arm/cpu/head_64.S
> 
> diff --git a/Makefile b/Makefile
> index 81ef44122367..a4b9f3c021d7 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -660,8 +660,7 @@ KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check)
>  KBUILD_CFLAGS += $(call cc-option,-fcf-protection=none)
>  
>  # We don't have the necessary infrastructure to benefit from ARMv8.3+ pointer
> -# authentication. On older CPUs, they are interpreted as NOPs and blot the
> -# code and break less portable code that expects a very specific code layout
> +# authentication. On older CPUs, they are interpreted as NOPs bloating the code
>  KBUILD_CFLAGS += $(call cc-option,-mbranch-protection=none)
>  
>  KBUILD_CFLAGS   += $(call cc-disable-warning, address-of-packed-member)
> diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> index c0993c1abe5d..7674c1464c1f 100644
> --- a/arch/arm/cpu/Makefile
> +++ b/arch/arm/cpu/Makefile
> @@ -13,6 +13,8 @@ AFLAGS_hyp.pbl.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
>  obj-y += start.o entry.o entry_ll$(S64).o
>  KASAN_SANITIZE_start.o := n
>  
> +pbl-$(CONFIG_CPU_64) += head_64.o
> +
>  pbl-$(CONFIG_BOARD_ARM_GENERIC_DT) += board-dt-2nd.o
>  pbl-$(CONFIG_BOARD_ARM_GENERIC_DT_AARCH64) += board-dt-2nd-aarch64.o
>  
> diff --git a/arch/arm/cpu/head_64.S b/arch/arm/cpu/head_64.S
> new file mode 100644
> index 000000000000..4ed4ffb05250
> --- /dev/null
> +++ b/arch/arm/cpu/head_64.S
> @@ -0,0 +1,36 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +#include <linux/linkage.h>
> +#include <asm/barebox-arm64.h>
> +#include <asm/image.h>
> +
> +/* Linker will point these at board-specific symbols */
> +.globl __pbl_board_stack_top
> +.globl __pbl_board_entry
> +
> +.section .text_head_prologue_common, "x"
> +ENTRY(__barebox_arm64_head)
> +	nop
> +	nop
> +	nop

Why these nops here?

> +	adr x9, __pbl_board_stack_top
> +	ldr w9, [x9]
> +	cbz x9, 1f
> +	mov sp, x9
> +	b 1f
> +	.org 0x20
> +	.asciz "barebox"
> +	.word 0xffffffff
> +	.word _barebox_image_size	/* image size to copy */
> +	.rept 8
> +	.word 0x55555555
> +	.endr
> +1:
> +#ifdef CONFIG_PBL_BREAK
> +	brk #17
> +	nop
> +#else
> +	nop
> +	nop
> +#endif

Why do you jump over the barebox header? You could put all the code
before it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


