Delivery-date: Thu, 23 Nov 2023 08:26:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r646w-005UMf-2f
	for lore@lore.pengutronix.de;
	Thu, 23 Nov 2023 08:26:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r646w-000752-Sl
	for lore@pengutronix.de; Thu, 23 Nov 2023 08:26:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZMGrYo+Tw+0OJmpfiu9y02Vg56EyHrQgDjIomNzLyhQ=; b=uMJKVXGByzx4eItlyDc8NZQZ8c
	X19Q7RYRmISoTt4cF+s5IHWiAX4qH4UJKpGVVNzOlAXqVlOkdu9o+dPMGGU/+g3bfZB+MX1DVvEnw
	iptMRg5+ugftG4lXnSyrW/XLCHFvEyMvGy/FmyMIFqfVNiKjl2TKKFccx4AZStcFXngTGT9uF/9RN
	MpAF4pL0TuBljPep5emZYa5MYbvTnjDdeGYdZzdRUJ0DWxKEsBcj25apoRdySygj1pvF8yDlOztME
	F4zfCc56roGT3j2ps6f1HMdOCJYVzDdJSMp6WYACNHvd8JQJhsxENaneBdmbWddMNFgoyk4IzvL4f
	9AEKRRiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r645f-0041vs-0K;
	Thu, 23 Nov 2023 07:25:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r645b-0041us-25
	for barebox@lists.infradead.org;
	Thu, 23 Nov 2023 07:25:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r645a-0006s0-98; Thu, 23 Nov 2023 08:25:30 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r645Z-00AzPb-Sv; Thu, 23 Nov 2023 08:25:29 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r645Z-003QE8-Qf; Thu, 23 Nov 2023 08:25:29 +0100
Date: Thu, 23 Nov 2023 08:25:29 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231123072529.GG3359458@pengutronix.de>
References: <20231122181116.591131-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122181116.591131-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_232531_685415_58C188C9 
X-CRM114-Status: GOOD (  16.61  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/7] ARM: stm32mp: random STM32MP13 fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 22, 2023 at 07:11:09PM +0100, Ahmad Fatoum wrote:
> STM32MP135-DK board support has been broken by a device tree sync with
> the kernel as the kernel now uses SCMI to communicate with OP-TEE for
> controlling some clocks, resets, regulators and OTP.
> 
> A series for that is incoming once OP-TEE communication upstreaming
> is complete, but for now, this series fixes random other stuff.
> 
> Ahmad Fatoum (7):
>   ARM: dts: stm32mp: stm32mp135-dk: drop duplicate property
>   ARM: dts: stm32mp: fix model string for stm32mp135f-dk
>   ARM: stm32mp: init: drop unused macros
>   ARM: stm32mp: don't re-enable DBGCFGR clock
>   ARM: stm32mp: init: handle differences between STM32MP13 and STM32MP15
>   ARM: stm32mp: init: don't print STM32MP15 CPU type
>   ARM: stm32mp: init: ignore of_register_fixup return value

Applied, thanks

Sascha

> 
>  arch/arm/boards/stm32mp15xx-dkx/lowlevel.c |   2 +-
>  arch/arm/dts/stm32mp135f-dk.dts            |   6 +-
>  arch/arm/mach-stm32mp/init.c               | 106 +++++----------------
>  include/mach/stm32mp/revision.h            |  41 +++-----
>  4 files changed, 38 insertions(+), 117 deletions(-)
> 
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


