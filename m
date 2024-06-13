Delivery-date: Thu, 13 Jun 2024 08:59:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeQx-005Ee8-1S
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 08:59:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHeQw-0003nN-Sd
	for lore@pengutronix.de; Thu, 13 Jun 2024 08:59:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QqteKHiHYMiv4k0x0OCPzKvs/l//2twTMpzCk1AczMw=; b=TfYb6FqZMCRX+L4CRIHA+95oHB
	6BAz1MBCZzDQbaQg7NWS7HfuEpJe444m7yg4o++r3GTJVbqWBxYelk3E0INhtVAOYo3MQA4jJEb7z
	eTnt0G+4Gl34/BjOVGuZ5auSO40vpGcYGK0tsnC5AcaSp5nS4rdR41QZSRiDDt5+sQ/qgGoPnHG4S
	nevFPpRKqaZFZ3mMBhRsZeh74Ixf6fkjCgWSjT/MILAhNGmlYUDAV3Sk0UhZjgvqX9Zcn3rP5Jp9S
	SkTJ9wO5YI3ZdckgeVYfbudlovqCK/wWQt2Ek4AYUWqc9DPel6c3SIRKLhBfKwUSFcKYBjLeNbMGz
	B87Mz2WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHeQR-0000000FOVP-1uNa;
	Thu, 13 Jun 2024 06:59:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHeQN-0000000FOUe-46av
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 06:59:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeQM-0003jZ-DY; Thu, 13 Jun 2024 08:59:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeQM-001y1H-0l; Thu, 13 Jun 2024 08:59:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sHeQL-00BM9b-35;
	Thu, 13 Jun 2024 08:59:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Antony Pavlov <antonynpavlov@gmail.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240612232807.142127-1-antonynpavlov@gmail.com>
References: <20240612232807.142127-1-antonynpavlov@gmail.com>
Message-Id: <171826194595.2706742.12786179650080561425.b4-ty@pengutronix.de>
Date: Thu, 13 Jun 2024 08:59:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_235908_054818_846AEF05 
X-CRM114-Status: UNSURE (   7.37  )
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
Subject: Re: [PATCH 0/3] MIPS: pbl fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Jun 2024 02:28:04 +0300, Antony Pavlov wrote:
> Antony Pavlov (3):
>   MIPS: don't pass fdt_size into main_entry()
>   MIPS: pbl_main_entry(): inline barebox_uncompress()
>   MIPS: rename pbl_main_entry() -> barebox_pbl_start()
> 
> arch/mips/boards/board-dt-2nd.S               |  4 +--
>  arch/mips/boards/netgear-wg102/lowlevel.S     |  2 +-
>  arch/mips/boot/Makefile                       |  2 +-
>  arch/mips/boot/dtb.c                          |  1 -
>  arch/mips/boot/main_entry.c                   |  6 ++---
>  arch/mips/boot/start.c                        |  9 +++----
>  .../boot/{main_entry-pbl.c => uncompress.c}   | 26 ++++++++-----------
>  arch/mips/include/asm/asm.h                   |  2 +-
>  arch/mips/lib/reloc.c                         | 12 ++++-----
>  9 files changed, 27 insertions(+), 37 deletions(-)
>  rename arch/mips/boot/{main_entry-pbl.c => uncompress.c} (71%)
> 
> [...]

Applied, thanks!

[1/3] MIPS: don't pass fdt_size into main_entry()
      https://git.pengutronix.de/cgit/barebox/commit/?id=e4b849bffef1 (link may not be stable)
[2/3] MIPS: pbl_main_entry(): inline barebox_uncompress()
      https://git.pengutronix.de/cgit/barebox/commit/?id=20074e4eb2f1 (link may not be stable)
[3/3] MIPS: rename pbl_main_entry() -> barebox_pbl_start()
      https://git.pengutronix.de/cgit/barebox/commit/?id=a8e268d7524d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



