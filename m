Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo1.mail-out.ovh.net ([46.105.35.72]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SsF3O-0006cD-Sb
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 15:23:45 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 1B607FFA8A1
 for <barebox@lists.infradead.org>; Fri, 20 Jul 2012 17:29:15 +0200 (CEST)
Date: Fri, 20 Jul 2012 17:24:17 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120720152417.GH22657@game.jcrosoft.org>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
 <1342685582-13244-10-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342685582-13244-10-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 9/9] Add compressed image support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> +{
> +	u32 r;
> +
> +	/* Setup the stack */
> +	r = STACK_BASE + STACK_SIZE - 16;
> +	__asm__ __volatile__("mov sp, %0" : : "r"(r));
> +	/* clear bss */
> +	memset(__bss_start, 0, __bss_stop - __bss_start);
> +
> +	start_barebox();
> +}
> +#else
>  void __naked __section(.text_entry) start(void)
>  {
>  	barebox_arm_head();
>  }
> +#endif
>  
>  void __naked __section(.text_exceptions) exception_vectors(void)
>  {
>  	__asm__ __volatile__ (
>  		".arm\n"
> -		"b reset\n"				/* reset */
> +		"1: b 1b\n"					/* reset */
>  #ifdef CONFIG_ARM_EXCEPTIONS
>  		"ldr pc, =undefined_instruction\n"	/* undefined instruction */
>  		"ldr pc, =software_interrupt\n"		/* software interrupt (SWI) */
> @@ -98,6 +118,34 @@ void __naked __bare_init reset(void)
>  	board_init_lowlevel_return();
>  }
>  
> +extern void *input_data;
> +extern void *input_data_end;
> +
> +#define STATIC static
> +#include "../../../lib/decompress_unlzo.c"
> +
> +void barebox_uncompress(void *compressed_start, unsigned int len)
> +{
> +	void (*barebox)(void);
need to check here if we are at TEXT_BASE (I mean if the code run where we are
supposed to uncompress

otherwise on at91 it will not work as the bootstrap put use at TEXT_BASE

so we have need to link at an other address

but the decompressor need work anyway by copying itself with the data before
of after the TEXT_BASE
and we should take the uncompress size about 4 times the compressed one.
There is nearly no change to compress more than 75%


otherwise Tested by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
