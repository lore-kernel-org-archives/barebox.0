Delivery-date: Tue, 26 May 2026 08:18:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRl7d-003uSa-29
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 08:18:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRl7c-0001Jp-VB
	for lore@pengutronix.de; Tue, 26 May 2026 08:18:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=d40zaBqnyK64KF8mOOuIv8sVH/DF0fsVsM98G1tZjac=; b=J0edAuGsVQFuHR6cmbuN5PWABX
	jOgiKBlqOySV99yfCLrR4hqZB2eM1Xs5LUo9NQHePuXp5U0PLVDaLUS0z80ufxxnkITVf0mK03FwI
	nhmzTj+BLdiaz2YFhh4X9IyqshZGim/hJpq4eTomDjtM3/ecGbE4HxV+txikTbK9NqUVA5xI7QTo8
	gNSN36c2+rWoFpXzkvSsX/AM+AK5yTTMXvtmzVRDBGxitRz4FVbcXIZcgH8AkNRVHtFdYOHYIfLB9
	gi68R2MTsDC/MZaDNNhWXSFctqaKwMh24pjjjnkUijUouHGhv83HuF+1zfMAGtA0M0QWnrW/5zmkB
	TsRX0NMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRl6V-00000001975-1G7u;
	Tue, 26 May 2026 06:17:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRl6S-0000000196b-0bKy
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:17:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wRl6P-0001BW-DU; Tue, 26 May 2026 08:17:21 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wRl6O-001s3G-2Z;
	Tue, 26 May 2026 08:17:21 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wRl6P-0000000GF1E-191b;
	Tue, 26 May 2026 08:17:21 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <20260522105852.2681680-4-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 May 2026 06:17:21 +0000
Message-Id: <E1wRl6P-0000000GF1E-191b@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_231724_231334_B2A213E5 
X-CRM114-Status: GOOD (  20.62  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 3/6] arch: introduce CONFIG_MALLOC_OFFSET
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-22 12:53, Ahmad Fatoum wrote:
> +config MALLOC_OFFSET
> +	hex
> +	default 0
> +	prompt "relative malloc base offset (optional)"
> +	depends on ARCH_HAS_MALLOC_OFFSET
> +	help
> +	  Most boards should just leave this at the default zero and barebox
> +	  will dynamically determine the start of its eventual malloc area.
> +	  The currently employed heuristic is:
> +
> +	    - if the prebootloader reports 2GiB of initial memory or more,
> +	      start the malloc area at offset 1GiB from initial memory end.
> +
> +	    - otherwise, start the malloc area at middle of initial memory
> +
> +	  The malloc area is used for dynamic allocations by barebox, e.g.
> +	  to uncompress a kernel. The placement of final boot artifacts happens
> +	  outside of the malloc area and is not restricted to the initial
> +	  memory reported by the prebootloader.
> +
> +	  As this heuristic may not be suitable for devices with tight memory
> +	  constraints, setting a non-zero value here allows customizing the
> +	  offset used to start the malloc area.
> +
> +	  The MALLOC_OFFSET is calculated from end of initial memory to start
> +	  of the malloc area

I read the term offset as something added to the start of something, not
substracted from an end of something.

Maybe MALLOC_OFFSET should be exactly that: The offset between start of
DRAM and start of the malloc area. On a memory constrained hardware with
different DRAM sizes that's also likely the value you want to keep
constant as its given by your Kernel/initrd image size.

Other than that maybe the term we should talk about here is the area
that we use for barebox internal use and the area that's left for
placing the OS. Whether or not we start the malloc area at that boundary
isn't the point.

Something like BAREBOX_MEMORY_OFFSET:

config BAREBOX_MEMORY_OFFSET
        hex "barebox runtime memory offset"
        default 0x0
        help
          Offset from the start of DRAM at which the barebox runtime
          region begins. DRAM below this offset is reserved as the OS
          load region, used for staging the kernel, initrd and device
          tree before boot. barebox itself =E2=80=94 the relocated binary, =
BSS,
          stack and malloc arena =E2=80=94 lives at and above this offset a=
nd
          will not allocate into the OS load region.

          Set this large enough to hold the biggest OS image you expect
          to boot, plus initrd and DTB.

          A value of 0 selects the default split, which divides DRAM
          into two equal halves: the lower half for the OS load region
          and the upper half for the barebox runtime region. This is
          suitable for most boards with modern DRAM sizes.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


