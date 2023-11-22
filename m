Delivery-date: Wed, 22 Nov 2023 18:31:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5r4R-004dfh-0z
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:31:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5r4R-00089r-80
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:31:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jn0sbDfKrNv4aa1jwGzYU2mB14k/wpqwa/nMYpAbcyg=; b=mPMfaP78OkumlT8t4CMBHwHOSp
	sDye5B+LuTow+ft5ZI0OchhtCZNFgMbO7R1F2c3G4ECQb0ljvT6wIBX7Vsx6Iof3sE6Rb9hc/jcbm
	WhLOtLyeP2Uu1rnF5seJj4bR2bm2EaYBs/nxGoGT0QtAngIXzFec/zIFcn7oa9ZG1SBoljaTdm81M
	dQATkA6VPT/jxMCrrmrVl9ZcDxN7lgf9CgttM1ABYc47ArOyBE0SOMBen+5xHMU5IbxYWxFaZ2poE
	t3xJ3tPuGYotFoPkBlJqw4EAYAMYiRSsAdfQJavdiwBm4TTxjtZmunEt/21pkw3TfyVbT9gcnpY+0
	A45crCOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5r39-002fAg-2s;
	Wed, 22 Nov 2023 17:30:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5r35-002f7u-1V
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:30:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r34-0007Ss-35
	for barebox@lists.infradead.org; Wed, 22 Nov 2023 18:30:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r33-00ArSi-Mf
	for barebox@lists.infradead.org; Wed, 22 Nov 2023 18:30:01 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r33-001lAy-1u
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 18:30:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 22 Nov 2023 18:29:31 +0100
Message-Id: <20231122172951.376531-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_093003_508151_476CDA0B 
X-CRM114-Status: GOOD (  13.01  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 00/20] prepare for porting OP-TEE communication support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, barebox support for OP-TEE was restricted to loading it either
early in PBL or via bootm and to not step over it when allocating
memory. This was guarded behind CONFIG_HAVE_OPTEE.

To prepare porting the Linux driver behind CONFIG_OPTEE, which
brings actual bidirectional communication with OP-TEE to barebox,
let's import some of the headers and APIs used by the v6.6 Linux
driver.

v1 -> v2:
  See individual change log in every patch.

Ahmad Fatoum (20):
  include: provide linux/errno.h
  include: add linux/refcount.h
  bitops: split off linux/bits.h
  include: import <linux/instruction_pointer.h>
  asm-generic: split off typeconfused readl and friends
  asm-generic: migrate relaxed helpers into asm-generic/io.h
  include: add linux/io.h with strict prototypes
  include: import Linux word-at-a-time.h
  string: implement strscpy
  of: add CONFIG_OF for Linux compatibility
  include: asm-generic/atomic.h: define atomic_cmpxchg
  kbuild: build barebox for -std=gnu11
  include: linux/idr.h: implement more Linux API
  test: self: add simple IDR test
  include: implement dev_warn_once and friends
  include: add blocking notifier aliases
  include: add Linux ktime API
  of: constify string pointed to by struct of_device_id::compatible
  of: define of_devices_ensure_probed_by_compatible
  include: add linux/device.h wrapper around driver.h

 Makefile                                   |   4 +-
 arch/arm/include/asm/word-at-a-time.h      |  59 +++++
 arch/kvx/include/asm/word-at-a-time.h      |   2 +
 arch/mips/include/asm/word-at-a-time.h     |   2 +
 arch/openrisc/include/asm/word-at-a-time.h |   2 +
 arch/powerpc/include/asm/word-at-a-time.h  | 156 +++++++++++
 arch/powerpc/lib/misc.S                    |   2 +-
 arch/powerpc/lib/ppcstring.S               |   2 +-
 arch/riscv/include/asm/word-at-a-time.h    |  48 ++++
 arch/sandbox/include/asm/word-at-a-time.h  |   2 +
 arch/x86/include/asm/word-at-a-time.h      |  73 ++++++
 common/optee.c                             |   2 +-
 drivers/firmware/Kconfig                   |   1 +
 drivers/firmware/arm_scmi/driver.c         |   4 +-
 drivers/of/Kconfig                         |   4 +
 include/asm-generic/atomic.h               |   2 +
 include/asm-generic/cmpxchg-local.h        |  64 +++++
 include/asm-generic/cmpxchg.h              |  26 ++
 include/asm-generic/errno.h                |  11 -
 include/asm-generic/io-typeconfused.h      |  75 ++++++
 include/asm-generic/io.h                   | 284 +++++++++++++++++----
 include/asm-generic/word-at-a-time.h       | 121 +++++++++
 include/bbu.h                              |   2 +-
 include/errno.h                            |   2 +-
 include/io.h                               |  34 ---
 include/linux/atomic.h                     |  63 +++++
 include/linux/bitops.h                     |  21 +-
 include/linux/bits.h                       |  30 +++
 include/linux/device.h                     |  66 +++++
 include/linux/err.h                        |   2 +-
 include/linux/errno.h                      |  36 +++
 include/linux/idr.h                        |  61 ++---
 include/linux/instruction_pointer.h        |  11 +
 include/linux/io.h                         |   9 +
 include/linux/kernel.h                     |  11 +-
 include/linux/kref.h                       |  90 +++++++
 include/linux/ktime.h                      | 212 +++++++++++++++
 include/linux/notifier.h                   |  16 ++
 include/linux/printk.h                     |  29 ++-
 include/linux/pstore.h                     |   2 +-
 include/linux/refcount.h                   | 271 ++++++++++++++++++++
 include/linux/string.h                     |   3 +
 include/mach/at91/iomux.h                  |   2 +-
 include/notifier.h                         |   3 +
 include/of.h                               |  12 +-
 include/tee/optee.h                        |   2 +-
 lib/Kconfig                                |   3 +
 lib/Makefile                               |   2 +
 lib/idr.c                                  | 100 ++++++++
 lib/reed_solomon/reed_solomon.c            |   2 +-
 lib/refcount.c                             |  34 +++
 lib/string.c                               |  71 ++++++
 test/self/Kconfig                          |   5 +
 test/self/Makefile                         |   1 +
 test/self/idr.c                            | 119 +++++++++
 55 files changed, 2103 insertions(+), 170 deletions(-)
 create mode 100644 arch/arm/include/asm/word-at-a-time.h
 create mode 100644 arch/kvx/include/asm/word-at-a-time.h
 create mode 100644 arch/mips/include/asm/word-at-a-time.h
 create mode 100644 arch/openrisc/include/asm/word-at-a-time.h
 create mode 100644 arch/powerpc/include/asm/word-at-a-time.h
 create mode 100644 arch/riscv/include/asm/word-at-a-time.h
 create mode 100644 arch/sandbox/include/asm/word-at-a-time.h
 create mode 100644 arch/x86/include/asm/word-at-a-time.h
 create mode 100644 include/asm-generic/cmpxchg-local.h
 create mode 100644 include/asm-generic/cmpxchg.h
 create mode 100644 include/asm-generic/io-typeconfused.h
 create mode 100644 include/asm-generic/word-at-a-time.h
 create mode 100644 include/linux/bits.h
 create mode 100644 include/linux/device.h
 create mode 100644 include/linux/errno.h
 create mode 100644 include/linux/instruction_pointer.h
 create mode 100644 include/linux/io.h
 create mode 100644 include/linux/kref.h
 create mode 100644 include/linux/ktime.h
 create mode 100644 include/linux/notifier.h
 create mode 100644 include/linux/refcount.h
 create mode 100644 lib/idr.c
 create mode 100644 lib/refcount.c
 create mode 100644 test/self/idr.c

-- 
2.39.2



