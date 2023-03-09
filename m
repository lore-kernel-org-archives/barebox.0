Delivery-date: Thu, 09 Mar 2023 11:49:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDps-00Eide-Qx
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:49:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDps-00023h-Gw
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:49:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZNYWAiHhDMK1fmoD+W2WoUxl8ML0Ld9Vp5drrSJaAhk=; b=QLLLfxpsYBmYKCiQ39JocdlsnO
	K91Nr9rxooImCajD/9DPu9Sj4qYhWZlcjxRHyHp0dyMAEVe4atwbku5ZJ/g1ZMSfCVZ5W7jykqAYO
	m/8+D9H1GkQ5Lk9lLdYT1DwEXXMYIqn0Bcin8OOscDfXeu53/hIIukKQOs80YGwN3P1FIbs1hXQIz
	hnv/d/6ssln94W7uJHhyjU3pfueTXyyv3lbA532yK20o/8zpCSYbA86XliZdp0wsVYg2zD7LZC5Gq
	QxqwUQasKPEy17OCpvVFcSxyI+fCiSuk6bNA7vfmAVh+5Gs6oYLtYrMftUTEgE32k9g5sNnDgRY75
	gpFIXywA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDom-009Cw4-EY; Thu, 09 Mar 2023 10:48:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDoj-009Cvg-Fc
	for barebox@bombadil.infradead.org; Thu, 09 Mar 2023 10:48:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=ZNYWAiHhDMK1fmoD+W2WoUxl8ML0Ld9Vp5drrSJaAhk=; b=P6R1Cglb3EpKMNDErZ5utOMiAK
	7YqUyWvZedMMDbvY0dmvUCknsfIpepeehhxzXB0mQJIYPUVY6I3nVvlLbDtAYBhSrlnTIzpACyuLP
	0s+2HfnWBanWtURHJbkV6LQIBIzXfiUrlJciUGI1q+2ZPATpkNExNCORDRYEkICgPHe/MqBr2ctlx
	amEl0yXjG31G5PWaKiXMxuABFVOHQ++ANhF1vBZ4r5K4xnaw39rKNsnvN4OJ61pUVun8rMqGsqdOE
	LKoWqtVjIAiZiUjPvEewtIsv8cZrECbLTptBBVIGLFldXm7qOHf2lxIkQGoJX8SFfHa22gWt5ezug
	Bm0QCKrQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1paDof-0005Xx-3B
	for barebox@lists.infradead.org;
	Thu, 09 Mar 2023 10:48:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paDoe-0001tl-Vs; Thu, 09 Mar 2023 11:48:08 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paDoe-0004F9-4f; Thu, 09 Mar 2023 11:48:08 +0100
Date: Thu, 9 Mar 2023 11:48:08 +0100
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230309104808.GA5784@pengutronix.de>
References: <BL0PR07MB566565603B9BFC2D40141142ECB79@BL0PR07MB5665.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL0PR07MB566565603B9BFC2D40141142ECB79@BL0PR07MB5665.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_104810_158042_4532E704 
X-CRM114-Status: GOOD (  23.61  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Subject: [PATCH 1/1] ARM:lib32: add architected timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 07, 2023 at 04:17:08PM +0000, Renaud Barbier wrote:
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

Applied, thanks

Sascha

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
>  
>  obj-pbl-y	+= setjmp.o
>  
> diff --git a/arch/arm/lib32/arm_architected_timer.c b/arch/arm/lib32/arm_architected_timer.c
> new file mode 100644
> index 0000000000..54eca13f8b
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
> +	ticks = DIV_ROUND_DOWN_ULL((us * cntfrq), 1000000);
> +
> +	while ((long)(start + ticks - get_cntpct()) > 0)
> +		;
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
> -- 
> 2.27.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


