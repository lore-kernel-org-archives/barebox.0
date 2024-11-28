Delivery-date: Thu, 28 Nov 2024 10:09:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGaWD-001OKx-2z
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 10:09:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGaWD-0001JW-R2
	for lore@pengutronix.de; Thu, 28 Nov 2024 10:09:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A7IZQ2GeY5BJw0wk+ZA3MTL1DW5RGl37pynzoB8ntbY=; b=yAlHfAJcjeXxXhVDUnDPlG6Im+
	gGP6JhBt4Y4K5k5O3IzCXTOjSKikfqMA490SEcYA6yOlsERvYSriO4kVaWukjmTNsyiSCHSYjgjtg
	EY/jzlVlg/wKAQgDcSVC0mNaRw8TgMKqkNFa4DB4iTiZloynJXQZKxkb/IFzzXekcyYCPNkAek12j
	bBtSMuOoLxJjlS5NWR8KpumaIWbys5X+svP6PX6F3XXGAT8mGVho/nftP9P9K3eu72D/y4+CTTcuN
	yTAeA4Cup52A+ztNi1JcjmnEccHyMv0Pb1eDvp6mSpfbFhZPxGe2ON7Oq66Ryol7yrQukBezFSm3G
	7wvWvcYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaVn-0000000F77U-1mlZ;
	Thu, 28 Nov 2024 09:08:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaVl-0000000F76k-3JXg
	for barebox@bombadil.infradead.org;
	Thu, 28 Nov 2024 09:08:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=A7IZQ2GeY5BJw0wk+ZA3MTL1DW5RGl37pynzoB8ntbY=; b=fdbTtCFSsOSheP+mkmQR+K9dp/
	RQj8B3EzteYmITwz0N2++yJkq4xmPWFveyCESEzp03W6xLYmjb7+6zkWJz6XoAzXZ49OYE/Q32IUV
	3m0KqmX47StstanDUblzNHINNRgiYs0Iekar0IDHD2vjoc0ilM9gDbxJRcN2XNHLJu1xcllTmAHog
	nhWArBlc4gUwyWVAQMiYz6LW729VL57s0PV8oBeeGOjKdAMS4CUn7xQOaObCQudrHR2dXLHI81s9M
	cVW1hsBwLENuwvapqHh61gUAB80/Ona2Q9Kdcdo5Dng6aneM60SrsE+MZOILdpzk1GVe2ENEwtwoe
	kIn5W5Dg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaVi-00000001Zj9-3osc
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 09:08:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tGaVU-00017q-Hk; Thu, 28 Nov 2024 10:08:16 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tGaVT-000aHU-1u;
	Thu, 28 Nov 2024 10:08:16 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tGaVU-002qTc-0r;
	Thu, 28 Nov 2024 10:08:16 +0100
Date: Thu, 28 Nov 2024 10:08:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z0gzAEmURo3Iv5Cn@pengutronix.de>
References: <20241125152024.477375-1-a.fatoum@pengutronix.de>
 <20241125152024.477375-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241125152024.477375-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_090831_012902_8FBAC3DE 
X-CRM114-Status: GOOD (  20.21  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] hardening: support zeroing all malloc buffers by
 default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 25, 2024 at 04:20:21PM +0100, Ahmad Fatoum wrote:
> dummy malloc doesn't free and all allocations are in freshly sbrk()'d
> memory, which already zero.
> 
> +config INIT_ON_ALLOC_DEFAULT_ON
> +	bool "Enable heap memory zeroing on allocation by default"
> +	depends on !MALLOC_LIBC
> +	help
> +	  This has the effect of setting "init_on_alloc=1" on the kernel
> +	  command line. This can be disabled with "init_on_alloc=0".
> +	  When "init_on_alloc" is enabled, all page allocator and slab
> +	  allocator memory will be zeroed when allocated, eliminating
> +	  many kinds of "uninitialized heap memory" flaws, especially
> +	  heap content exposures. The performance impact varies by
> +	  workload, but most cases see <1% impact. Some synthetic
> +	  workloads have measured as high as 7%.
> +
> +config INIT_ON_FREE_DEFAULT_ON
> +	bool "Enable heap memory zeroing on free by default"
> +	depends on !MALLOC_DUMMY && !MALLOC_LIBC
> +	help
> +	  This has the effect of setting "init_on_free=1" on the kernel
> +	  command line. This can be disabled with "init_on_free=0".
> +	  Similar to "init_on_alloc", when "init_on_free" is enabled,
> +	  all page allocator and slab allocator memory will be zeroed
> +	  when freed, eliminating many kinds of "uninitialized heap memory"
> +	  flaws, especially heap content exposures. The primary difference
> +	  with "init_on_free" is that data lifetime in memory is reduced,
> +	  as anything freed is wiped immediately, making live forensics or
> +	  cold boot memory attacks unable to recover freed memory contents.
> +	  The performance impact varies by workload, but is more expensive
> +	  than "init_on_alloc" due to the negative cache effects of
> +	  touching "cold" memory areas. Most cases see 3-5% impact. Some
> +	  synthetic workloads have measured as high as 8%.

These verbatim copies of the kernel help texts do not seem appropriate
for barebox.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


