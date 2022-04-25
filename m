Delivery-date: Mon, 25 Apr 2022 12:37:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1niw5X-00EfD6-SI
	for lore@lore.pengutronix.de; Mon, 25 Apr 2022 12:37:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1niw5U-0006Bw-9j
	for lore@pengutronix.de; Mon, 25 Apr 2022 12:37:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8YFV72NOfQ5WtVlLEbzK8WMFiCJinW+ACs24VW8wqLc=; b=wV7U38N60qEApabC7S37wSiQ9q
	EaK63JTEPIR+QlN2ShRuxFg6bpQzpoD220pfYFxK5dUnjV0ci1yFwGoEnkd8Y/mIUbaZCd4qc9vPp
	moGqAWsAd4iuEymQITC8gvfUSAm//+FKfS8RgYZ+opFmvy2rex9NsD4uiTgOa9p6tw4nakOzSYtWL
	f+DF7yBftvF39HW24vnN75aToFgziiRCTLwh/YRbf+L0G/LSE6AUNGtohhLG/HHbqo2n93EgDBIvX
	VwiLcMb2SsHbtkJY4e1H/YVwPefoZlgpmibBNSfzwBgCE3UClxP687QrC8vsf/UW6qx667QtBSFwy
	DW1XldoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niw4A-0099BB-8E; Mon, 25 Apr 2022 10:35:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niw3w-0099Ab-9R
 for barebox@lists.infradead.org; Mon, 25 Apr 2022 10:35:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1niw3u-0005uT-R9; Mon, 25 Apr 2022 12:35:22 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1niw3u-00062a-IF; Mon, 25 Apr 2022 12:35:22 +0200
Date: Mon, 25 Apr 2022 12:35:22 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ore@pengutronix.de
Message-ID: <20220425103522.GJ4012@pengutronix.de>
References: <20220425094857.674044-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220425094857.674044-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:35:14 up 25 days, 23:04, 79 users,  load average: 0.25, 0.15, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_033524_377018_DEF35A64 
X-CRM114-Status: GOOD (  22.97  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v3 0/3] ARM: rpi3: fix misc recent breakage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Apr 25, 2022 at 11:48:54AM +0200, Ahmad Fatoum wrote:
> barebox v2022.04.0 on the Raspberry Pi 3b is malformated, silent on the
> mini UART and slow. Fix the root causes behind these issues.
> 
> This series is a bit bigger than what normally goes direct into master,
> but I'd prefer it's applied directly to master, so we have the proper
> fixes in v2022.05.0.
> 
> v2 -> v3:
>   - add intermediate NAKED noinline function only for ARM32 where it's
>     needed
>   - reuse ENTRY_FUNCTION instead of opencoding it
> 
> v1 -> v2:
>   - remove duplicated __ARM_SETUP_STACK
> 
> Ahmad Fatoum (3):
>   ARM: asm: fix miscompilation of 32-bit ENTRY_FUNCTION_WITHSTACK
>   clk: add BCM2835 auxiliary peripheral clock driver
>   clocksource: assign non-zero priorities to all clocksources

Applied, thanks

Sascha

> 
>  arch/arm/include/asm/barebox-arm.h          | 14 ++++-
>  arch/arm/mach-at91/at91rm9200_time.c        |  1 +
>  arch/arm/mach-davinci/time.c                |  1 +
>  arch/arm/mach-ep93xx/clocksource.c          |  1 +
>  arch/arm/mach-mxs/clocksource-imx23.c       |  1 +
>  arch/arm/mach-mxs/clocksource-imx28.c       |  1 +
>  arch/arm/mach-pxa/clocksource.c             |  1 +
>  arch/arm/mach-samsung/s3c-timer.c           |  1 +
>  arch/arm/mach-tegra/tegra20-timer.c         |  1 +
>  arch/arm/mach-versatile/core.c              |  1 +
>  arch/mips/lib/csrc-r4k.c                    |  1 +
>  arch/mips/mach-xburst/csrc-jz4750.c         |  1 +
>  arch/openrisc/lib/clock.c                   |  1 +
>  arch/powerpc/mach-mpc5xxx/time.c            |  1 +
>  arch/powerpc/mach-mpc85xx/time.c            |  1 +
>  arch/sandbox/board/clock.c                  |  1 +
>  drivers/clk/Makefile                        |  1 +
>  drivers/clk/bcm/Makefile                    |  2 +
>  drivers/clk/bcm/clk-bcm2835-aux.c           | 66 +++++++++++++++++++++
>  drivers/clocksource/amba-sp804.c            |  1 +
>  drivers/clocksource/arm_architected_timer.c |  1 +
>  drivers/clocksource/arm_global_timer.c      |  1 +
>  drivers/clocksource/arm_smp_twd.c           |  1 +
>  drivers/clocksource/armv7m_systick.c        |  1 +
>  drivers/clocksource/bcm2835.c               |  1 +
>  drivers/clocksource/clps711x.c              |  1 +
>  drivers/clocksource/digic.c                 |  1 +
>  drivers/clocksource/dw_apb_timer.c          |  1 +
>  drivers/clocksource/efi.c                   |  1 +
>  drivers/clocksource/kvx_timer.c             |  1 +
>  drivers/clocksource/mvebu.c                 |  1 +
>  drivers/clocksource/nomadik.c               |  1 +
>  drivers/clocksource/orion.c                 |  1 +
>  drivers/clocksource/rk_timer.c              |  1 +
>  drivers/clocksource/timer-atmel-pit.c       |  1 +
>  drivers/clocksource/timer-imx-gpt.c         |  1 +
>  drivers/clocksource/timer-ti-32k.c          |  1 +
>  drivers/clocksource/timer-ti-dm.c           |  1 +
>  drivers/clocksource/uemd.c                  |  1 +
>  39 files changed, 117 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/clk/bcm/Makefile
>  create mode 100644 drivers/clk/bcm/clk-bcm2835-aux.c
> 
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

