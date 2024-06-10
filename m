Delivery-date: Mon, 10 Jun 2024 14:26:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGe67-003gVY-02
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 14:26:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGe66-0008Ns-EQ
	for lore@pengutronix.de; Mon, 10 Jun 2024 14:26:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=og+jGfYsOeMrTPdWhY8l7FznihCiDVkx47zNmQI4hKA=; b=ooI8ClmZtRpdwBT9aRhc4yOjbY
	0ZfTKuS0Z8BlNjPNd28zCdvjT6foKIufFSFug//73ZTtGEwoj+Osr4vFpTfRa+9YzpG6Pq1KIfo9R
	LDI3rjk+CThnBYcqAFciqR+uiwqWDdPRU1+GcSRmD2C9j+l75AOezZhQQmLllrcX6DjTCEsQ7ROox
	pddgMoBxhuM77CiJRtirKZpiCmcS7uG8bw/Vmdc1w+jw5i15cBxfypP991X9Qt+RM01CBXmi0lykK
	IRaeBwEJ9aObmqO59NHUJFKeup7u4t44XtYcqKM1uPfHQN7gMkubvH4aRWeI8W8xIVjhwcAilWrkP
	bL/4GzSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGe5e-000000050BO-1GNC;
	Mon, 10 Jun 2024 12:25:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGe5Z-000000050A8-0wid
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 12:25:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGe5X-0008KK-IK; Mon, 10 Jun 2024 14:25:27 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGe5W-001IkL-Uw; Mon, 10 Jun 2024 14:25:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGe5W-006o6V-2s;
	Mon, 10 Jun 2024 14:25:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Antony Pavlov <antonynpavlov@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240607001259.107805-1-antonynpavlov@gmail.com>
References: <20240607001259.107805-1-antonynpavlov@gmail.com>
Message-Id: <171802232688.1622554.16626338080229657367.b4-ty@pengutronix.de>
Date: Mon, 10 Jun 2024 14:25:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_052529_373643_F61F98CA 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/4] pbl and debug_ll fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Jun 2024 03:12:55 +0300, Antony Pavlov wrote:
> Antony Pavlov (4):
>   pbl: enable image verification for MIPS and RISC-V too
>   RISC-V: fix crash on start if CONFIG_IMAGE_COMPRESSION_NONE=y
>   ARM: bcm283x: fix compilation with debug_ll enabled
>   ARM: vexpress: make debug_ll work
> 
> arch/riscv/boot/start.c          | 11 ++++++++---
>  include/mach/bcm283x/debug_ll.h  |  2 ++
>  include/mach/vexpress/debug_ll.h | 12 +-----------
>  pbl/Kconfig                      |  2 +-
>  4 files changed, 12 insertions(+), 15 deletions(-)
> 
> [...]

Applied, thanks!

[1/4] pbl: enable image verification for MIPS and RISC-V too
      https://git.pengutronix.de/cgit/barebox/commit/?id=52268376496b (link may not be stable)
[2/4] RISC-V: fix crash on start if CONFIG_IMAGE_COMPRESSION_NONE=y
      https://git.pengutronix.de/cgit/barebox/commit/?id=c66d877a7b3d (link may not be stable)
[3/4] ARM: bcm283x: fix compilation with debug_ll enabled
      https://git.pengutronix.de/cgit/barebox/commit/?id=462373cde141 (link may not be stable)
[4/4] ARM: vexpress: make debug_ll work
      https://git.pengutronix.de/cgit/barebox/commit/?id=3a154b29d16e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



