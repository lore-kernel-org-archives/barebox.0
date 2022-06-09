Delivery-date: Thu, 09 Jun 2022 07:45:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzAz4-008RVk-8Q
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 07:45:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzAz2-0006Rn-Oz
	for lore@pengutronix.de; Thu, 09 Jun 2022 07:45:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+Fp8v/Ku6tvAHT4f8zQL7l88E1u08laJooT4pZyTbko=; b=HS1qoOhuwCL3xI
	BejhqA1byIQd33MZbv3uJw5Fs4DXVFUP+cfK4529/vjXIQuyypfgUtI5QWN7DrZ444fwxNK1/XAfK
	HWFNRUnsPLBCSiCTLOAKeUWmf9dlwsc6mN5Lh4KtPJra/b9VE9o26D8nh4pWFRvTQd1Rc5DqkR1P6
	fgBvZBxtvoniHbnZgUZzJpxPF9+yXWCe3SKpasgjlUOvwTEXP2mde/+VcOpHl+ju6a4/0RPGiTa5J
	AM/2ggRNS7nyT84218S0KHreBmRy0mcxs1xwb8S/gvy4yFGV2uTuXj8V1ZopLS0KQ3IGUMZtlkt5g
	URbhNKONuahIiyrjjOQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzAxa-00GrXc-5i; Thu, 09 Jun 2022 05:43:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzAxR-00GrVT-DB
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:43:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzAxN-0006AC-Kf; Thu, 09 Jun 2022 07:43:45 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzAxO-007K77-98; Thu, 09 Jun 2022 07:43:44 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzAxL-002nNZ-UU; Thu, 09 Jun 2022 07:43:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  9 Jun 2022 07:43:38 +0200
Message-Id: <20220609054342.661505-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_224349_505803_76A1FDA3 
X-CRM114-Status: UNSURE (   6.69  )
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
Cc: rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/4] of: request reserved memory regions so other code can't
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series pulls out some parts from Rouven's eXecute Never series[1]
to improve reserved memory support.

Changes are described beneath each patch. This series was prompted by
Raspberry Pi 64-bit rework: barebox placed the kernel at address 0,
which is reserved for the spin table thereby breaking multicore boot.

Now that reserved memory regions are requested, they are skipped over
when determining a load address.

This may induce breakage if reserved memory regions are being used
by existing code that expects exclusive access. nvmem-rmem is one
such user that's fixed here. If you know of more, please tell.

[1]: https://lore.barebox.org/barebox/20210803094418.475609-1-r.czerwinski@pengutronix.de/

Ahmad Fatoum (1):
  nvmem: rmem: get, don't request, memory region

Rouven Czerwinski (3):
  of: reserve: mark runtime firmware code regions specially
  of: add of_get_reserve_map stub for !CONFIG_OFTREE
  of: request reserved memory regions so other code can't

 arch/arm/cpu/sm.c              |  3 ++-
 arch/arm/cpu/start.c           |  3 ++-
 arch/arm/mach-layerscape/ppa.c |  2 +-
 common/bootm.c                 |  3 ++-
 common/memory.c                | 21 +++++++++++++++++++--
 drivers/nvmem/rmem.c           |  2 +-
 drivers/of/Makefile            |  1 +
 drivers/of/fdt.c               | 18 +++++++++++++-----
 drivers/video/fb.c             |  3 ++-
 drivers/video/simplefb-fixup.c |  2 +-
 fs/pstore/ram.c                |  3 ++-
 include/of.h                   | 15 +++++++++++++--
 12 files changed, 59 insertions(+), 17 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

