Delivery-date: Wed, 22 Jan 2025 09:12:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taVr0-002yXh-0Y
	for lore@lore.pengutronix.de;
	Wed, 22 Jan 2025 09:12:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taVr0-0003e7-99
	for lore@pengutronix.de; Wed, 22 Jan 2025 09:12:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JOmf4stZCX0Kg6qZjzucwEm/UXn5iCLt5UUbtvbBx84=; b=40OtthSBRSiRofg7MUqgls6Ac+
	Jrykry01HriU+XGAt2wZ5eMRXEd286rR1oDY5kNgpdTxYnsvR38IEa30+oBoil9d/M2rOd+N9AGVB
	7W6EtW1tvHfN4Wn9R22fzrS8oJ4ARQiCeTw1fOo2FH2x9wY/FVgdzUI/PAqODwRP2/wWqTFZyPzJZ
	uZa1KEVlcM22lX5WmrP/EJdnvUtiGZ6slbXIkbQWXJU1I/tviaWGghcy622sas+P9d7CsR8Uh7kDu
	7y3xshwYzguaopRZ3CoMBuzh/7Ap2qnjyGlFpQjGvoZY5sABQ5yiBl+q83Db7MRhPJSfRv6KtYS+m
	/LWWdbjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taVqZ-00000009gLI-29Bg;
	Wed, 22 Jan 2025 08:12:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taVqW-00000009gK4-0ZVq
	for barebox@lists.infradead.org;
	Wed, 22 Jan 2025 08:12:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1taVqT-0003TP-Gr; Wed, 22 Jan 2025 09:12:17 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1taVqT-001FcI-15;
	Wed, 22 Jan 2025 09:12:17 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1taVqT-007diN-0o;
	Wed, 22 Jan 2025 09:12:17 +0100
Date: Wed, 22 Jan 2025 09:12:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <Z5CoYXwjw7-rDYqJ@pengutronix.de>
References: <20250121-feature-pbl-get-time-ns-v1-0-c3d493397846@pengutronix.de>
 <20250121-feature-pbl-get-time-ns-v1-3-c3d493397846@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250121-feature-pbl-get-time-ns-v1-3-c3d493397846@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_001220_175680_6C44A601 
X-CRM114-Status: GOOD (  21.85  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] pbl: introduce HAS_PBL_CLOCKSOURCE marker
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 21, 2025 at 05:49:28PM +0100, Stefan Kerkmann wrote:
> This finally enables the usage of the polled timeout functions in the
> barebox pbl with real timeouts for supported architectures. Currently
> only ARMv7 and ARMv8 are enabled.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  arch/arm/cpu/Kconfig    | 2 ++
>  arch/arm/lib32/Makefile | 2 +-
>  include/linux/iopoll.h  | 8 ++++----
>  pbl/Kconfig             | 3 +++
>  4 files changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
> index 84fe770b6da892723528eeea89ae2b0eda122d07..3569f3d3483a6289d7a6eca3d1715e06144df8d4 100644
> --- a/arch/arm/cpu/Kconfig
> +++ b/arch/arm/cpu/Kconfig
> @@ -84,6 +84,7 @@ config CPU_V6
>  config CPU_V7
>  	bool
>  	select CPU_32v7
> +	select HAS_PBL_CLOCKSOURCE

Having ARMv7 support enabled doesn't necessarily mean that you are
running on ARMv7.

If you want to got this path then you have to provide a get_time_ns()
symbol for all Arm architetures and decide during runtime if you can use
the architected timer.

Alternatively playing tricks like this might work:

	select HAS_PBL_CLOCKSOURCE if !CPU_32v4T && !CPU_32v5 && !CPU_32v6

(Although this of course gives you timer functionality only when all non
v7 architectures are disabled.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


