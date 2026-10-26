Delivery-date: Mon, 26 Oct 2026 16:30:15 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLMeK-003Yf3-2s
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 16:30:15 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B2F48202920
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 16:30:08 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UkUThDXI;
	dkim=pass header.d=linux.dev header.s=key1 header.b=FAjOCGvH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=linux.dev
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793028609; a=rsa-sha256;
	cv=none;
	b=ECh7b12hJW11bxPEc+V5t0eSIR073e7+J3ELppeauTco4CtZzveyitXJcDeQdUMlDzJ+gN
	vfcbjCdP/5tFhly58Hcf53XyY1USmU/vgaiz4AQ+4iTYhrTPA92PYse2XsgX/NWLEwFHM2
	pmeO1WNEGmKjNcsjCt4PWkyx4ha6tFkn62FVSDEi4tgk4ChRfT93wYyeZebcLTocvJUWGA
	7o9DxtFUbKffBQucI7T7epKavwu2iGbWJcNIGSIxxk/yrOT92k71O29wcbEQKUn/lNJ2z4
	JRSPy6tsjdCrriMxW4qGZAwNa6DgZnPlpJeuSoA/qGeBN0ue1wTcg4/P9xipQw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UkUThDXI;
	dkim=pass header.d=linux.dev header.s=key1 header.b=FAjOCGvH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=linux.dev
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793028609;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=iVUYSTo1S4hidAuZGNBja2pCf1D/XJL5zt8JiJTxJ6k=;
	b=XXrK+MBScDJ01Yo9S9H1k49ivOuk6GLxC8nSoccyesoBG4J5oq2ANp6Cx8Cwil64jQ9Nr7
	l3CF4nwTfbFcujfs4IJ3XZYobxbSZrfthr5FYxB7z2wIZUgoo4kF7CW+vUzgiryAafuawr
	xmtOMBF3zLAnjdC7fwppmmYJXAVituO3ob6+Wx94qJw2uYnQMsK8QtJBbtVRfr1bOiPuVV
	VFVO3+cEI6FBF8jKgM7Alp9Kr7dBKqitOugGo8ws+P/RmUOGmr9jBwOt9a0pBtqnN2y8cH
	t8rUVw4nDs/DRzoWSFEoO5XPvwGnp7aukR/LgXLFLfwqdcNNL8w+pslWasfG0A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=iVUYSTo1S4hidAuZGNBja2pCf1D/XJL5zt8JiJTxJ6k=; b=UkUThDXIxX6RXH
	qL2+xD8mSYbQYv5OTEyv9xKvdgCMAWpeyv82jE8Ed8VEYluKzbeAlzIyUZpDcP3yiyBDkCqJfxZSA
	jjm11othvNCDofg3eLgiq80zT0Xz3CBheXyvVHbUWXGDvIdWXlzELoPj4XnqZUozHDaNotN9lBNdE
	UMHr0aigdJ2siRou4xmyP0gSd2GEbLEDzmwM7Pk+bat8xcSOuCIhbOyDc8wLUNQg0Axa8vFH1ZANA
	ibHH1Ik/oXeeb6H56LPcm6xZpt/9l5/kw3Dha1uSvV7LTD81tCy4SF6uE6xFx+kDU2OR7d7ZAxItm
	/hXoSkXdoEJZc6GnxIcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLMcl-00000002lRo-0i9I;
	Mon, 26 Oct 2026 15:28:35 +0000
Received: from out-66.mta1.migadu.com ([2001:41d0:203:375::42] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLMcg-00000002lQL-1QTa
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 15:28:33 +0000
X-Envelope-To: barebox@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=cOeO+Gke0LNKWazcjl1Ydl0wOH15SD74TUKTdEQ5vjI=;
 c=simple/simple; d=linux.dev;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1793028507; v=1; x=1793633307;
 b=FAjOCGvHDBUj0VbsY+xTq5Tn32pGWl+05MtiQ1aiC7VlBR9uopU2UR9sHeQyXLuFClDCfSDH
 +kmyZXX1ZOYCNFv+9NS42FzOcXreWTzlN8+Dck5V1hZEuybgoeVsea5W3kCgS5uD0NN0kYT1jUw
 iMYCZMSwziiMmtAMbkRVjsA4=
X-Envelope-To: barebox@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id c4b2b8e2f7ecaffc;
	Mon, 26 Oct 2026 15:28:27 +0000
X-Mizu-Trace-ID: c4b2b8e2f7ecaffc
X-Migadu-Flow: FLOW_OUT
Message-ID: <3d00a652-20f2-4b62-8c30-0ce61f8cdefb@linux.dev>
Date: Mon, 26 Oct 2026 16:28:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] kvx: remove architecture support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
References: <20261023200507.63716-1-clement.leger@linux.dev>
 <e96c0979-ba2d-4c32-abc4-58cfefe1aff1@pengutronix.de>
Content-Language: en-US
From: Clement Leger <clement.leger@linux.dev>
In-Reply-To: <e96c0979-ba2d-4c32-abc4-58cfefe1aff1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_082830_530052_CB30CB7F 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/26/26 11:01, Sascha Hauer wrote: > Hi Clement, > >
   On 2026-10-23 22:05, clement.leger wrote: >> From: Clément Léger <clement.leger@linux.dev>
    >> >> The barebox kvx port was upstreamed in the h [...] 
 
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
X-Rspamd-Queue-Id: B2F48202920
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,linux.dev:s=key1];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[clement.leger@linux.dev,barebox-bounces@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[clement.leger@linux.dev,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,linux.dev:+]
X-Rspamd-Action: no action
X-Stat-Signature: wsanaqa3fg8f6nckcow6n3hkifkgfx6h



On 10/26/26 11:01, Sascha Hauer wrote:
> Hi Clement,
> 
> On 2026-10-23 22:05, clement.leger wrote:
>> From: Clément Léger <clement.leger@linux.dev>
>>
>> The barebox kvx port was upstreamed in the hope it was the first one
>> of a long series of other contributions (GCC, Linux, etc).
>> Unfortunately, the kvx architecture remained closed and there was no
>> public specification nor upstreamed compiler. Additionally, there are
>> no users outside of the company itself and there is not possible to
>> obtain a board with such SoC. Latest modifications of the architecture
>> also made it non compatible with this architecture.
>>
>> As discussed during LPC, there is no point in keeping this
>> architecture since it is unmaintained and slows down the effort to get
>> Rust support on barebox. Remove the whole architecture support and
>> drivers as well.
> 
> That's really a pity. I was quite happy to have such an early barebox
> support for a new architecture. Given what you say here it makes sense
> to drop that support, so I'll apply this being sad about it.

Hi Sascha,

Indeed, that's a pity. I guess the developer will to upstream an entire 
architecture support is not sufficient to make it a reality.

Clément

> 
> Anyway, thanks for your contributions so far.
> 
> Sascha
> 
>>
>> Clément Léger (5):
>>    drivers: soc: remove KVX support
>>    drivers: clocksource: remove KVX timer
>>    drivers: nvmem: remove KVX OTP support
>>    drivers: watchdog: remove KVX watchdog
>>    arch: kvx: remove support
>>
>>   .github/workflows/build-defconfigs.yml |    2 +-
>>   Documentation/boards/kvx.rst           |   98 -
>>   Documentation/gen_magicvars.py         |   19 -
>>   Documentation/user/barebox.rst         |    1 -
>>   arch/kvx/Kbuild                        |    5 -
>>   arch/kvx/Kconfig                       |   67 -
>>   arch/kvx/Kconfig.debug                 |    2 -
>>   arch/kvx/Makefile                      |   36 -
>>   arch/kvx/configs/generic_defconfig     |   14 -
>>   arch/kvx/cpu/Makefile                  |    7 -
>>   arch/kvx/cpu/barebox.lds.S             |   88 -
>>   arch/kvx/cpu/cpu.c                     |   32 -
>>   arch/kvx/cpu/exception.S               |   35 -
>>   arch/kvx/cpu/reset.c                   |   68 -
>>   arch/kvx/cpu/start.S                   |  198 -
>>   arch/kvx/dts/Makefile                  |    7 -
>>   arch/kvx/dts/k200.dts                  |  111 -
>>   arch/kvx/include/asm/barebox.lds.h     |    6 -
>>   arch/kvx/include/asm/barrier.h         |   20 -
>>   arch/kvx/include/asm/bitops.h          |   27 -
>>   arch/kvx/include/asm/bitsperlong.h     |   12 -
>>   arch/kvx/include/asm/byteorder.h       |   12 -
>>   arch/kvx/include/asm/cache.h           |   34 -
>>   arch/kvx/include/asm/common.h          |   28 -
>>   arch/kvx/include/asm/dma.h             |   30 -
>>   arch/kvx/include/asm/elf.h             |   21 -
>>   arch/kvx/include/asm/ftu.h             |   24 -
>>   arch/kvx/include/asm/io.h              |   14 -
>>   arch/kvx/include/asm/linkage.h         |   10 -
>>   arch/kvx/include/asm/mmu.h             |    8 -
>>   arch/kvx/include/asm/posix_types.h     |   12 -
>>   arch/kvx/include/asm/privilege.h       |  244 --
>>   arch/kvx/include/asm/sections.h        |   12 -
>>   arch/kvx/include/asm/setjmp.h          |   17 -
>>   arch/kvx/include/asm/sfr.h             |   51 -
>>   arch/kvx/include/asm/sfr_defs.h        |   17 -
>>   arch/kvx/include/asm/string.h          |   14 -
>>   arch/kvx/include/asm/swab.h            |   14 -
>>   arch/kvx/include/asm/sys_arch.h        |   49 -
>>   arch/kvx/include/asm/types.h           |   14 -
>>   arch/kvx/include/asm/unaligned.h       |   17 -
>>   arch/kvx/include/asm/v1/sfr_defs.h     | 5027 ----------------------
>>   arch/kvx/include/asm/v2/sfr_defs.h     | 5389 ------------------------
>>   arch/kvx/include/asm/word-at-a-time.h  |    2 -
>>   arch/kvx/lib/Makefile                  |    6 -
>>   arch/kvx/lib/asm-offsets.c             |   11 -
>>   arch/kvx/lib/board.c                   |  159 -
>>   arch/kvx/lib/bootm.c                   |  172 -
>>   arch/kvx/lib/cache.c                   |   25 -
>>   arch/kvx/lib/cpuinfo.c                 |   20 -
>>   arch/kvx/lib/dma-default.c             |   61 -
>>   arch/kvx/lib/dtb.c                     |   14 -
>>   arch/kvx/lib/poweroff.c                |   56 -
>>   arch/kvx/lib/setjmp.S                  |   85 -
>>   arch/kvx/um/Makefile                   |    4 -
>>   drivers/clocksource/Kconfig            |    4 -
>>   drivers/clocksource/Makefile           |    1 -
>>   drivers/clocksource/kvx_timer.c        |   60 -
>>   drivers/nvmem/Kconfig                  |    7 -
>>   drivers/nvmem/Makefile                 |    3 -
>>   drivers/nvmem/kvx-otp-nv.c             |   95 -
>>   drivers/of/Kconfig                     |    2 +-
>>   drivers/soc/Kconfig                    |    1 -
>>   drivers/soc/Makefile                   |    1 -
>>   drivers/soc/kvx/Kconfig                |   10 -
>>   drivers/soc/kvx/Makefile               |    1 -
>>   drivers/soc/kvx/kvx_socinfo.c          |  178 -
>>   drivers/watchdog/Kconfig               |   17 -
>>   drivers/watchdog/Makefile              |    1 -
>>   drivers/watchdog/kvx_wdt.c             |  109 -
>>   test/Containerfile                     |    7 -
>>   test/kvx/generic_defconfig.yaml        |   17 -
>>   72 files changed, 2 insertions(+), 13040 deletions(-)
>>   delete mode 100644 Documentation/boards/kvx.rst
>>   delete mode 100644 arch/kvx/Kbuild
>>   delete mode 100644 arch/kvx/Kconfig
>>   delete mode 100644 arch/kvx/Kconfig.debug
>>   delete mode 100644 arch/kvx/Makefile
>>   delete mode 100644 arch/kvx/configs/generic_defconfig
>>   delete mode 100644 arch/kvx/cpu/Makefile
>>   delete mode 100644 arch/kvx/cpu/barebox.lds.S
>>   delete mode 100644 arch/kvx/cpu/cpu.c
>>   delete mode 100644 arch/kvx/cpu/exception.S
>>   delete mode 100644 arch/kvx/cpu/reset.c
>>   delete mode 100644 arch/kvx/cpu/start.S
>>   delete mode 100644 arch/kvx/dts/Makefile
>>   delete mode 100644 arch/kvx/dts/k200.dts
>>   delete mode 100644 arch/kvx/include/asm/barebox.lds.h
>>   delete mode 100644 arch/kvx/include/asm/barrier.h
>>   delete mode 100644 arch/kvx/include/asm/bitops.h
>>   delete mode 100644 arch/kvx/include/asm/bitsperlong.h
>>   delete mode 100644 arch/kvx/include/asm/byteorder.h
>>   delete mode 100644 arch/kvx/include/asm/cache.h
>>   delete mode 100644 arch/kvx/include/asm/common.h
>>   delete mode 100644 arch/kvx/include/asm/dma.h
>>   delete mode 100644 arch/kvx/include/asm/elf.h
>>   delete mode 100644 arch/kvx/include/asm/ftu.h
>>   delete mode 100644 arch/kvx/include/asm/io.h
>>   delete mode 100644 arch/kvx/include/asm/linkage.h
>>   delete mode 100644 arch/kvx/include/asm/mmu.h
>>   delete mode 100644 arch/kvx/include/asm/posix_types.h
>>   delete mode 100644 arch/kvx/include/asm/privilege.h
>>   delete mode 100644 arch/kvx/include/asm/sections.h
>>   delete mode 100644 arch/kvx/include/asm/setjmp.h
>>   delete mode 100644 arch/kvx/include/asm/sfr.h
>>   delete mode 100644 arch/kvx/include/asm/sfr_defs.h
>>   delete mode 100644 arch/kvx/include/asm/string.h
>>   delete mode 100644 arch/kvx/include/asm/swab.h
>>   delete mode 100644 arch/kvx/include/asm/sys_arch.h
>>   delete mode 100644 arch/kvx/include/asm/types.h
>>   delete mode 100644 arch/kvx/include/asm/unaligned.h
>>   delete mode 100644 arch/kvx/include/asm/v1/sfr_defs.h
>>   delete mode 100644 arch/kvx/include/asm/v2/sfr_defs.h
>>   delete mode 100644 arch/kvx/include/asm/word-at-a-time.h
>>   delete mode 100644 arch/kvx/lib/Makefile
>>   delete mode 100644 arch/kvx/lib/asm-offsets.c
>>   delete mode 100644 arch/kvx/lib/board.c
>>   delete mode 100644 arch/kvx/lib/bootm.c
>>   delete mode 100644 arch/kvx/lib/cache.c
>>   delete mode 100644 arch/kvx/lib/cpuinfo.c
>>   delete mode 100644 arch/kvx/lib/dma-default.c
>>   delete mode 100644 arch/kvx/lib/dtb.c
>>   delete mode 100644 arch/kvx/lib/poweroff.c
>>   delete mode 100644 arch/kvx/lib/setjmp.S
>>   delete mode 100644 arch/kvx/um/Makefile
>>   delete mode 100644 drivers/clocksource/kvx_timer.c
>>   delete mode 100644 drivers/nvmem/kvx-otp-nv.c
>>   delete mode 100644 drivers/soc/kvx/Kconfig
>>   delete mode 100644 drivers/soc/kvx/Makefile
>>   delete mode 100644 drivers/soc/kvx/kvx_socinfo.c
>>   delete mode 100644 drivers/watchdog/kvx_wdt.c
>>   delete mode 100644 test/kvx/generic_defconfig.yaml
>>
>> -- 
>> 2.55.0
>>
> 



