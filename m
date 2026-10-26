Delivery-date: Mon, 26 Oct 2026 11:02:50 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLHXW-003SoP-1l
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 11:02:50 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3666B200467
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 11:02:50 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="u72gg/b3";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=YlJrvCFi;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793008970; a=rsa-sha256;
	cv=fail;
	b=U8RqgER3rwNNia8muqHhhsjMh5AScBl/ahEM3CvAJ/bQk3e4xLUg+FWvcezuM8+m+/iQeL
	UzUBB/vNrWFhydreHQnNtBtx2sjComBswM1Vc1wVAiF6LfFOwBt9NzOr9aecTD8vVm5mRw
	Ox+Wa3Cydr5m1Pv5QBwcm9rCINPJLNc7SgPdrWzkGnkvhwXfvJv9peZEyR8Py9WMT5D/2r
	GNV1IgeMY/eEznflnIyIk9bmmm19OZDxxqiTs5Q8V/VQGYLm76qbAQYjWXzGiphqDyi2Fm
	RXGfhLGp5BY3AB1YD9II5r60AN/rbNYY4EDj8T7nP+abksHsZNypB5DGDHMpCg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="u72gg/b3";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=YlJrvCFi;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793008970;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=jfo4L/mzTtV67WZ1k7QhisBcUDMgdI2WtyQyDeW0glI=;
	b=KR0t4j1Xs5vIOFDJsvv5ufbzpNlqx9TMvMsXB/4mtY1XNzk6Klhalck11XtsVd/soMnmTa
	lT+TYeX5PgP82ExvfLAJgxRvF2j9iC2S4l7xqDPwyNdQnl1QqZVAnheif+JOwdUdsQOLy1
	jhaZS1lM5L3TlOi5rPwMkgSeYowQLgs1xbyDj2pQqaC18LXEDaXK2efBCTLgPZ0NPBiAK7
	6529v7xBqIdszHEu3ve4yVmym6oSEttPj8zwi/LoZzdvpCx2gKfO7UOA1vRpov2pGh+541
	QjTXFrvAGcfKI51oJ+kVnHOgl+iD8iPaagn3hwI/AOJHdEU8ln6mUdf0YcNQ4A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jfo4L/mzTtV67WZ1k7QhisBcUDMgdI2WtyQyDeW0glI=; b=u72gg/b3ufxie2P6p5GmZaSikq
	JMdpLojYZecBkxn/L4h+0xrpjmhGEeaHIvmvFxLWH2DTkYpxZUj2d0llG4FWRgjCnwNZWQjkxS49N
	F/S0L8IAKw2yQx73A6kEKnPuZEwMxonfwY6z+rO5g6K5kEjMapa/hXUYJ9OIYZyDwLq0zIgrcdrS1
	iotM8xBmtbKHyHu9e8e2Yaj+PWCTJqPWLv9AMOngujjYAReHxrxgyISajco2js4HMvdWlgA4+P0ju
	Xw7wr5bBz+EA0XYFhG1TWjKQ9Fxn6Z/dvr2DFoIlLXeQXECza+Oin2nf7OTIE5M2oWJ+melEMuvfp
	SvE0IVqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHW9-00000002BPX-2ZbW;
	Mon, 26 Oct 2026 10:01:25 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLHW5-00000002BMp-1Re6
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 10:01:24 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2F45F200467;
	Mon, 26 Oct 2026 11:01:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793008877;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jfo4L/mzTtV67WZ1k7QhisBcUDMgdI2WtyQyDeW0glI=;
	b=YlJrvCFin8hEaJom6ijN+8WcZ3ZT/woxLCLso6vzJv7V7YLp9a/l9VjsBjTXUR1lIReQCX
	hFLTIHkEXNE+39H14Iesx0ChbwQ3BFwgVP0OiX/pi+ISKIqbyqFG2O9NqdenGihBW7DFyB
	npwzha9yUeOV7gN7nn3MYxRjTBN7PBPI+GW55Zl3IJ8WpFe711vlKAdFgWDn59x8IEDz1F
	4UrS5J0xJjXdS3KC53PdzXwZQE7qrE0SM8WJ+0QaVrcG0GgoY5orPL9M/EMtNTwUESepAn
	+PW3OAcgjDsnogipkCeiux4MRS5DMBj5r7WUxfZ1UXgWGQzYWH7ZxHRvVUucYg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793008877; a=rsa-sha256;
	cv=none;
	b=erSeLL6uig1ijuVbAa/Cal1CUoCHzZ7XmJcRbkir9gD80OQXCWuKh8D+TWHx85XDGZK0IG
	L1OI0K0AdqcR3bAtsulSZ7y5W/IyBEP/ghYETR6fxLlYJrDCyY04u8gYPQL0V9wlRUj+KJ
	25EI9hF/gwOP4wYgzu3sKDdM6wln68vLzcVUb6SFDzcNtgK7hOLkcjlwm4oMLwubcoBmHn
	1n+BV1fHDp3yyCepSVhisN+6gOgahJ6frNrIXzmZkSNVMXOgcfPTfzL/AKimTyE6pTNpaL
	jIj9EcnsczZz8CTohjQEdRb+ytYGLeEXXXvSq0sOfk386BgZaFR/aDl4yF2CzA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793008877;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jfo4L/mzTtV67WZ1k7QhisBcUDMgdI2WtyQyDeW0glI=;
	b=RiX91D4233e1T5OSXyANHkRh8J8ghjjYLsfz0YZMU2Q/lR89C8TrEPtzNnnBBXBuINUObZ
	mDWBL7R3uhYV4/M8XCnjOW0Mz27vCBB2U11+yrHcTuwwcJTzC+OkFVfl2C5IYXmxE2Ggcc
	+GrzEbOHFmsbIG5pSDjzpKM6cr3Pq8ec7rx9O5jHlPSGIqiSV5INT+wjhAMYY1KWAcvtD/
	KaPP0k5311atpF4gBTlVzltf15uPlvxQyyXWsFsDau+ADiNUqGqKwzz3ZPH6er++HdZHP6
	QqzIOYzEFrQ9iw+g/+f4l+7pSNVvp2wp+TJ5hn9LAEt7qBYaIlgD6iSoGXdDRg==
Message-ID: <e96c0979-ba2d-4c32-abc4-58cfefe1aff1@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 0/5] kvx: remove architecture support
To: clement.leger@linux.dev
In-Reply-To: <20261023200507.63716-1-clement.leger@linux.dev>
References: <20261023200507.63716-1-clement.leger@linux.dev>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 26 Oct 2026 10:01:16 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_030121_695766_25651088 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Clement, On 2026-10-23 22:05, clement.leger wrote: > From:
    Clément Léger <clement.leger@linux.dev> > > The barebox kvx port was upstreamed
    in the hope it was the first one > of a long series of other contrib [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
Cc: barebox@lists.infradead.org, =?utf-8?b?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@linux.dev>, Ahmad
 Fatoum <a.fatoum@barebox.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 3666B200467
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_RECIPIENTS(0.00)[m:clement.leger@linux.dev,m:barebox@lists.infradead.org,m:a.fatoum@barebox.org,s:lore@pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 1os9yefhhjjzneqb3j56t65ik63r5z41

Hi Clement,

On 2026-10-23 22:05, clement.leger wrote:
> From: Cl=C3=A9ment L=C3=A9ger <clement.leger@linux.dev>
>=20
> The barebox kvx port was upstreamed in the hope it was the first one
> of a long series of other contributions (GCC, Linux, etc).
> Unfortunately, the kvx architecture remained closed and there was no
> public specification nor upstreamed compiler. Additionally, there are
> no users outside of the company itself and there is not possible to
> obtain a board with such SoC. Latest modifications of the architecture
> also made it non compatible with this architecture.
>=20
> As discussed during LPC, there is no point in keeping this
> architecture since it is unmaintained and slows down the effort to get
> Rust support on barebox. Remove the whole architecture support and
> drivers as well.

That's really a pity. I was quite happy to have such an early barebox
support for a new architecture. Given what you say here it makes sense
to drop that support, so I'll apply this being sad about it.

Anyway, thanks for your contributions so far.

Sascha

>=20
> Cl=C3=A9ment L=C3=A9ger (5):
>   drivers: soc: remove KVX support
>   drivers: clocksource: remove KVX timer
>   drivers: nvmem: remove KVX OTP support
>   drivers: watchdog: remove KVX watchdog
>   arch: kvx: remove support
>=20
>  .github/workflows/build-defconfigs.yml |    2 +-
>  Documentation/boards/kvx.rst           |   98 -
>  Documentation/gen_magicvars.py         |   19 -
>  Documentation/user/barebox.rst         |    1 -
>  arch/kvx/Kbuild                        |    5 -
>  arch/kvx/Kconfig                       |   67 -
>  arch/kvx/Kconfig.debug                 |    2 -
>  arch/kvx/Makefile                      |   36 -
>  arch/kvx/configs/generic_defconfig     |   14 -
>  arch/kvx/cpu/Makefile                  |    7 -
>  arch/kvx/cpu/barebox.lds.S             |   88 -
>  arch/kvx/cpu/cpu.c                     |   32 -
>  arch/kvx/cpu/exception.S               |   35 -
>  arch/kvx/cpu/reset.c                   |   68 -
>  arch/kvx/cpu/start.S                   |  198 -
>  arch/kvx/dts/Makefile                  |    7 -
>  arch/kvx/dts/k200.dts                  |  111 -
>  arch/kvx/include/asm/barebox.lds.h     |    6 -
>  arch/kvx/include/asm/barrier.h         |   20 -
>  arch/kvx/include/asm/bitops.h          |   27 -
>  arch/kvx/include/asm/bitsperlong.h     |   12 -
>  arch/kvx/include/asm/byteorder.h       |   12 -
>  arch/kvx/include/asm/cache.h           |   34 -
>  arch/kvx/include/asm/common.h          |   28 -
>  arch/kvx/include/asm/dma.h             |   30 -
>  arch/kvx/include/asm/elf.h             |   21 -
>  arch/kvx/include/asm/ftu.h             |   24 -
>  arch/kvx/include/asm/io.h              |   14 -
>  arch/kvx/include/asm/linkage.h         |   10 -
>  arch/kvx/include/asm/mmu.h             |    8 -
>  arch/kvx/include/asm/posix_types.h     |   12 -
>  arch/kvx/include/asm/privilege.h       |  244 --
>  arch/kvx/include/asm/sections.h        |   12 -
>  arch/kvx/include/asm/setjmp.h          |   17 -
>  arch/kvx/include/asm/sfr.h             |   51 -
>  arch/kvx/include/asm/sfr_defs.h        |   17 -
>  arch/kvx/include/asm/string.h          |   14 -
>  arch/kvx/include/asm/swab.h            |   14 -
>  arch/kvx/include/asm/sys_arch.h        |   49 -
>  arch/kvx/include/asm/types.h           |   14 -
>  arch/kvx/include/asm/unaligned.h       |   17 -
>  arch/kvx/include/asm/v1/sfr_defs.h     | 5027 ----------------------
>  arch/kvx/include/asm/v2/sfr_defs.h     | 5389 ------------------------
>  arch/kvx/include/asm/word-at-a-time.h  |    2 -
>  arch/kvx/lib/Makefile                  |    6 -
>  arch/kvx/lib/asm-offsets.c             |   11 -
>  arch/kvx/lib/board.c                   |  159 -
>  arch/kvx/lib/bootm.c                   |  172 -
>  arch/kvx/lib/cache.c                   |   25 -
>  arch/kvx/lib/cpuinfo.c                 |   20 -
>  arch/kvx/lib/dma-default.c             |   61 -
>  arch/kvx/lib/dtb.c                     |   14 -
>  arch/kvx/lib/poweroff.c                |   56 -
>  arch/kvx/lib/setjmp.S                  |   85 -
>  arch/kvx/um/Makefile                   |    4 -
>  drivers/clocksource/Kconfig            |    4 -
>  drivers/clocksource/Makefile           |    1 -
>  drivers/clocksource/kvx_timer.c        |   60 -
>  drivers/nvmem/Kconfig                  |    7 -
>  drivers/nvmem/Makefile                 |    3 -
>  drivers/nvmem/kvx-otp-nv.c             |   95 -
>  drivers/of/Kconfig                     |    2 +-
>  drivers/soc/Kconfig                    |    1 -
>  drivers/soc/Makefile                   |    1 -
>  drivers/soc/kvx/Kconfig                |   10 -
>  drivers/soc/kvx/Makefile               |    1 -
>  drivers/soc/kvx/kvx_socinfo.c          |  178 -
>  drivers/watchdog/Kconfig               |   17 -
>  drivers/watchdog/Makefile              |    1 -
>  drivers/watchdog/kvx_wdt.c             |  109 -
>  test/Containerfile                     |    7 -
>  test/kvx/generic_defconfig.yaml        |   17 -
>  72 files changed, 2 insertions(+), 13040 deletions(-)
>  delete mode 100644 Documentation/boards/kvx.rst
>  delete mode 100644 arch/kvx/Kbuild
>  delete mode 100644 arch/kvx/Kconfig
>  delete mode 100644 arch/kvx/Kconfig.debug
>  delete mode 100644 arch/kvx/Makefile
>  delete mode 100644 arch/kvx/configs/generic_defconfig
>  delete mode 100644 arch/kvx/cpu/Makefile
>  delete mode 100644 arch/kvx/cpu/barebox.lds.S
>  delete mode 100644 arch/kvx/cpu/cpu.c
>  delete mode 100644 arch/kvx/cpu/exception.S
>  delete mode 100644 arch/kvx/cpu/reset.c
>  delete mode 100644 arch/kvx/cpu/start.S
>  delete mode 100644 arch/kvx/dts/Makefile
>  delete mode 100644 arch/kvx/dts/k200.dts
>  delete mode 100644 arch/kvx/include/asm/barebox.lds.h
>  delete mode 100644 arch/kvx/include/asm/barrier.h
>  delete mode 100644 arch/kvx/include/asm/bitops.h
>  delete mode 100644 arch/kvx/include/asm/bitsperlong.h
>  delete mode 100644 arch/kvx/include/asm/byteorder.h
>  delete mode 100644 arch/kvx/include/asm/cache.h
>  delete mode 100644 arch/kvx/include/asm/common.h
>  delete mode 100644 arch/kvx/include/asm/dma.h
>  delete mode 100644 arch/kvx/include/asm/elf.h
>  delete mode 100644 arch/kvx/include/asm/ftu.h
>  delete mode 100644 arch/kvx/include/asm/io.h
>  delete mode 100644 arch/kvx/include/asm/linkage.h
>  delete mode 100644 arch/kvx/include/asm/mmu.h
>  delete mode 100644 arch/kvx/include/asm/posix_types.h
>  delete mode 100644 arch/kvx/include/asm/privilege.h
>  delete mode 100644 arch/kvx/include/asm/sections.h
>  delete mode 100644 arch/kvx/include/asm/setjmp.h
>  delete mode 100644 arch/kvx/include/asm/sfr.h
>  delete mode 100644 arch/kvx/include/asm/sfr_defs.h
>  delete mode 100644 arch/kvx/include/asm/string.h
>  delete mode 100644 arch/kvx/include/asm/swab.h
>  delete mode 100644 arch/kvx/include/asm/sys_arch.h
>  delete mode 100644 arch/kvx/include/asm/types.h
>  delete mode 100644 arch/kvx/include/asm/unaligned.h
>  delete mode 100644 arch/kvx/include/asm/v1/sfr_defs.h
>  delete mode 100644 arch/kvx/include/asm/v2/sfr_defs.h
>  delete mode 100644 arch/kvx/include/asm/word-at-a-time.h
>  delete mode 100644 arch/kvx/lib/Makefile
>  delete mode 100644 arch/kvx/lib/asm-offsets.c
>  delete mode 100644 arch/kvx/lib/board.c
>  delete mode 100644 arch/kvx/lib/bootm.c
>  delete mode 100644 arch/kvx/lib/cache.c
>  delete mode 100644 arch/kvx/lib/cpuinfo.c
>  delete mode 100644 arch/kvx/lib/dma-default.c
>  delete mode 100644 arch/kvx/lib/dtb.c
>  delete mode 100644 arch/kvx/lib/poweroff.c
>  delete mode 100644 arch/kvx/lib/setjmp.S
>  delete mode 100644 arch/kvx/um/Makefile
>  delete mode 100644 drivers/clocksource/kvx_timer.c
>  delete mode 100644 drivers/nvmem/kvx-otp-nv.c
>  delete mode 100644 drivers/soc/kvx/Kconfig
>  delete mode 100644 drivers/soc/kvx/Makefile
>  delete mode 100644 drivers/soc/kvx/kvx_socinfo.c
>  delete mode 100644 drivers/watchdog/kvx_wdt.c
>  delete mode 100644 test/kvx/generic_defconfig.yaml
>=20
> --=20
> 2.55.0
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



