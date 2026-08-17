Delivery-date: Mon, 17 Aug 2026 16:06:26 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvxys-0049Qx-0K
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 16:06:26 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AD526202200
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 16:06:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IMJaFAP7;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vZQquPDL3a9GBRuf5U2bB3kPPQi5V5WJGk746JgmwXo=; b=IMJaFAP7Err7gg
	tpAcDcPI9zlvWgvZv6HQ/P8bTCd5p1uENEIdS5Nwrvxigl62seRo0OkdunbN1dijNk3RLwQTq9xMV
	UxUv2dVkOo3LgLLyNZhd+VY+1wwCjEsTvmQ/EV6Z099xYvXqgIfjOSdm2By52o1din4vA4zl3TbOg
	F0Gb/WPIOwBd70C6VsT4fTs6u4LcKOyEKdpMTOBdgb+l7Ayc5mDQBQFhVQqxD9AhTidSXshJYOa+Z
	zFaCX+gass+NNhYvnd5lJLz9RxWh+Pz0zt02SQu06rOFNZrJEvICEENoxw9GbksDncfJH/eF5jffS
	y8MTz+gbMAwvqe5x7vkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxu7-00000006G7v-4AGh;
	Mon, 17 Aug 2026 14:01:31 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvxu2-00000006G2h-0Bkr
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 14:01:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D909D201514;
	Mon, 17 Aug 2026 16:01:18 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wvxtu-001xrq-2F;
	Mon, 17 Aug 2026 16:01:18 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wvxtu-0000000F1aR-2QKQ;
	Mon, 17 Aug 2026 16:01:18 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Subject: [PATCH v3 0/8] PBL: enable timeouts in read_poll_timeout macros
Date: Mon, 17 Aug 2026 16:01:11 +0200
Message-Id: <20260817-feature-pbl-get-time-ns-v3-0-9874c1438855@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACcUg2oC/4XNTQqDMBCG4atI1p2SPzV21XuULtSMGmijJDFYx
 Ls3Cl0V2uX7wTyzEo/OoCeXbCUOo/FmtCnEKSPtUNsewejUhFOeU8YZdFiH2SFMzQN6DBDME8F
 6KHSFSpVS54qTdD057MxyyLd76sH4MLrX8Siyff1vRgYUWqFlJURVKllcJ7T9HNxozXLWSHY48
 g9WUMV+YDxhZS4RKWcNq/QXtm3bG3O3WBAQAQAA
X-Change-ID: 20250121-feature-pbl-get-time-ns-6d9e8874d582
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_070126_238754_AA10D080 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Without a time source the read_poll_timeout functions will
    deadlock in the PBL if the break condition is never met. This series introduces
    the necessary timing functions in the PBL for arches/socs imp [...] 
 
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
X-Stat-Signature: x7f3t1pbzewhfu65hndgwc858rr1soa4
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: AD526202200

Without a time source the read_poll_timeout functions will deadlock in
the PBL if the break condition is never met. This series introduces the
necessary timing functions in the PBL for arches/socs implementing
PBL_CLOCKSOURCE, which is every ARMv8 SoC as they implement an
architected timer and selected ARMv7 SoCs.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Changes in v3:
- Added PBL constructor support for ARM/ARM64/RISC-V
- Changed the implementation to PBL_CLOCKSOURCE
- Link to v2: https://patch.msgid.link/20260811-feature-pbl-get-time-ns-v2-0-754ee021b19d@pengutronix.de

Changes in v2:
- Strictly guard the pbl timer support on 32bit ARM for ARMv7 only builds
- Link to v1: https://lore.kernel.org/r/20250121-feature-pbl-get-time-ns-v1-0-c3d493397846@pengutronix.de

To: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>

---
Stefan Kerkmann (8):
      RISC-V: setup_c: avoid clearing BSS twice
      ARM/ARM64/RISC-V: pbl: add constructor support
      clocksource: allow re-init for same clock
      drivers: arm_architected_timer: refactor for pbl compatibility
      ARM: layerscape: re-init pbl clocksource
      ARM: socfpga: agilex5: re-init pbl clocksource
      ARM64: enable PBL_CLOCKSOURCE compatibility
      linux/iopoll: enable polled timeouts for PBL_CLOCKSOURCE

 arch/arm/cpu/setupc_32.S                           |  3 +++
 arch/arm/cpu/setupc_64.S                           |  3 +++
 .../include/asm/hardware/arm_architected_timer.h   | 21 +++++++++++++++++++
 arch/arm/lib/pbl.lds.S                             |  8 ++++++++
 arch/arm/lib64/Makefile                            |  3 ++-
 arch/arm/lib64/clocksource.c                       | 10 +++++++++
 arch/arm/lib64/delay.c                             | 19 -----------------
 arch/arm/mach-layerscape/lowlevel-ls1028a.c        |  6 +++++-
 arch/arm/mach-layerscape/lowlevel-ls1046a.c        |  5 ++++-
 arch/arm/mach-socfpga/agilex5-clock-manager.c      |  7 +++----
 arch/riscv/lib/pbl.lds.S                           |  9 ++++++++
 arch/riscv/lib/setupc.S                            | 22 +++++++++++++++++++-
 common/clock.c                                     |  3 ++-
 drivers/clocksource/Kconfig                        |  1 +
 drivers/clocksource/Makefile                       |  2 +-
 drivers/clocksource/arm_architected_timer.c        | 24 ++++++++++++++--------
 include/asm-generic/sections.h                     |  2 ++
 include/linux/iopoll.h                             |  6 +++---
 pbl/Makefile                                       |  1 +
 pbl/ctors.c                                        | 13 ++++++++++++
 20 files changed, 128 insertions(+), 40 deletions(-)
---
base-commit: 3317ac1baff3b0226caba7f83f3da61bc407343a
change-id: 20250121-feature-pbl-get-time-ns-6d9e8874d582

Best regards,
--  
Stefan Kerkmann <s.kerkmann@pengutronix.de>



