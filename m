Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22b.google.com ([2a00:1450:400c:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9UxM-0006JO-3x
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 07:57:52 +0000
Received: by mail-wg0-f43.google.com with SMTP id l18so7621923wgh.14
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 00:57:30 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 22 Jul 2014 09:57:19 +0200
Message-Id: <1406015842-20754-1-git-send-email-holgerschurig@gmail.de>
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
Subject: [PATCH 0/3] sandbox: prepare for static checkers
To: barebox@lists.infradead.org

From: Holger Schurig <holgerschurig@gmail.com>

I want to use different compilers and static checkers (e.g. clang's
scan-build) on Barebox.  As a preparatory step I want to maximize code
coverage in an non-crosscompilation environment.

This patch set prepares the tree so that "make ARCH=sandbox allyesconfig"
followed by "make ARCH=sandbox" works and compiles warning free (at least
with Debian's gcc-4.6).

Holger Schurig (3):
  sandbox: disable bareboxcrc32 in sandbox mode
  sandbox: allow "make ARCH=sandbox allyesconfig"
  sandbox: work around missing of_add_memory_bank()

 arch/arm/Kconfig                 |  2 ++
 arch/nios2/Kconfig               |  1 +
 arch/openrisc/Kconfig            |  1 +
 arch/ppc/Kconfig                 |  1 +
 common/Kconfig                   | 17 +++++++++++++++++
 drivers/ata/Kconfig              |  1 +
 drivers/input/Kconfig            |  2 +-
 drivers/net/Kconfig              |  4 ++++
 drivers/of/base.c                |  2 ++
 drivers/regulator/Kconfig        |  1 +
 drivers/usb/host/Kconfig         |  1 +
 drivers/video/imx-ipu-v3/Kconfig |  1 +
 12 files changed, 33 insertions(+), 1 deletion(-)

-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
