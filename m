Delivery-date: Wed, 01 Mar 2023 18:42:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXQTK-005oe8-Hv
	for lore@lore.pengutronix.de; Wed, 01 Mar 2023 18:42:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXQTK-0004DF-1N
	for lore@pengutronix.de; Wed, 01 Mar 2023 18:42:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JzzH2VWS1wCvhzStUzH3gnEoGT7+3xPO7xI5PnqImHM=; b=oBrJF/UVnU9RKL5mAOBvV8mfcr
	8rqq64kY9Z0mpH9SSMAhXr3mFm90Zmyts5CCs0gOqfYMyGK2f4YCb13d2Vx95GU5byZZ0mL6s/yJU
	Bsi3F8ddWIdGEFRNl2zeQSUaJtuoAxb4Oqu2Vi3rBsfqdOC9nYawlSZUKPAqYfxESOABExSNO4loS
	yzmq9PxQ2wl3vSRLpD2blR0sIU+kcU4uHPUefPzBx4IBMqnJ3DONSIvnNk7dog2+TW8Gld5mptADw
	wyBbaJ7SdlYfWN18tty6ml/k2tnrt7QKsLRl/ZcSF7+M5LowyqgQwM+o6rbx03BLOiUjAqc9w5/fU
	7/CJ3Nrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXQS3-00GzjR-C2; Wed, 01 Mar 2023 17:41:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXQRx-00GziC-Js
	for barebox@lists.infradead.org; Wed, 01 Mar 2023 17:41:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pXQRr-00044M-7o; Wed, 01 Mar 2023 18:41:03 +0100
Message-ID: <e4698412-74a8-e308-3021-23bf21ce2646@pengutronix.de>
Date: Wed, 1 Mar 2023 18:41:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <BL0PR07MB56653CD55ED2742BBC7561CCECAD9@BL0PR07MB5665.namprd07.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <BL0PR07MB56653CD55ED2742BBC7561CCECAD9@BL0PR07MB5665.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230301_094109_706904_7CBCF06C 
X-CRM114-Status: GOOD (  23.56  )
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
Subject: Re: Subject: [PATCH 1/3] ARM:lib32: add architected timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Renaud,

On 01.03.23 17:59, Renaud Barbier wrote:
> Subject: [PATCH 1/3] ARM:lib32: add architected timer
> 
> In preparation for the introduction of the LS1021A support,
> add a specific timer support based on the LS1046A support so
> that delays can be used in the PBL.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
> ---
>  arch/arm/lib32/Makefile |  1 +
>  arch/arm/lib32/pbl.c    | 17 +++++++++++++++++
>  include/clock.h         |  2 ++
>  3 files changed, 20 insertions(+)
>  create mode 100644 arch/arm/lib32/pbl.c
> 
> diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
> index 82507fffc0..1be8d70c45 100644
> --- a/arch/arm/lib32/Makefile
> +++ b/arch/arm/lib32/Makefile
> @@ -31,6 +31,7 @@ extra-y += barebox.lds
>  pbl-y	+= lib1funcs.o
>  pbl-y	+= ashldi3.o
>  pbl-y	+= div0.o
> +pbl-y	+= pbl.o

I think we need a CFLAGS_pbl.o := -march=armv7-a here, otherwise
this would break builds of non-ARMv7 platforms.

See arm_architected_timer.o in drivers/clocksource. Also, perhaps
you should rename the file to arm_architected_timer.c as well?


>  obj-pbl-y	+= setjmp.o
>  
> diff --git a/arch/arm/lib32/pbl.c b/arch/arm/lib32/pbl.c
> new file mode 100644
> index 0000000000..83b49656cb
> --- /dev/null
> +++ b/arch/arm/lib32/pbl.c
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



