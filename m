Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cWq-0000LT-Mg
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 14:33:04 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0EE8AE0005
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 14:32:45 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 16:32:33 +0200
Message-Id: <20190827143239.15682-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/6] sandbox: add HWRNG driver for host /dev/random
To: barebox@lists.infradead.org

What's in the topic is what the last patch does. The others are cleanup
or fixes or add a symbol needed by the last patch.

In summary, with this patchset, you can probe barebox,hostfile nodes in
your device tree, create partitions and have e.g. barebox state refer to
it. Some problems with symbol collisions are fixed, which e.g. cause X11
to use barebox strdup on my system, but the glibc free(3), which
resulted in a crash whenever it attempted to open the SDL window.

Ahmad Fatoum (6):
  sandbox: include header to provide missing prototype
  sandbox: remove unused ARCH_LINUX Kconfig symbol
  sandbox: redefine optarg and optind to avoid collisions
  sandbox: compile with symbol -fvisibility=hidden
  sandbox: hostfile: allow probing from device tree
  hwrng: add sandbox driver interface to host /dev/random

 arch/sandbox/Kconfig                          |  3 -
 arch/sandbox/Makefile                         |  6 +-
 arch/sandbox/board/Makefile                   |  1 +
 arch/sandbox/board/board.c                    |  7 +++
 arch/sandbox/board/dev-random.c               | 24 +++++++
 arch/sandbox/board/devices.c                  |  1 +
 arch/sandbox/board/hostfile.c                 | 16 +++--
 arch/sandbox/dts/sandbox-state.dtsi           | 50 +++++++++++++++
 .../sandbox/mach-sandbox/include/mach/linux.h |  8 +++
 arch/sandbox/os/common.c                      |  5 ++
 drivers/hw_random/Kconfig                     |  8 +++
 drivers/hw_random/Makefile                    |  1 +
 drivers/hw_random/dev-random.c                | 63 +++++++++++++++++++
 13 files changed, 184 insertions(+), 9 deletions(-)
 create mode 100644 arch/sandbox/board/dev-random.c
 create mode 100644 arch/sandbox/dts/sandbox-state.dtsi
 create mode 100644 drivers/hw_random/dev-random.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
