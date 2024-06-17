Delivery-date: Mon, 17 Jun 2024 13:37:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfv-007Yez-1z
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:37:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfu-00079H-Pl
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:37:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SJWdZ7z17GtgQel23uqteLO7HUyp2BySB9LYbl2nQxA=; b=toOUe3QknscsqY
	qyz75rYy6vN13/WtkBWqj2VglgnQbD2mGzdZnrxMc3XoECriEOlCEGh0kKAgZWLuc544ushBV2+qd
	dQFMvxN605Km4BpE+oNRJF4DDt/pyDi1XXbHbLwJ1VHAvVenKcRwAU3nxTfGQr8AKKo+/sLPhmbkU
	uUwDqgo2FmWxB8f5mZr/o2TRkxzLocfxzvSmJYnIVs8GYIbO1ZemHpNdL8KAwDpUM5tFcLOP1qgKU
	5f08aznugN33wQ7DzW/wnQr39bdaYyd/ZTRlJFvEWrh0G9ITQrXjXwbyZTZX5i5ONx1UAyYPIz30T
	vb8MpZgxoNYC6H/zaNuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfG-0000000AVcT-28Ej;
	Mon, 17 Jun 2024 11:36:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfA-0000000AVW8-0wm9
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:36:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sJAf7-0006ab-Kw; Mon, 17 Jun 2024 13:36:37 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 17 Jun 2024 13:36:22 +0200
Message-Id: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALYfcGYC/x2NQQqDMBAAvyJ7dmETU6t+pfSwxNUuFBM2RQTx7
 017m7nMnFDEVApMzQkmuxZNWxXXNhBfvK2COlcHTz5Q7+64/wjphoSflDViSXHJKyObKTvC451
 4FkNhCX7suy4MDDWXTRY9/qvH87q+qfRc/3oAAAA=
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_043640_347941_34F69EE5 
X-CRM114-Status: UNSURE (   5.66  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/14] ARM: SoCFPGA: arria10: clean up early bitstream
 loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series cleans up/reworks the early bitstream loading in the Arria10
xloader code.
      
Some useful defines are added on the way.
      

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Steffen Trumtrar (14):
      ARM: arria10: system-manager: add handoff registers
      ARM: Arria10: reset manager: document reset source
      ARM: socfpga: Arria10: PE1: remove arm_cpu_lowlevel_init
      ARM: arria10: reset-manager: don't touch l4 wdog
      ARM: Arria10: PE1: disable l4wd0 in bringup
      ARM: Arria10: xload: rework __arria10_load_fpga
      ARM: arria10: xload: fix __arria10_load_fpga
      ARM: Arria10: xload: kick watchdog
      ARM: arria10: mark image in OCRAM as valid
      ARM: Arria10: arria10_finish_io: remove unused param
      ARM: Arria10: xload: remove useless writel
      ARM: Arria10: xload: refactor wait loops
      ARM: Arria10: xload: reduce timeout on condone
      ARM: arria10-xload: rework broken bitstream handling

 arch/arm/boards/enclustra-aa1/lowlevel.c      |   7 +-
 arch/arm/boards/reflex-achilles/lowlevel.c    |   4 +-
 arch/arm/mach-socfpga/arria10-generic.c       |   4 +
 arch/arm/mach-socfpga/arria10-init.c          |   4 +-
 arch/arm/mach-socfpga/arria10-reset-manager.c |   9 ++-
 arch/arm/mach-socfpga/arria10-xload.c         | 106 ++++++++++++++------------
 include/mach/socfpga/arria10-fpga.h           |   1 +
 include/mach/socfpga/arria10-reset-manager.h  |  31 ++++++++
 include/mach/socfpga/arria10-system-manager.h |  12 ++-
 include/mach/socfpga/generic.h                |  16 +++-
 10 files changed, 131 insertions(+), 63 deletions(-)
---
base-commit: bafdf4b35d777d159ac4058efc86d36622ce5ccf
change-id: 20240617-v2024-05-0-topic-socfpga-arria10-xloader-eae42963348a

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



