Delivery-date: Mon, 17 Aug 2026 17:43:49 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvzV6-004BCJ-24
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 17:43:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 355482021FD
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 17:43:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SorE2jOT;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=msNCytmlGHw/i1UGgCQlDgrFQmFcjfsLi3kYYAti/oo=; b=SorE2jOTDxwymE1lDYZo/IhzPN
	Xallg6eaYzmjBsX493Ek/QZ4QU2Wyn7SXBlGxA6FK6IE/Bwkbo2WsPTj2WimuIjf0KsuLI5SXyuZm
	Ia3z60EmrEYlw1/WsnI0rhZdy6JirAEvXIxl7Naq5gta8rm6TWIomRuIemzYOeQAdKxDyQdp4mbWJ
	EGRa76IdDTzs241Xb1+92WlvlwhivkUL8KWSfzB61xVsC3Cs1FaIXuLu0ph5NtGdJEZJ7KY/zJw86
	z4oZWQvEkKVXVEk++o5PYy2rfSAScHxdnNwU6er+/Cm/I4O764XlZVsluSISab/9OKyho3ZbAB/QG
	n9G7fPYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvzTh-00000006RE4-35Jc;
	Mon, 17 Aug 2026 15:42:21 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvzTa-00000006RA1-1JT8
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 15:42:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 59B97201B9A;
	Mon, 17 Aug 2026 17:42:08 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wvzTU-001ymp-0q;
	Mon, 17 Aug 2026 17:42:08 +0200
Message-ID: <d4de923e-793e-4286-b820-394e0ca9e06d@pengutronix.de>
Date: Mon, 17 Aug 2026 17:42:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/8] ARM: layerscape: re-init pbl clocksource
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
 <20260817-feature-pbl-get-time-ns-v3-5-9874c1438855@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260817-feature-pbl-get-time-ns-v3-5-9874c1438855@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_084214_515460_36422CD8 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 8/17/26 4:01 PM, Stefan Kerkmann wrote: > After setting
    the cntfrq the global PBL clocksource must be > re-initialized to function
    correctly. > > Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutro [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: d9jz7xnw7w1x83qof9eeitd8rdgshsz1
X-Spamd-Result: default: False [-7.61 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.20)[2a0a:edc0:0:900:1d::77:received,2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 355482021FD



On 8/17/26 4:01 PM, Stefan Kerkmann wrote:
> After setting the cntfrq the global PBL clocksource must be
> re-initialized to function correctly.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I was unsure at first, but these function are indeed only called after
relocation.

Cheers,
Ahmad

> ---
>  arch/arm/mach-layerscape/lowlevel-ls1028a.c | 6 +++++-
>  arch/arm/mach-layerscape/lowlevel-ls1046a.c | 5 ++++-
>  2 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-layerscape/lowlevel-ls1028a.c b/arch/arm/mach-layerscape/lowlevel-ls1028a.c
> index fd013b2b52..ed9284d55a 100644
> --- a/arch/arm/mach-layerscape/lowlevel-ls1028a.c
> +++ b/arch/arm/mach-layerscape/lowlevel-ls1028a.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0+
>  #include <common.h>
>  #include <io.h>
> +#include <asm/hardware/arm_architected_timer.h>
>  #include <asm/syscounter.h>
>  #include <asm/system.h>
>  #include <mach/layerscape/errata.h>
> @@ -35,8 +36,11 @@ static void ls1028a_timer_init(void)
>  
>  void ls1028a_init_lowlevel(void)
>  {
> +	const uint64_t cntfrq = 25000000;
> +
>  	scfg_init(SCFG_ENDIANESS_LITTLE);
> -	set_cntfrq(25000000);
> +	set_cntfrq(cntfrq);
> +	arm_arch_timer_init(cntfrq);
>  	ls1028a_timer_init();
>  	ls1028a_errata();
>  }
> diff --git a/arch/arm/mach-layerscape/lowlevel-ls1046a.c b/arch/arm/mach-layerscape/lowlevel-ls1046a.c
> index 1307c05eaf..cc2793acf2 100644
> --- a/arch/arm/mach-layerscape/lowlevel-ls1046a.c
> +++ b/arch/arm/mach-layerscape/lowlevel-ls1046a.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0+
>  #include <common.h>
>  #include <io.h>
> +#include <asm/hardware/arm_architected_timer.h>
>  #include <asm/syscounter.h>
>  #include <asm/system.h>
>  #include <mach/layerscape/errata.h>
> @@ -222,11 +223,13 @@ void ls1046a_init_lowlevel(void)
>  {
>  	struct ccsr_cci400 __iomem *cci = IOMEM(LSCH2_CCI400_ADDR);
>  	struct ccsr_scfg *scfg = IOMEM(LSCH2_SCFG_ADDR);
> +	const uint64_t cntfrq = 25000000;
>  
>  	scfg_init(SCFG_ENDIANESS_BIG);
>  	init_csu();
>  	ls1046a_init_l2_latency();
> -	set_cntfrq(25000000);
> +	set_cntfrq(cntfrq);
> +	arm_arch_timer_init(cntfrq);
>  	syscnt_enable(IOMEM(LSCH2_SYS_COUNTER_ADDR));
>  
>  	/* Make DMA master reads and writes snoopable */
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



