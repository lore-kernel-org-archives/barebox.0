Delivery-date: Fri, 03 Mar 2023 18:44:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY9Sh-007max-F1
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 18:44:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY9Sg-0006R3-NI
	for lore@pengutronix.de; Fri, 03 Mar 2023 18:44:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aBbf1ltxTg1koY7rjVjqd1iLWhP5jOn3Bk7zk+VbR2g=; b=ZUfnmCIAlmPDFL29e+IeOyFvuZ
	9a6+VsDQbOzUGmrlfXq3afJzUeaVm2jP7b+Y6Hd/Ec0l2o2g8HKiUHoS2Z5X2v8j0V6PItgFildZT
	/aDKz71k0YcPkkRQBzhTs+735rd4gx5si7qK81wiD4tLN7VuSkUcRwPS98HnjpplN7yRvmxaori/D
	PJTaaZYS/a5LJ74whjRFBvxXDxCLD93C56sQPggMMmsPDL8J4FexHYGYO8dWZQ0o4ggcQ8LErJljJ
	KBF3axDuYBnnKsybuOlhK86IaQM7DdaMXHr5ObDs0ydViWMdEhU2YyE75/V1mbwt56gC//uMd+ZY8
	gZHQHg9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY9R4-00732Y-C3; Fri, 03 Mar 2023 17:43:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY9Fm-006yAc-3D
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 17:31:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=aBbf1ltxTg1koY7rjVjqd1iLWhP5jOn3Bk7zk+VbR2g=; b=ZjD6+rq7XSFqgOBxdjRM4WwJiK
	w7qKQ6h3esrOo47EY3nQ+LEgP6AkDlKYffb1RGn7jd/VRne3UwEcz6BEoR7lMIXqXb8+XJFHau+0K
	iyL9m463t48LGx8ISK9b7cBiDha0DqdHDmqLzhR+sshyg1WXM134HkFwOqS7F5uuc2bu2kKIDilBJ
	QoQS4CU5ULJlL1xOFV4zs5dNnnXflfMRVM1bh3RrIAkIFRkjFutMvvxn7itL173eMCaCEsMdNcwRd
	WTfGDi5lCj8fePEQ4g5ABB0ej5Dn+f6pY7F2HUNU0wBtw18zHrbkTXuinZOi29Q9PQU4s0fApb14C
	+kvaOEzQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY9Fi-00Fkhw-1R
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 17:31:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pY9Fg-0004Zj-Iv; Fri, 03 Mar 2023 18:31:28 +0100
Message-ID: <2d905868-b24b-040e-ac2e-86337a1c6304@pengutronix.de>
Date: Fri, 3 Mar 2023 18:31:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <BL0PR07MB566575E744709713CB99A86DECB39@BL0PR07MB5665.namprd07.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <BL0PR07MB566575E744709713CB99A86DECB39@BL0PR07MB5665.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_173130_556678_D42709F8 
X-CRM114-Status: GOOD (  23.78  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Subject: [PATCH 1/1] ARM:lib32: add architected timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 03.03.23 18:05, Renaud Barbier wrote:
> In preparation for the introduction of the LS1021A support,
> add a specific timer support based on the LS1046A support so
> that delays can be used in the PBL.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
> ---
>  arch/arm/lib32/Makefile                |  2 ++
>  arch/arm/lib32/arm_architected_timer.c | 17 +++++++++++++++++
>  include/clock.h                        |  2 ++
>  3 files changed, 21 insertions(+)
>  create mode 100644 arch/arm/lib32/arm_architected_timer.c
> 
> diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
> index 82507fffc0..d54fb7644c 100644
> --- a/arch/arm/lib32/Makefile
> +++ b/arch/arm/lib32/Makefile
> @@ -31,6 +31,8 @@ extra-y += barebox.lds
>  pbl-y	+= lib1funcs.o
>  pbl-y	+= ashldi3.o
>  pbl-y	+= div0.o
> +pbl-$(CONFIG_CPU_32v7)	+= arm_architected_timer.o
> +CFLAGS_arm_architected_timer.o := -march=armv7-a

Sorry, I should have been clearer before. Once you only build the
file for ARMv7, you don't need to mess with -march=armv7-a anymore,
see arch/arm/Makefile:
  
  arch-$(CONFIG_CPU_32v7) :=-D__LINUX_ARM_ARCH__=7 $(call cc-option,-march=armv7-a,-march=armv5t -Wa$(comma)-march=armv7-a)

>  obj-pbl-y	+= setjmp.o
>  
> diff --git a/arch/arm/lib32/arm_architected_timer.c b/arch/arm/lib32/arm_architected_timer.c
> new file mode 100644
> index 0000000000..83b49656cb
> --- /dev/null
> +++ b/arch/arm/lib32/arm_architected_timer.c
> @@ -0,0 +1,17 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <asm/system.h>
> +#include <clock.h>
> +#include <common.h>
> +
> +/* Unlike the ARMv8, the timer is not generic to ARM32 */
> +void arm_architected_timer_udelay(unsigned long us)
> +{
> +	unsigned long long ticks, cntfrq = get_cntfrq();
> +	unsigned long long start = get_cntpct();
> +
> +	ticks = us * cntfrq + 999999;
> +	do_div(ticks, 1000000);

There's DIV_ROUND_UP_ULL you could use instead of opencoding that.
I see that we round down in the udelay for ARM64.
Do you think we should rather be rounding up there too?

In any case, it's worth mentioning why you choose to round up here
in the commit message.

> +
> +	while ((long)(start + ticks - get_cntpct()) > 0);
> +}
> diff --git a/include/clock.h b/include/clock.h
> index e6197e7eb0..8e07c35d37 100644
> --- a/include/clock.h
> +++ b/include/clock.h
> @@ -35,6 +35,8 @@ uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant);
>  int is_timeout(uint64_t start_ns, uint64_t time_offset_ns);
>  int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns);
>  
> +void arm_architected_timer_udelay(unsigned long us);
> +
>  void ndelay(unsigned long nsecs);
>  void udelay(unsigned long usecs);
>  void mdelay(unsigned long msecs);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



