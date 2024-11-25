Delivery-date: Mon, 25 Nov 2024 16:13:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFalt-000FWk-2Z
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:13:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFals-0007g9-3x
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:13:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3wcBmxUeOkyBCutK1xxUtm5cqR3irDPl93+iKGfspq4=; b=JPQxgE+PCmG6zz+kIgxzDxpEpH
	XeSc8VGL0VglOiV+suGiIqMdkAVZy9N7a4U0uUPRQ9VQkwERC7lgr7Q7x5U9HgITxjfdig2Cyr8/o
	BVnAx4DgF77zhEUmBbRFE5YlHhNd3WJOBADCY3e+YXGu57EIVV1xnk1p+rQRvuCZrxER/N1Y+1V+W
	8z2wgx0/vpxWmOAeh1/KC6i1uSFiXeyRaEh7ZVgoGCSnmXNuswNXkdjqeJpVhWmpmHhmS05nV8D5w
	d/lxXfdFdVMkqlh5qYRWJlOWCDPJkgOfY7/AmnZ3wQMqiX1QATJND4CNfcPAoMfzGpGob2X/h+aKz
	A95ZODsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalO-00000008Pdq-1snP;
	Mon, 25 Nov 2024 15:12:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalM-00000008Pb3-04Ei
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:12:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-0007CI-Si
	for barebox@lists.infradead.org; Mon, 25 Nov 2024 16:12:30 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalJ-0006MQ-2y
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 16:12:30 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalJ-001lGb-3B
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 16:12:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 25 Nov 2024 16:12:12 +0100
Message-Id: <20241125151228.341441-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071232_052394_40F48840 
X-CRM114-Status: GOOD (  13.56  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/16] Remove dependency on ld --gc-section in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We depend on -ffunction-sections -fdata-sections at a lot of places and
fail the link without due to undefined references. This is especially
needed for obj-pbl-y code as the files usually have other functions
depending on barebox proper infrastructure, but that is never called.

This works so far, but breaks for two things: LTO and using PBL on
sandbox. Both I have not managed to get the linker not to complain about
the undefined references in the ultimately unreferenced code.

Therefore, let's solve this a different way: Adjust the relevant headers
to define stubs when built for sandbox.

This has the nice side effect of compile testing the stubs during PBL
build, so forgotten semicolons are more likely to be noticed during
development instead of CI run.

v1 -> v2:
  - squash fixes noticed by CI (strerror, PBL_CONSOLE)
  - define printk/BUG for host tools to fix compile error
  - replace IS_PROPER macro with new global IN_PROPER macro
  - use IN_PROPER where appropriate

Ahmad Fatoum (16):
  scripts: include: add definitions for printk and BUG()
  xfuncs: include <malloc.h> for free definition
  pbl: define IN_PBL & IN_PROPER macros globally
  treewide: replace inverted check for PBL with new IN_PROPER macro
  lib: random: add stubs for PBL
  bootsource: stub out when in PBL
  crypto: provide crypto_memneq for PBL
  cdev: stub out cdev_read/write for PBL
  libfile: stub out file descriptor API for PBL
  environment: stub out environment API for PBL
  of: stub out live tree API when using PBL
  errno: stub out perror/strerror API when built for PBL
  xfuncs: stub out API when built for PBL
  stdio: stub out basprintf and friends when built for PBL
  memory: stub out request_barebox_region for PBL
  malloc: add PBL stubs

 arch/arm/mach-imx/romapi.c         |  2 +-
 arch/arm/mach-omap/omap3_generic.c |  2 +-
 arch/riscv/include/asm/unwind.h    |  2 +-
 common/bootsource.c                |  2 +-
 crypto/Makefile                    |  2 +-
 drivers/pinctrl/imx-iomux-v1.c     |  2 +-
 fs/fat/ff.h                        |  2 +-
 include/abort.h                    |  2 +-
 include/dma.h                      |  2 +-
 include/driver.h                   | 24 +++++++++-
 include/environment.h              |  2 +-
 include/errno.h                    | 10 +++++
 include/fcntl.h                    |  8 ++++
 include/libfile.h                  |  7 +++
 include/linux/iopoll.h             |  4 +-
 include/linux/kasan.h              |  2 +-
 include/linux/kconfig.h            |  8 ++++
 include/linux/list.h               |  2 +-
 include/linux/printk.h             |  4 +-
 include/linux/string.h             |  7 +++
 include/malloc.h                   | 37 +++++++++++++++
 include/memory.h                   | 10 +++++
 include/of.h                       |  2 +-
 include/pbl.h                      |  6 ---
 include/printk.h                   |  4 +-
 include/stdio.h                    | 28 ++++++++++--
 include/stdlib.h                   | 19 +++++++-
 include/unistd.h                   | 72 ++++++++++++++++++++++++++++++
 include/xfuncs.h                   | 20 +++++++++
 include/zero_page.h                |  2 +-
 lib/vsprintf.c                     |  4 +-
 scripts/include/asm-generic/bug.h  | 14 ++++++
 scripts/include/linux/bug.h        |  1 +
 scripts/include/printk.h           |  9 ++++
 34 files changed, 289 insertions(+), 35 deletions(-)
 create mode 100644 scripts/include/asm-generic/bug.h
 create mode 100644 scripts/include/linux/bug.h
 create mode 100644 scripts/include/printk.h

-- 
2.39.5



