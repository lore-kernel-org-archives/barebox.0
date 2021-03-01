Delivery-date: Mon, 01 Mar 2021 12:02:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgK6-0004Uf-HZ
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 12:02:46 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgK5-0000H2-Jj
	for lore@pengutronix.de; Mon, 01 Mar 2021 12:02:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0tGyiwoAUAx3EdModP3ToUgttm4jG+1k+G/2RZFZSsM=; b=Uap9FphuED39BrCsjQNJeRCrFJ
	0onBSkoj3aVDsTyFhOdJks57gfuwEt9BbGgFVfmNPLqg1VA0Albu0cBzQRt2pBKy2VgtgqinDE6y9
	z1XeBY2GV4826bWzYv3UJ0vYgHYABgD7x76dxEQ9DHdMKrFfnik04YN421LtoUUof8Cof7ziqn2kN
	QQH2y5qp7lqeXSq0HC3SMdTn1QclOxL/HWr1lYPxF7pMCWtZhU+IcXGod3LGoQ9aa6SlGqtzWhx6k
	hmq3Atvt+EwrYlAyiHXOPAyGkRvT4iDZNuWdq7+iOSn5MPvo1J1pG4UW0/KoR6uDHhtTi/Y3gXdnD
	JTvbO7qg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGgIr-0005Nk-CR; Mon, 01 Mar 2021 11:01:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGgIe-0005Hw-IH
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 11:01:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIb-00089B-5z; Mon, 01 Mar 2021 12:01:13 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIa-0001ax-Ab; Mon, 01 Mar 2021 12:01:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 12:00:55 +0100
Message-Id: <20210301110106.3764-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_060116_718165_E8111735 
X-CRM114-Status: GOOD (  14.21  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Stafford Horne <shorne@gmail.com>,
 sha@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/11] common: introduce bthreads, co-operative
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

This is v2 of barebox coroutine support:
    https://lists.infradead.org/pipermail/barebox/2021-February/035032.html

As discussed with Sascha, if this is to be added, this should be added for
all architectures and not be optional. If we have this as integral part,
it means we can substitute coroutines for:
    - pollers: just wrap the code in a loop
    - async pollers: just call a delay function in the loop
    - workqueues: assert_command_context yields until in command context

In addition, we will have much less work porting over threaded code from
Linux. See the referenced series for an example of a USB mass storage
gadget.

To prepare for replacing them, the functionality is renamed to
bthreads (as in barebox threads) and is made separate from pollers.

How to add new architecture support:

  - Apply this series or check out https://github.com/a3f/barebox/tree/bthread
  - Add implementations for setjmp, longjmp
    - Most easily extracted out of a libc, because they are C standard functions
    - Floating context backup can be omitted
  - Add implementation of initjmp
    - copy out the parts of setjmp that set return address and stack pointer
    - Check the architecture implemented in this series for examples
  - Add type definition and prototypes to <asm/setjmp.h>
  - select HAS_ARCH_SJLJ from arch config symbol
  - Test by running bthread -v


Current state of CONFIG_HAS_ARCH_SJLJ

    [x] arm 32-bit (Ahmad)
    [x] arm 64-bit (Sascha)
    [x] mips (Sascha)
    [x] powerpc (Sascha)
    [x] riscv (Sascha)
    [x] sandbox (Ahmad)
    [-] nios2 (Removed; Sascha)
    [?] x86 32-bit (Ahmad)
    [?] x86 64-bit (Ahmad)
    [?] openrisc (Stafford?)
    [?] kvx (Jules?)

Legend: [-] arch removed, [x] implemented, [?] TODO

@Sascha, could this already be merged? I won't add a new users till it
can be selected for all architectures.

Cheers,
Ahmad Fatoum (5):
  console: unconditionally run poller_call in ctrlc()
  common: introduce bthreads, co-operative barebox threads
  ARM: asm: setjmp: annotate setjmp/longjmp for GCC
  ARM: asm: setjmp: implement coroutine dependency initjmp()
  sandbox: asm: implement setjmp/longjmp/initjmp

Sascha Hauer (6):
  riscv: Add asm/asm.h
  riscv: Add asm/linkage.h
  riscv: Implement setjmp/longjmp/initjmp
  mips: Add linkage.h
  mips: Implement setjmp/longjmp/initjmp
  powerpc: Implement initjmp/setjmp/longjmp

 Documentation/devel/background-execution.rst |  43 +++-
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
 arch/riscv/lib/Makefile                      |   2 +-
 arch/riscv/lib/longjmp.S                     |  28 +++
 arch/riscv/lib/setjmp.S                      |  35 +++
 arch/sandbox/Kconfig                         |   1 +
 arch/sandbox/Makefile                        |   5 +-
 arch/sandbox/include/asm/setjmp.h            |  17 ++
 arch/sandbox/os/Makefile                     |   5 +-
 arch/sandbox/os/setjmp.c                     | 180 ++++++++++++++++
 commands/Kconfig                             |   9 +
 commands/Makefile                            |   1 +
 common/Kconfig                               |  13 ++
 common/Makefile                              |   1 +
 common/bthread.c                             | 214 +++++++++++++++++++
 common/clock.c                               |   5 +-
 common/console.c                             |   6 +-
 include/bthread.h                            |  31 +++
 include/slice.h                              |  16 +-
 lib/readline.c                               |   5 +-
 36 files changed, 929 insertions(+), 24 deletions(-)
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
 create mode 100644 common/bthread.c
 create mode 100644 include/bthread.h

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

