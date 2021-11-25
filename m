Delivery-date: Thu, 25 Nov 2021 17:12:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHMa-0001ix-R6
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 17:12:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHMY-0001dR-J3
	for lore@pengutronix.de; Thu, 25 Nov 2021 17:12:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HWVURf5AbxYUVm1seW2N4vz3Gj8/hZYoe3iArzy8DXA=; b=f2gF8R9cPxCdJP
	MPkZs6CAY8RM8l7+omnp/Cxf455pSxittx/fXYPG8RfWL7fcXo4SHx7IMABPx4yRzY9Zzu4kOJzkF
	CVQUzeB9UEFzJOvoFxxUnz0XjUITqZ7mi+WKR9VB6fCm70ngeLhhvovUGyfRQ8ITG1HhmOrUfBO7i
	LS0QbGJaOFCd4xGScLrn786sQQ1+tZnb8ow0sPbQfn0T9ujZn/X6job6fsC1sHSiFSOmurg351Rfq
	/+WE1/88fdPjkrjzoYWywtAuQX60DXpYHFzETZr2SRZS15bQ0nZPREDEMc/dS4WmGrJL3S/3Et3VQ
	BNzU/lY1mWwUvQL+H4fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqHKn-008DTK-Kt; Thu, 25 Nov 2021 16:10:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqHKg-008DPg-Ss
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 16:10:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1mqHKe-0000be-Ct
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 17:10:44 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>) id 1mqHKd-00G4Wu-Nl
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 17:10:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 25 Nov 2021 17:10:35 +0100
Message-Id: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_081046_974034_13E14333 
X-CRM114-Status: GOOD (  11.47  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] ARM/RISC-V: qemu-virt: share common cleaned up state/env
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ARM QEMU Virt has support for environment/state. Make this available in
RISC-V as well, while cleaning up the code a bit and fixing a bug due to
too early of_probe at pure_initcall level.

Ahmad Fatoum (7):
  state: mark state init errors specially
  state: make first boot less verbose
  of: overlay: rescan aliases calling of_overlay_apply_tree on live tree
  ARM: qemu: enable deep probe support
  ARM: qemu: move board code to central location
  common: boards: qemu-virt: genericize to support non-ARM architectures
  RISC-V: qemu-virt: add overlay for environment and state

 arch/arm/Kconfig                              |  1 +
 arch/arm/boards/Makefile                      |  1 -
 arch/arm/boards/qemu-virt/Makefile            |  1 -
 arch/riscv/Kconfig.socs                       | 10 +++
 arch/riscv/configs/virt32_defconfig           |  4 ++
 arch/riscv/configs/virt64_defconfig           |  4 ++
 common/Kconfig                                |  2 +
 common/Makefile                               |  1 +
 common/boards/Kconfig                         |  4 ++
 common/boards/Makefile                        |  3 +
 common/boards/qemu-virt/Makefile              |  7 +++
 {arch/arm => common}/boards/qemu-virt/board.c | 61 ++++++++-----------
 .../boards/qemu-virt/overlay-of-flash.dts     | 13 +++-
 common/state/backend_format_raw.c             |  7 +--
 common/state/backend_storage.c                | 17 +++---
 common/state/state.c                          |  4 +-
 common/state/state.h                          | 14 +++++
 drivers/misc/state.c                          |  4 +-
 drivers/of/overlay.c                          |  4 ++
 19 files changed, 110 insertions(+), 52 deletions(-)
 create mode 100644 common/boards/Kconfig
 create mode 100644 common/boards/Makefile
 create mode 100644 common/boards/qemu-virt/Makefile
 rename {arch/arm => common}/boards/qemu-virt/board.c (64%)
 rename {arch/arm => common}/boards/qemu-virt/overlay-of-flash.dts (83%)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

