Delivery-date: Mon, 05 Jun 2023 15:46:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6AX5-00BpoK-LB
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 15:46:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6AX3-0006ZQ-6p
	for lore@pengutronix.de; Mon, 05 Jun 2023 15:46:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4dGgz3M4PXqjGsJ3vUHfpL2c7JguIjS8qkLrj4pcvG4=; b=iRywV7fpZwPuvAdKW5dIoJjRQ7
	a7FwmFzTCVXciCDgFm7rPJWLdyiyNtfXIb5IatPcw28MRRPSM6g4vosdnQEIXJEDxlEPFTgDm9eFt
	DHAj2UhJATdEKmzWXneckBRHX6u+iXbiIOFI1gVGLc/uGpmRSLSbbJ9oGccssC0mnrnU+0vHwuxrR
	/+73Z9yoptEL9eUsjqbyYtihaBX9Aj0rvEi1z8REspj22YwdyyvklDR3mfvr6DUAoU5PskBaeeIcs
	Z9gSDSLXnaMeFMmZNtgZ4Vac3WZcOEH8fU6XsZ+Sndf1m70hYi+OkOdLdM0+pfCnT4N95o/jnc8X1
	IW85zZMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6AW3-00FezP-1I;
	Mon, 05 Jun 2023 13:44:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6AVy-00Fewo-2Q
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 13:44:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6AVv-0006A7-Gr; Mon, 05 Jun 2023 15:44:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6AVv-0006PQ-9O; Mon, 05 Jun 2023 15:44:51 +0200
Date: Mon, 5 Jun 2023 15:44:51 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230605134451.GP18491@pengutronix.de>
References: <20230605062755.3993563-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230605062755.3993563-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_064454_787183_C02C7BA2 
X-CRM114-Status: GOOD (  30.54  )
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
Subject: Re: [PATCH] test: self: add setjmp/longjmp/initjmp test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 05, 2023 at 08:27:55AM +0200, Ahmad Fatoum wrote:
> We depend on sjlj for OP-TEE early loading on ARM32 as well as for
> the bthread infrastructure, which powers the state machine behind the
> non-blocking USB mass storage gadget implementation.
> 
> Let's add a simple test to verify everything continues to work as
> expected.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  test/self/Kconfig  |  5 +++
>  test/self/Makefile |  1 +
>  test/self/setjmp.c | 98 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 104 insertions(+)
>  create mode 100644 test/self/setjmp.c

Applied, thanks

Sascha

> 
> diff --git a/test/self/Kconfig b/test/self/Kconfig
> index d1ca6a701df3..dcbfa85896f7 100644
> --- a/test/self/Kconfig
> +++ b/test/self/Kconfig
> @@ -40,6 +40,7 @@ config SELFTEST_ENABLE_ALL
>  	imply SELFTEST_MMU
>  	imply SELFTEST_REGULATOR
>  	imply SELFTEST_STRING
> +	imply SELFTEST_SETJMP
>  	help
>  	  Selects all self-tests compatible with current configuration
>  
> @@ -87,4 +88,8 @@ config SELFTEST_STRING
>  	bool "String library selftest"
>  	select VERSION_CMP
>  
> +config SELFTEST_SETJMP
> +	bool "setjmp/longjmp library selftest"
> +	depends on ARCH_HAS_SJLJ
> +
>  endif
> diff --git a/test/self/Makefile b/test/self/Makefile
> index a66f34671e5a..b6f4395147dd 100644
> --- a/test/self/Makefile
> +++ b/test/self/Makefile
> @@ -12,6 +12,7 @@ obj-$(CONFIG_SELFTEST_JSON) += json.o
>  obj-$(CONFIG_SELFTEST_DIGEST) += digest.o
>  obj-$(CONFIG_SELFTEST_MMU) += mmu.o
>  obj-$(CONFIG_SELFTEST_STRING) += string.o
> +obj-$(CONFIG_SELFTEST_SETJMP) += setjmp.o
>  
>  clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
>  clean-files += *.dtbo *.dtbo.S .*.dtso
> diff --git a/test/self/setjmp.c b/test/self/setjmp.c
> new file mode 100644
> index 000000000000..1cbb44bdf941
> --- /dev/null
> +++ b/test/self/setjmp.c
> @@ -0,0 +1,98 @@
> +// SPDX-License-Identifier: MIT
> +// SPDX-FileCopyrightText: Copyright (C) 2003 Hewlett-Packard
> +/*
> + * Code contributed by David Mosberger-Tang <davidm@hpl.hp.com>
> + * to libunwind - a platform-independent unwind library
> + */
> +
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +
> +#include <common.h>
> +#include <bselftest.h>
> +#include <string.h>
> +#include <asm/setjmp.h>
> +
> +BSELFTEST_GLOBALS();
> +
> +static __noreturn void raise_longjmp(jmp_buf jbuf, int i, int n)
> +{
> +	while (i < n)
> +		raise_longjmp(jbuf, i + 1, n);
> +
> +	longjmp(jbuf, n);
> +}
> +
> +static jmp_buf jbuf;
> +
> +static void __noreturn initjmp_entry(void)
> +{
> +	volatile u32 arr[256];
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(arr); i++)
> +		writel(i, &arr[i]);
> +
> +	/* ensure arr[] is allocated on stack */
> +	OPTIMIZER_HIDE_VAR(i);
> +	if (i == 0)
> +		initjmp_entry();
> +
> +	longjmp(jbuf, 0x1337);
> +}
> +
> +static void test_setjmp(void)
> +{
> +	void *stack;
> +	jmp_buf ijbuf;
> +	volatile int i;
> +	int ret;
> +
> +	total_tests += 20;
> +
> +	for (i = 0; i < 10; ++i) {
> +		if ((ret = setjmp(jbuf))) {
> +			pr_debug("%s: secondary setjmp() return, ret=%d\n",
> +				 __func__, ret);
> +
> +			if (ret != i + 1) {
> +				printf("%s: setjmp() returned %d, expected %d\n",
> +					 __func__, ret, i + 1);
> +				failed_tests += 2;
> +			}
> +			continue;
> +		}
> +
> +		pr_debug("%s.%d: done with setjmp(); calling children\n",
> +			 __func__, i + 1);
> +
> +		raise_longjmp(jbuf, 0, i + 1);
> +
> +		printf("%s: raise_longjmp() returned unexpectedly\n", __func__);
> +		failed_tests++;
> +	}
> +
> +	stack = memalign(16, CONFIG_STACK_SIZE);
> +	if (WARN_ON(!stack)) {
> +		skipped_tests++;
> +		return;
> +	}
> +
> +	pr_debug("%s: testing initjmp\n", __func__);
> +
> +	total_tests += 1;
> +
> +	/* initialize new context with fresh stack */
> +	initjmp(ijbuf, initjmp_entry, stack + CONFIG_STACK_SIZE);
> +
> +	switch (setjmp(jbuf)) {
> +	case 0x1337:
> +		break;
> +	case 0:
> +		longjmp(ijbuf, 0x42);
> +	default:
> +		failed_tests++;
> +	}
> +
> +	free(stack);
> +}
> +bselftest(core, test_setjmp);
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


