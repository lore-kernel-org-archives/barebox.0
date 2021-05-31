Delivery-date: Mon, 31 May 2021 09:14:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc7h-0002tT-Od
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:14:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnc7g-0003cO-9n
	for lore@pengutronix.de; Mon, 31 May 2021 09:14:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GXgdNiZ2unTEV5w9o76zl1D04OOdBUrKBpnBz+bBQHs=; b=2XZA9KrZ5pMZbF
	l8Qwnzu/EcxNLh2C3ior7aKX1C01NT6SYNido7az6e1HXtv58v5G2qXVeImG001JtQyEkaHVey1B3
	N7g0ByUxAIqYr6Bqa9oGPlYtpC7yawBbMT0GHADzqfdmudoUGdj3Wa6atPoAk01uztdqh+idlxCw3
	fFOHCSGDp2k4lsvuNhRt5OLV7IR0mVPmLqbeUVJjI16KdrOC1/lTECNdEytmn8CF39skPYYLBCs8E
	NmaSdhLjzG+aEqIJZ1WXZoYCJHXJM7RnILVRXbrAmR3En/HocnDwPtHT2738FrNg26eyKuQUtvDfw
	3YKEl7eet8676OufbvdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnc6a-00B7cj-Q9; Mon, 31 May 2021 07:12:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnc6M-00B7Xs-5X
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:12:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-0003Do-NO; Mon, 31 May 2021 09:12:40 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnc6K-0007zP-Bu; Mon, 31 May 2021 09:12:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mol@pengutronix.de
Date: Mon, 31 May 2021 09:12:33 +0200
Message-Id: <20210531071239.30653-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_001242_303666_4A0F35F2 
X-CRM114-Status: GOOD (  13.39  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] memory: fuse overlapping memory banks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The request region code makes sense to ensure drivers don't try to claim
(I/O) memory region claimed by another driver or by the memory
allocator. It doesn't make as much sense for registering available
memory banks, because there is often overlap:

 - device tree often defines the (minimally) available /memory across
   variants
 - subarchitectures like i.MX, STM32MP, OMAP or SAMA5 query the main
   RAM size from controller registers

So far, overlap went mostly unnoticed, because the RAM controller
drivers didn't check for errors. However, if barebox is already running
from RAM outside that described by the device tree, there will be errors
and /delete-node/ annotations that need to be added into device trees.

Upstream device tree can be extended later on with a /memory node, which
in turn will break barebox. This series fixes all of that. Overlapping
memory banks are combined into one. Errors are propagated everywhere.
/delete-node/ memory@X shouldn't be needed for new boards.

Ahmad Fatoum (6):
  common: memory: allocate all memory devices at once
  memory: fuse overlapping memory banks
  of: propagate errors inside barebox_register_{of,fdt} into initcalls
  of: warn about of_add_memory_bank errors
  ARM: <asm/memory.h>: propagate error codes from arm_add_mem_device()
  ARM: report probe error at arm_add_mem_device() callsites on failure

 arch/arm/boards/qemu-virt/board.c |  3 +-
 arch/arm/cpu/dtb.c                |  4 +-
 arch/arm/include/asm/memory.h     |  6 +--
 arch/arm/mach-at91/ddramc.c       |  4 +-
 arch/arm/mach-imx/esdctl.c        | 56 +++++++++++++--------------
 arch/arm/mach-omap/am33xx_scrm.c  |  4 +-
 arch/arm/mach-stm32mp/ddrctrl.c   |  4 +-
 arch/kvx/lib/dtb.c                |  4 +-
 arch/mips/boot/dtb.c              | 13 ++++---
 arch/openrisc/lib/dtb.c           |  4 +-
 arch/riscv/lib/dtb.c              |  5 ++-
 arch/sandbox/board/dtb.c          |  4 +-
 common/memory.c                   | 64 +++++++++++++++++++++++++++----
 common/resource.c                 | 22 +++++++++++
 drivers/of/base.c                 | 40 ++++++++++++-------
 drivers/of/mem_generic.c          |  5 ++-
 include/linux/ioport.h            | 20 ++++++++++
 include/memory.h                  |  1 -
 include/of.h                      |  6 +--
 19 files changed, 181 insertions(+), 88 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

