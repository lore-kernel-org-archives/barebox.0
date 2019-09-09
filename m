Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7G1N-0001c7-0n
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 09:31:42 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id DE2034001A
 for <barebox@lists.infradead.org>; Mon,  9 Sep 2019 09:31:38 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  9 Sep 2019 11:31:27 +0200
Message-Id: <20190909093130.30666-1-ahmad@a3f.at>
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
Subject: [PATCH v2 0/3] sandbox: add HWRNG driver for host /dev/random
To: barebox@lists.infradead.org

This series is useful for testing/using barebox,state on sandbox and for
use of host entropy while generating passwords for the target system.
They are in the same series, because the first commit adds linux_open,
which the last depends on.

v1 -> v2:
  - split off example sandbox state device tree into seperate commit
  - renamed device tree example to end with -example.dts

Ahmad Fatoum (3):
  sandbox: hostfile: allow probing from device tree
  sandbox: dts: add example for barebox,hostfile backed state
  hwrng: add sandbox driver interface to host /dev/random

 arch/sandbox/board/Makefile                   |  1 +
 arch/sandbox/board/board.c                    |  7 +++
 arch/sandbox/board/dev-random.c               | 24 +++++++
 arch/sandbox/board/hostfile.c                 | 16 +++--
 arch/sandbox/dts/sandbox-state-example.dtsi   | 50 +++++++++++++++
 .../sandbox/mach-sandbox/include/mach/linux.h |  8 +++
 arch/sandbox/os/common.c                      |  5 ++
 drivers/hw_random/Kconfig                     |  8 +++
 drivers/hw_random/Makefile                    |  1 +
 drivers/hw_random/dev-random.c                | 63 +++++++++++++++++++
 10 files changed, 179 insertions(+), 4 deletions(-)
 create mode 100644 arch/sandbox/board/dev-random.c
 create mode 100644 arch/sandbox/dts/sandbox-state-example.dtsi
 create mode 100644 drivers/hw_random/dev-random.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
