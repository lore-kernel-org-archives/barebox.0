Delivery-date: Tue, 24 May 2022 09:06:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntOck-007Ien-RB
	for lore@lore.pengutronix.de; Tue, 24 May 2022 09:06:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntOcj-0001uP-Hb
	for lore@pengutronix.de; Tue, 24 May 2022 09:06:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CoEl6vCb4XxCK5lGFFjnKLXfO6TVIudp5xusS0kAJls=; b=DN4BYrZlCoHg9nO3Sr8tsBMjbz
	8i+/PrFAMzh1LRFBGaNsnaRzwpFa85xz+ZZYWDaBHx+Rdm8Aqe0kl3vVCoS+zMEnWLncxSAnMUtvV
	43dCM/4U01Sn+3+MT8GTWt8P78AgJRkcXCZoLRskNC5M8nPApUF4Oe8dHA0jIhO5/4vr2RBCDacVY
	6I8i2+DieJAX1ahi+fAa6T8ivb1mgQbe4aF8MpCP9InF2W5NS/cDUdqaLZgP3mUav2l1Hqv3VyN2f
	uakt1nXY0yYBQ8jdkO7Q6sCsAdqE+D+k732R2Q47VRHiGduSZf0IHMvIyd5PngumvzJN2W8FC6LSq
	TwsH1i5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntOax-0070pC-HF; Tue, 24 May 2022 07:04:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntOas-0070oW-Jj
 for barebox@lists.infradead.org; Tue, 24 May 2022 07:04:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ntOam-0001Ui-R3; Tue, 24 May 2022 09:04:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ntOam-0007oH-I7; Tue, 24 May 2022 09:04:32 +0200
Date: Tue, 24 May 2022 09:04:32 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, j.martin@pengutronix.de
Message-ID: <20220524070432.GS25578@pengutronix.de>
References: <20220523062756.774153-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220523062756.774153-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:04:23 up 54 days, 19:34, 62 users,  load average: 0.23, 0.24, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_000438_686581_C1FBB037 
X-CRM114-Status: GOOD (  29.99  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] test: self: add basic testing for malloc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 23, 2022 at 08:27:55AM +0200, Ahmad Fatoum wrote:
> Surprisingly, the TLSF allocator is prone to overflow. Add some tests
> that trigger this behavior. These tests run to success with dlmalloc,
> but some of them fail under tlsf when compiled for 32-bit:
> 
>   test_malloc:40: unexpectedly succeeded to malloc(SIZE_MAX)
>   test_malloc:61: unexpectedly succeeded to (tmp = realloc(p, 0xf0000000))
>   test_malloc:63: unexpectedly succeeded to tmp = realloc(p, SIZE_MAX)
>   ERROR: malloc: failed 3 out of 12 tests
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  test/self/Kconfig  |  5 +++
>  test/self/Makefile |  1 +
>  test/self/malloc.c | 91 ++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 97 insertions(+)
>  create mode 100644 test/self/malloc.c

Applied, thanks

Sascha

> 
> diff --git a/test/self/Kconfig b/test/self/Kconfig
> index 3340a9146ee2..cf11efe54486 100644
> --- a/test/self/Kconfig
> +++ b/test/self/Kconfig
> @@ -32,6 +32,11 @@ config SELFTEST_ENABLE_ALL
>  	help
>  	  Selects all self-tests compatible with current configuration
>  
> +config SELFTEST_MALLOC
> +	bool "malloc() selftest"
> +	help
> +	  Tests barebox memory allocator
> +
>  config SELFTEST_PRINTF
>  	bool "printf selftest"
>  	help
> diff --git a/test/self/Makefile b/test/self/Makefile
> index 05a2a6a236ec..65d01596b806 100644
> --- a/test/self/Makefile
> +++ b/test/self/Makefile
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  
>  obj-$(CONFIG_SELFTEST) += core.o
> +obj-$(CONFIG_SELFTEST_MALLOC) += malloc.o
>  obj-$(CONFIG_SELFTEST_PRINTF) += printf.o
>  obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
>  obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
> diff --git a/test/self/malloc.c b/test/self/malloc.c
> new file mode 100644
> index 000000000000..c25b416b9751
> --- /dev/null
> +++ b/test/self/malloc.c
> @@ -0,0 +1,91 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +
> +#include <common.h>
> +#include <bselftest.h>
> +#include <malloc.h>
> +#include <memory.h>
> +#include <linux/sizes.h>
> +
> +BSELFTEST_GLOBALS();
> +
> +static void __expect(bool cond, bool expect,
> +		     const char *condstr, const char *func, int line)
> +{
> +	total_tests++;
> +	if (cond != expect) {
> +		failed_tests++;
> +		printf("%s:%d: %s to %s\n", func, line,
> +		       expect ? "failed" : "unexpectedly succeeded",
> +		       condstr);
> +	}
> +}
> +
> +#define expect_alloc_ok(cond) \
> +	__expect((cond), true, #cond, __func__, __LINE__)
> +
> +#define expect_alloc_fail(cond) \
> +	__expect((cond), false, #cond, __func__, __LINE__)
> +
> +static void test_malloc(void)
> +{
> +	size_t mem_malloc_size = mem_malloc_end() - mem_malloc_start();
> +	u8 *p, *tmp;
> +
> +	pr_debug("mem_malloc_size = %zu\n", mem_malloc_size);
> +
> +	/* System libc when built for sandbox may have overcommit, so
> +	 * doing very big allocations without actual use may succeed
> +	 * unlike in-barebox allocators, so skip these tests in that
> +	 * case
> +	 */
> +	if (IS_ENABLED(CONFIG_MALLOC_LIBC)) {
> +		pr_info("built with host libc allocator: Skipping tests that may trigger overcommit\n");
> +		mem_malloc_size = 0;
> +	}
> +
> +	expect_alloc_ok(p = malloc(1));
> +	free(p);
> +
> +	if (mem_malloc_size) {
> +		expect_alloc_fail(malloc(SIZE_MAX));
> +
> +		if (0xf0000000 > mem_malloc_size) {
> +			expect_alloc_fail((tmp = malloc(0xf0000000)));
> +			free(tmp);
> +		}
> +	} else {
> +		skipped_tests += 2;
> +	}
> +
> +	p = realloc(NULL, 1);
> +	expect_alloc_ok(p = realloc(NULL, 1));
> +
> +	*p = 0x42;
> +
> +	expect_alloc_ok(tmp = realloc(p, 2));
> +
> +	p = tmp;
> +	__expect(*p == 0x42, true, "reread after realloc", __func__, __LINE__);
> +
> +	if (mem_malloc_size) {
> +		expect_alloc_fail(tmp = realloc(p, mem_malloc_size));
> +
> +		if (0xf0000000 > mem_malloc_size)
> +			expect_alloc_fail((tmp = realloc(p, 0xf0000000)));
> +
> +		expect_alloc_fail(tmp = realloc(p, SIZE_MAX));
> +
> +	} else {
> +		skipped_tests += 3;
> +	}
> +
> +	free(p);
> +
> +	expect_alloc_ok(p = malloc(0));
> +	expect_alloc_ok(tmp = malloc(0));
> +
> +	__expect(p != tmp, true, "allocate distinct 0-size buffers", __func__, __LINE__);
> +}
> +bselftest(core, test_malloc);
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

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

