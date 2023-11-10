Delivery-date: Fri, 10 Nov 2023 22:45:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZK7-006Tzt-0S
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 22:45:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZK6-0004pB-VY
	for lore@pengutronix.de; Fri, 10 Nov 2023 22:45:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aSRzyhS5xmIs/ByzEgtw4Mmr2D4zf68dKQrktrT0ck0=; b=ExDpsg0+6Y3jJg3CFrsRfLJADx
	7zdoC+vawdxlIS2YyerMwyIq+MuEzF474oewPvTXjaaR9uzYmK1xKBg83LgkekbKBR4D/57aVxJnI
	MpFAoxhtYwHEVWGjEntoQ1cSzJtqNfdxwZKScoihRy/ZSBQdk/vAh9Jg2fyVwbmGPbdpTbmuiBtAT
	EAe0o4m+7xOtTcvrcSroL4b6xWDgtGdgrrYUYDxK3xQ5EnoOkkC5MeNu9oLPzUg5nE9s/BO58Y6vI
	FsasBxOHNhuvXt3HfGMLTl+ubxmwWbT9f0LDRWLbMo7oLAnU3czypuPiB1w2TdooW2DE9ggqSVt0D
	k4BvKpLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1ZIq-009UFY-0t;
	Fri, 10 Nov 2023 21:44:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1ZIl-009UC3-0I
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 21:44:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-0004CY-HT
	for barebox@lists.infradead.org; Fri, 10 Nov 2023 22:44:24 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-0086y9-4Z
	for barebox@lists.infradead.org; Fri, 10 Nov 2023 22:44:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-00BRGz-0B
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 22:44:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 10 Nov 2023 22:44:03 +0100
Message-Id: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_134431_124675_0A82130E 
X-CRM114-Status: GOOD (  12.07  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/18] prepare for porting OP-TEE communication support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, barebox support for OP-TEE was restricted to loading it either
early in PBL or via bootm and to not step over it when allocating
memory. This was guarded behind CONFIG_HAVE_OPTEE.

To prepare porting the Linux driver behind CONFIG_OPTEE, which
brings actual bidirectional communication with OP-TEE to barebox,
let's import some of the headers and APIs used by the v6.6 Linux
driver.

Ahmad Fatoum (18):
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
  include: implement dev_warn_once and friends
  include: add blocking notifier aliases
  include: add Linux ktime API
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
 include/linux/idr.h                        |  69 ++++-
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
 include/of.h                               |  10 +
 include/tee/optee.h                        |   2 +-
 lib/Makefile                               |   1 +
 lib/reed_solomon/reed_solomon.c            |   2 +-
 lib/refcount.c                             |  34 +++
 lib/string.c                               |  71 ++++++
 49 files changed, 1906 insertions(+), 143 deletions(-)
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
 create mode 100644 lib/refcount.c

-- 
2.39.2



