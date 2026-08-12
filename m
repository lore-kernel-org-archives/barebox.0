Delivery-date: Wed, 12 Aug 2026 07:41:18 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wu1iH-002EOK-1c
	for lore@lore.pengutronix.de;
	Wed, 12 Aug 2026 07:41:18 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 12D06201CE0
	for <lore@pengutronix.de>; Wed, 12 Aug 2026 07:41:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xMHyus9z;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	Message-ID:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=2WcD4Bd2UUyWC/sDlXMDUP0OtnzTEaQSmL06wQ1VqZc=; b=xMHyus9zOzmofc
	OXoX/CLqVT+s9sp0s+WyCdG+ZDzWQL0pWNdPFUQAJly6uMOLWn1jXH+QRx0XXdsYMHXKXNV1B42Yk
	4cyHXOBMJzyf2q5WWk1mr+0ERYKKrxThieA2h96B4Zp6WI94HkP3iWFkN82eCoK3l4iNK5mXHwkQq
	GD3Ep1VhdbBvqW5YRFdLeDOHR0OMgT+gv4R9ddCvuhM1U1fWmhtOfbl5ZyLRDzmR5BzN49ZcipvoL
	6khPeYSYm582QxA7RB64ZsP2llRgSb6JlpkGscLGg2tJSjOjgKD6C+hRaD7BB5nLJG64UeKWq+5lB
	jPcKkfJvZlhq6Pw6mBAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu1gq-0000000FRYF-3D15;
	Wed, 12 Aug 2026 05:39:48 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu1gm-0000000FRXq-1bZo
	for barebox@lists.infradead.org;
	Wed, 12 Aug 2026 05:39:46 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5c58:8900:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4E6562016A0;
	Wed, 12 Aug 2026 07:32:44 +0200 (CEST)
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2 3/3] pbl: introduce HAS_PBL_CLOCKSOURCE marker
To: "Stefan Kerkmann" <s.kerkmann@pengutronix.de>
In-Reply-To: <20260811-feature-pbl-get-time-ns-v2-3-754ee021b19d@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Wed, 12 Aug 2026 05:32:43 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_223944_567353_56ED0CED 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-11 12:13, Stefan Kerkmann wrote: > This finally
    enables the usage of the polled timeout functions in the > barebox pbl with
    real timeouts for supported architectures. Currently > only ARMv7 [...] 
 
 Content analysis details:   (-1.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 MISSING_MID            Missing Message-Id: header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Stefan Kerkmann <s.kerkmann@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 1cn693i3b4qdzsfn96tzuztt61zmj943
X-Spamd-Result: default: False [-1.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MID(2.50)[];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 12D06201CE0
Message-ID: <20260812053243.wR9Ei3AydBqmmXGsO8VvNBmMSAzYsi5RvnT_W3NxtLg@z>

On 2026-08-11 12:13, Stefan Kerkmann wrote:
> This finally enables the usage of the polled timeout functions in the
> barebox pbl with real timeouts for supported architectures. Currently
> only ARMv7 and AARCH64 are enabled.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  arch/arm/cpu/Kconfig    | 2 ++
>  arch/arm/lib32/Makefile | 2 +-
>  include/linux/iopoll.h  | 2 +-
>  pbl/Kconfig             | 3 +++
>  4 files changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
> index 47c116ea98..684c7eade9 100644
> --- a/arch/arm/cpu/Kconfig
> +++ b/arch/arm/cpu/Kconfig
> @@ -82,6 +82,7 @@ config CPU_V7
>  	bool "Generic ARMv7 support"
>  	depends on 32BIT
>  	select CPU_32v7
> +	select HAS_PBL_CLOCKSOURCE if !CPU_32v4T && !CPU_32v5 && !CPU_32v6
>  
>  config CPU_V7VE
>  	bool "ARMv7 Virtualization Extensions Support"
> @@ -135,6 +136,7 @@ config CPU_32v7
>  config CPU_64v8
>  	bool
>  	select CPU_64
> +	select HAS_PBL_CLOCKSOURCE
>  
>  comment "processor features"
>  
> diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
> index 67c4f16f76..796ea6c742 100644
> --- a/arch/arm/lib32/Makefile
> +++ b/arch/arm/lib32/Makefile
> @@ -34,7 +34,7 @@ extra-y += barebox.lds
>  pbl-y	+= lib1funcs.o
>  pbl-y	+= ashldi3.o
>  pbl-y	+= div0.o
> -pbl-$(CONFIG_CPU_32v7)	+= arm_architected_timer.o
> +pbl-$(CONFIG_HAS_PBL_CLOCKSOURCE)	+= arm_architected_timer.o

This change makes arm_architected_timer_udelay() available for builds
which exclusively support ARMv7a, so breaks builds that have ARMv4/5/6
enabled as well.

You could leave pbl-$(CONFIG_CPU_32v7) untouched and put get_time_ns()
inside #ifdef CONFIG_HAS_PBL_CLOCKSOURCE

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



