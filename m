Delivery-date: Fri, 23 Oct 2026 22:06:57 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xKLXT-002OQe-2p
	for lore@lore.pengutronix.de;
	Fri, 23 Oct 2026 22:06:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AC4C6202950
	for <lore@pengutronix.de>; Fri, 23 Oct 2026 22:06:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Krn+uURu;
	dkim=pass header.d=linux.dev header.s=key1 header.b=DVxoMZG9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=linux.dev
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792786016; a=rsa-sha256;
	cv=none;
	b=M9QIfk5mnnFmncZy8oFpRQePLOorJsjTHV+Jl2ZFrTNdlPbtTwELXkt9EDzXSrF/S2gfT9
	hNsYXHAb1k564IvvajA344nK0hCaiZjiOnCZnIlkOWo9ru8WCIiMqxMM1avjpfAHxjAHWr
	CeoN3kCquVMYAiL50ZonZlEM+XyNOltuiHn+1znMh3WZ3QxSYkBZyFHeZ5zsoLThKWUyg6
	hCQfiz6DThxMznHh1P6Ts0v9cpW5NWvN97DckZO29HJqA69TtRln0G9PILrxXSiKZeY335
	dstBs7i0l7UjGtC5MdklbUGdlVvTj3l/j1SmX61Hdz10i15GdBpAOPK92upBgg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Krn+uURu;
	dkim=pass header.d=linux.dev header.s=key1 header.b=DVxoMZG9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=linux.dev
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792786016;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=z1LVQ6w4olAELoDgj0MAQqNf21xCAnXGEAW+YvOehWs=;
	b=KOhkjjroozoIfLxL03ilj5kMNi1EgVaQKnlzpM3nJBE93vscQBtYKq7q4P06Uau3NY/jD/
	2ku7k0j1TWEyF7fTrxkaeVfIXBKgyEDLdyoLlhq5ZbcIQ1jdQvsdnm7q9SWahv9Ut2hW9X
	zxNNxGPk9+4of8/OnnQMfZf2D7Y9cj6Rd+JmJSCzciXGocGHpU87zz6iAL8WgEaR1pPa36
	HoDFmb7FlhHxb/tUyvghkMCHkrPPPngWrb3k2RUMXdp9vh3DucgzoLuQHgsmiw7tDQ1h81
	ncMbAqaUrFDEPV+s9ljjTBpNCF2h2e6qshZVM8F2MzVVM617Tb4iEnMBh1qaQA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=z1LVQ6w4olAELoDgj0MAQqNf21xCAnXGEAW+YvOehWs=; b=Krn+uURuHW8UJv/kwd58Pdl8It
	M0DBfBibNE+EQ0dLTLeF+NQJYSNUpPRtD98pvq7wyqwqy0zRQCxa5vnJIthJmW71FRxUH94I4pgMD
	nruKYM0EyYOW3QSBojUCorZz331KpOOCIdEkssVoivgnT4rvuFl+1yFajgRRD7HQ/bdRkLx1IUEna
	LGMhQvWJwDfFlKsQtsmrkfUfHG0zOhHTelAoYcMpeVv6yVes9AZGGJy84LpzmivfNbNUDfpL9sdvW
	kU5lIUq8OmRVXVT4DOVBEXuJBvqRnbLEaI9wJeEcpqkAhMppvA1wvJKNpIGHFzZniFwB5QlZc42s7
	tbJ5rVeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLWA-0000000GuBI-3AcM;
	Fri, 23 Oct 2026 20:05:34 +0000
Received: from out-116.mta1.migadu.com ([95.215.58.116] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLVu-0000000Gu9W-0gyL
	for barebox@lists.infradead.org;
	Fri, 23 Oct 2026 20:05:20 +0000
X-Envelope-To: barebox@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=7j5zG+uIInX4Ysqg3OwOPcfee7KchaATV45fJndLp6o=;
 c=simple/simple; d=linux.dev;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1792785912; v=1; x=1793390712;
 b=DVxoMZG9Tu5rO/urdJHTAnGMfBBM+uVWxi8rAv5U+vBbO25katjoO617jY1L9HV0DtPWHiyr
 SRuAYJm4qwqF7pWxyBO7Jvk+wmkG/L36gIzEbu8mFOh6nMBmDcJQLZtTqZxC8V52xDmtt2KNztH
 Ob8GQ2+6RSQ6LOiq7xrVI7ic=
X-Envelope-To: barebox@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id cdf80ca67118db0c;
	Fri, 23 Oct 2026 20:05:12 +0000
X-Mizu-Trace-ID: cdf80ca67118db0c
X-Migadu-Flow: FLOW_OUT
From: clement.leger@linux.dev
To: Sascha Hauer <s.hauer@pengutronix.de>,
	barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@linux.dev>
Subject: [PATCH 0/5] kvx: remove architecture support
Date: Fri, 23 Oct 2026 22:05:02 +0200
Message-ID: <20261023200507.63716-1-clement.leger@linux.dev>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_130518_518671_F7AD0AD0 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Clément Léger <clement.leger@linux.dev> The barebox
    kvx port was upstreamed in the hope it was the first one of a long series
    of other contributions (GCC, Linux, etc). Unfortunately, the kvx architecture
    remained closed and there was no pub [...] 
 
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
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: AC4C6202950
X-Spamd-Result: default: False [-6.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,linux.dev:s=key1];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[clement.leger@linux.dev,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	FROM_NO_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	DKIM_TRACE(0.00)[lists.infradead.org:+,linux.dev:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clement.leger@linux.dev,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de]
X-Rspamd-Action: no action
X-Stat-Signature: xwq95n6nk4pbspsddj3hjha6skkjya9b

From: Clément Léger <clement.leger@linux.dev>

The barebox kvx port was upstreamed in the hope it was the first one
of a long series of other contributions (GCC, Linux, etc).
Unfortunately, the kvx architecture remained closed and there was no
public specification nor upstreamed compiler. Additionally, there are
no users outside of the company itself and there is not possible to
obtain a board with such SoC. Latest modifications of the architecture
also made it non compatible with this architecture.

As discussed during LPC, there is no point in keeping this
architecture since it is unmaintained and slows down the effort to get
Rust support on barebox. Remove the whole architecture support and
drivers as well.

Clément Léger (5):
  drivers: soc: remove KVX support
  drivers: clocksource: remove KVX timer
  drivers: nvmem: remove KVX OTP support
  drivers: watchdog: remove KVX watchdog
  arch: kvx: remove support

 .github/workflows/build-defconfigs.yml |    2 +-
 Documentation/boards/kvx.rst           |   98 -
 Documentation/gen_magicvars.py         |   19 -
 Documentation/user/barebox.rst         |    1 -
 arch/kvx/Kbuild                        |    5 -
 arch/kvx/Kconfig                       |   67 -
 arch/kvx/Kconfig.debug                 |    2 -
 arch/kvx/Makefile                      |   36 -
 arch/kvx/configs/generic_defconfig     |   14 -
 arch/kvx/cpu/Makefile                  |    7 -
 arch/kvx/cpu/barebox.lds.S             |   88 -
 arch/kvx/cpu/cpu.c                     |   32 -
 arch/kvx/cpu/exception.S               |   35 -
 arch/kvx/cpu/reset.c                   |   68 -
 arch/kvx/cpu/start.S                   |  198 -
 arch/kvx/dts/Makefile                  |    7 -
 arch/kvx/dts/k200.dts                  |  111 -
 arch/kvx/include/asm/barebox.lds.h     |    6 -
 arch/kvx/include/asm/barrier.h         |   20 -
 arch/kvx/include/asm/bitops.h          |   27 -
 arch/kvx/include/asm/bitsperlong.h     |   12 -
 arch/kvx/include/asm/byteorder.h       |   12 -
 arch/kvx/include/asm/cache.h           |   34 -
 arch/kvx/include/asm/common.h          |   28 -
 arch/kvx/include/asm/dma.h             |   30 -
 arch/kvx/include/asm/elf.h             |   21 -
 arch/kvx/include/asm/ftu.h             |   24 -
 arch/kvx/include/asm/io.h              |   14 -
 arch/kvx/include/asm/linkage.h         |   10 -
 arch/kvx/include/asm/mmu.h             |    8 -
 arch/kvx/include/asm/posix_types.h     |   12 -
 arch/kvx/include/asm/privilege.h       |  244 --
 arch/kvx/include/asm/sections.h        |   12 -
 arch/kvx/include/asm/setjmp.h          |   17 -
 arch/kvx/include/asm/sfr.h             |   51 -
 arch/kvx/include/asm/sfr_defs.h        |   17 -
 arch/kvx/include/asm/string.h          |   14 -
 arch/kvx/include/asm/swab.h            |   14 -
 arch/kvx/include/asm/sys_arch.h        |   49 -
 arch/kvx/include/asm/types.h           |   14 -
 arch/kvx/include/asm/unaligned.h       |   17 -
 arch/kvx/include/asm/v1/sfr_defs.h     | 5027 ----------------------
 arch/kvx/include/asm/v2/sfr_defs.h     | 5389 ------------------------
 arch/kvx/include/asm/word-at-a-time.h  |    2 -
 arch/kvx/lib/Makefile                  |    6 -
 arch/kvx/lib/asm-offsets.c             |   11 -
 arch/kvx/lib/board.c                   |  159 -
 arch/kvx/lib/bootm.c                   |  172 -
 arch/kvx/lib/cache.c                   |   25 -
 arch/kvx/lib/cpuinfo.c                 |   20 -
 arch/kvx/lib/dma-default.c             |   61 -
 arch/kvx/lib/dtb.c                     |   14 -
 arch/kvx/lib/poweroff.c                |   56 -
 arch/kvx/lib/setjmp.S                  |   85 -
 arch/kvx/um/Makefile                   |    4 -
 drivers/clocksource/Kconfig            |    4 -
 drivers/clocksource/Makefile           |    1 -
 drivers/clocksource/kvx_timer.c        |   60 -
 drivers/nvmem/Kconfig                  |    7 -
 drivers/nvmem/Makefile                 |    3 -
 drivers/nvmem/kvx-otp-nv.c             |   95 -
 drivers/of/Kconfig                     |    2 +-
 drivers/soc/Kconfig                    |    1 -
 drivers/soc/Makefile                   |    1 -
 drivers/soc/kvx/Kconfig                |   10 -
 drivers/soc/kvx/Makefile               |    1 -
 drivers/soc/kvx/kvx_socinfo.c          |  178 -
 drivers/watchdog/Kconfig               |   17 -
 drivers/watchdog/Makefile              |    1 -
 drivers/watchdog/kvx_wdt.c             |  109 -
 test/Containerfile                     |    7 -
 test/kvx/generic_defconfig.yaml        |   17 -
 72 files changed, 2 insertions(+), 13040 deletions(-)
 delete mode 100644 Documentation/boards/kvx.rst
 delete mode 100644 arch/kvx/Kbuild
 delete mode 100644 arch/kvx/Kconfig
 delete mode 100644 arch/kvx/Kconfig.debug
 delete mode 100644 arch/kvx/Makefile
 delete mode 100644 arch/kvx/configs/generic_defconfig
 delete mode 100644 arch/kvx/cpu/Makefile
 delete mode 100644 arch/kvx/cpu/barebox.lds.S
 delete mode 100644 arch/kvx/cpu/cpu.c
 delete mode 100644 arch/kvx/cpu/exception.S
 delete mode 100644 arch/kvx/cpu/reset.c
 delete mode 100644 arch/kvx/cpu/start.S
 delete mode 100644 arch/kvx/dts/Makefile
 delete mode 100644 arch/kvx/dts/k200.dts
 delete mode 100644 arch/kvx/include/asm/barebox.lds.h
 delete mode 100644 arch/kvx/include/asm/barrier.h
 delete mode 100644 arch/kvx/include/asm/bitops.h
 delete mode 100644 arch/kvx/include/asm/bitsperlong.h
 delete mode 100644 arch/kvx/include/asm/byteorder.h
 delete mode 100644 arch/kvx/include/asm/cache.h
 delete mode 100644 arch/kvx/include/asm/common.h
 delete mode 100644 arch/kvx/include/asm/dma.h
 delete mode 100644 arch/kvx/include/asm/elf.h
 delete mode 100644 arch/kvx/include/asm/ftu.h
 delete mode 100644 arch/kvx/include/asm/io.h
 delete mode 100644 arch/kvx/include/asm/linkage.h
 delete mode 100644 arch/kvx/include/asm/mmu.h
 delete mode 100644 arch/kvx/include/asm/posix_types.h
 delete mode 100644 arch/kvx/include/asm/privilege.h
 delete mode 100644 arch/kvx/include/asm/sections.h
 delete mode 100644 arch/kvx/include/asm/setjmp.h
 delete mode 100644 arch/kvx/include/asm/sfr.h
 delete mode 100644 arch/kvx/include/asm/sfr_defs.h
 delete mode 100644 arch/kvx/include/asm/string.h
 delete mode 100644 arch/kvx/include/asm/swab.h
 delete mode 100644 arch/kvx/include/asm/sys_arch.h
 delete mode 100644 arch/kvx/include/asm/types.h
 delete mode 100644 arch/kvx/include/asm/unaligned.h
 delete mode 100644 arch/kvx/include/asm/v1/sfr_defs.h
 delete mode 100644 arch/kvx/include/asm/v2/sfr_defs.h
 delete mode 100644 arch/kvx/include/asm/word-at-a-time.h
 delete mode 100644 arch/kvx/lib/Makefile
 delete mode 100644 arch/kvx/lib/asm-offsets.c
 delete mode 100644 arch/kvx/lib/board.c
 delete mode 100644 arch/kvx/lib/bootm.c
 delete mode 100644 arch/kvx/lib/cache.c
 delete mode 100644 arch/kvx/lib/cpuinfo.c
 delete mode 100644 arch/kvx/lib/dma-default.c
 delete mode 100644 arch/kvx/lib/dtb.c
 delete mode 100644 arch/kvx/lib/poweroff.c
 delete mode 100644 arch/kvx/lib/setjmp.S
 delete mode 100644 arch/kvx/um/Makefile
 delete mode 100644 drivers/clocksource/kvx_timer.c
 delete mode 100644 drivers/nvmem/kvx-otp-nv.c
 delete mode 100644 drivers/soc/kvx/Kconfig
 delete mode 100644 drivers/soc/kvx/Makefile
 delete mode 100644 drivers/soc/kvx/kvx_socinfo.c
 delete mode 100644 drivers/watchdog/kvx_wdt.c
 delete mode 100644 test/kvx/generic_defconfig.yaml

-- 
2.55.0



