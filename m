Delivery-date: Wed, 10 Mar 2021 09:49:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXD-00019c-1L
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:49:39 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXB-000236-95
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:49:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rQ9my6+6wX1r+3e24hFk2tUF2PNYtZ/PfjeXYw6j98Q=; b=FB4qsgCAMjD6uudyCuXiQ6Kn3l
	XCglTkW+WE4jHAMoXlClTQJyToSzIlvSKFqgkB2kHvM5a0hKwuyGrHnh4A1h2KfYnQHQoHtpE3kk2
	Urt4rNMPGMzgM1P9CHBmAzHlmywO/bJrQ8NG9/gz+f/caE9Bsc89tAqKvEw3Fqi44ruQq5Kk0CosY
	klJPmGxp12zmB5BJ8Ys+pbRn4595U8NpeUAnkemwI538F+Ot1JXDiMTDoWxt+ZcV4jEXyGRr2BgsM
	DOEquXxkzxZj9w8CJYXxtj5/9FFHBK2i3OzsJeZCIoibe0+9vUUhtYGDO6VMXDKqQe1LaXn81PUsR
	WcnwEfiA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJuVt-006LNZ-DX; Wed, 10 Mar 2021 08:48:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJuVh-006LJY-0J
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:48:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVf-0001TV-2l; Wed, 10 Mar 2021 09:48:03 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVd-0001z7-FJ; Wed, 10 Mar 2021 09:48:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Peter Korsgaard <peter@korsgaard.com>,
 Sascha Hauer <sha@pengutronix.de>
Date: Wed, 10 Mar 2021 09:47:44 +0100
Message-Id: <20210310084800.3584-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_084805_338795_5B3C1FD6 
X-CRM114-Status: GOOD (  12.97  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 00/16] common: introduce bthreads, co-operative
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Current state of CONFIG_HAS_ARCH_SJLJ

    [x] arm 32-bit (Ahmad)
    [x] arm 64-bit (Sascha)
    [x] mips (Sascha)
    [x] powerpc (Sascha)
    [x] riscv (Sascha)
    [x] sandbox (Ahmad)
    [-] nios2 (Removed; Sascha)
    [x] x86 32-bit (Ahmad)
    [x] x86 64-bit (Ahmad)
    [x] openrisc (Stafford)
    [x] kvx (Jules)

Legend: [-] arch removed, [x] implemented

Changes since v2:
  - Reworked bthread_reschedule(): Threads now always schedule the next
    thread in the runqueue. Simplifies code and saves context switch back
    to scheduler
  - Removed assert_command_context yield. Will need further rework until
    it's usable, so just warn for now like with pollers
  - Added resched() to collect the reschedule bits in one place
  - Migrate LED poller as an example
  - Rework bthread command to use API better
  - Split up commits for shorter, reworked, commit messages
  - Fixed poor English and copy-paste errors (Peter Korsgaard)
  - Marked RISC-V and MIPS CONFIG_HAS_ARCH_SJLJ explicitly 32-bit only
    (Peter Mamonov)
  - Added x86 implementations (tested on EFI x86_64 and i386 sandbox)

Cheers,
Ahmad Fatoum (10):
  common: introduce HAS_ARCH_SJLJ
  ARM: asm: setjmp: annotate setjmp/longjmp for GCC
  ARM: asm: setjmp: implement coroutine dependency initjmp()
  sandbox: asm: implement setjmp/longjmp/initjmp
  x86: implement setjmp/longjmp/initjmp
  common: poller: replace explicit calls to poller_call() with resched()
  console: unconditionally run resched() in ctrlc()
  common: introduce bthreads, co-operative barebox threads
  commands: add new bthread test command
  RFC: led: migrate from poller to bthread

Sascha Hauer (6):
  riscv: Add asm/asm.h
  riscv: Add asm/linkage.h
  riscv: Implement setjmp/longjmp/initjmp for RV32I
  mips: Add linkage.h
  mips: Implement setjmp/longjmp/initjmp for 32BIT
  powerpc: Implement initjmp/setjmp/longjmp

 Documentation/devel/background-execution.rst |  37 +++-
 arch/arm/Kconfig                             |   1 +
 arch/arm/include/asm/setjmp.h                |   6 +-
 arch/arm/lib32/setjmp.S                      |   8 +
 arch/arm/lib64/setjmp.S                      |   9 +
 arch/mips/Kconfig                            |   1 +
 arch/mips/include/asm/linkage.h              |   9 +
 arch/mips/include/asm/setjmp.h               |  32 +++
 arch/mips/lib/Makefile                       |   1 +
 arch/mips/lib/setjmp.S                       |  50 +++++
 arch/powerpc/Kconfig                         |   1 +
 arch/powerpc/include/asm/setjmp.h            |  21 ++
 arch/powerpc/lib/Makefile                    |   2 +-
 arch/powerpc/lib/setjmp.S                    |  86 ++++++++
 arch/riscv/Kconfig                           |   1 +
 arch/riscv/include/asm/asm.h                 |  69 ++++++
 arch/riscv/include/asm/linkage.h             |  12 ++
 arch/riscv/include/asm/setjmp.h              |  27 +++
 arch/riscv/lib/Makefile                      |   1 +
 arch/riscv/lib/longjmp.S                     |  28 +++
 arch/riscv/lib/setjmp.S                      |  35 +++
 arch/sandbox/Kconfig                         |   1 +
 arch/sandbox/Makefile                        |   5 +-
 arch/sandbox/include/asm/setjmp.h            |  17 ++
 arch/sandbox/os/Makefile                     |   5 +-
 arch/sandbox/os/setjmp.c                     | 180 ++++++++++++++++
 arch/x86/Kconfig                             |   2 +
 arch/x86/include/asm/setjmp.h                |  44 ++++
 arch/x86/lib/Makefile                        |   3 +
 arch/x86/lib/setjmp_32.S                     |  60 ++++++
 arch/x86/lib/setjmp_64.S                     |  60 ++++++
 commands/Kconfig                             |   9 +
 commands/Makefile                            |   1 +
 commands/bthread.c                           | 195 +++++++++++++++++
 common/Kconfig                               |  13 ++
 common/Makefile                              |   1 +
 common/bthread.c                             | 214 +++++++++++++++++++
 common/clock.c                               |   4 +-
 common/console.c                             |   6 +-
 drivers/led/core.c                           |  52 ++---
 include/bthread.h                            |  53 +++++
 include/poller.h                             |   2 +
 include/sched.h                              |  15 ++
 include/slice.h                              |  17 +-
 lib/readline.c                               |   4 +-
 45 files changed, 1349 insertions(+), 51 deletions(-)
 create mode 100644 arch/mips/include/asm/linkage.h
 create mode 100644 arch/mips/include/asm/setjmp.h
 create mode 100644 arch/mips/lib/setjmp.S
 create mode 100644 arch/powerpc/include/asm/setjmp.h
 create mode 100644 arch/powerpc/lib/setjmp.S
 create mode 100644 arch/riscv/include/asm/asm.h
 create mode 100644 arch/riscv/include/asm/linkage.h
 create mode 100644 arch/riscv/include/asm/setjmp.h
 create mode 100644 arch/riscv/lib/longjmp.S
 create mode 100644 arch/riscv/lib/setjmp.S
 create mode 100644 arch/sandbox/include/asm/setjmp.h
 create mode 100644 arch/sandbox/os/setjmp.c
 create mode 100644 arch/x86/include/asm/setjmp.h
 create mode 100644 arch/x86/lib/setjmp_32.S
 create mode 100644 arch/x86/lib/setjmp_64.S
 create mode 100644 commands/bthread.c
 create mode 100644 common/bthread.c
 create mode 100644 include/bthread.h
 create mode 100644 include/sched.h

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

