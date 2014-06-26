Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X05NV-0004fD-5Z
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 08:49:58 +0000
Received: by mail-we0-f175.google.com with SMTP id k48so3334846wev.20
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 01:49:34 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Thu, 26 Jun 2014 10:49:13 +0200
Message-Id: <1403772557-28482-1-git-send-email-holgerschurig@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] sandbox: prepare for static checkers
To: barebox@lists.infradead.org

I want to use different compilers and static checkers (e.g. clang's
scan-build) on Barebox.  As a preparatory step I want to maximize code
coverage in an non-crosscompilation environment.

This patch set prepares the tree so that "make ARCH=sandbox allyesconfig"
followed by "make ARCH=sandbox" works and compiles warning free, at least
with Debian's gcc-4.6.

Holger Schurig (4):
  commands: include missing header
  sandbox: only access of_add_memory_bank if it's defined
  sandbox: add bit manipulation stuff
  sandbox: allow "make ARCH=sandbox allyesconfig"

 arch/sandbox/include/asm/bitops.h |    7 +++++++
 commands/linux_exec.c             |    1 +
 common/Kconfig                    |   21 +++++++++++++++++++++
 drivers/ata/Kconfig               |    1 +
 drivers/input/Kconfig             |    2 +-
 drivers/net/Kconfig               |    4 ++++
 drivers/of/base.c                 |    6 ++++++
 drivers/regulator/Kconfig         |    1 +
 drivers/usb/host/Kconfig          |    1 +
 drivers/video/imx-ipu-v3/Kconfig  |    1 +
 10 files changed, 44 insertions(+), 1 deletion(-)

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
