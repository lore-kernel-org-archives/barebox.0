Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goRIL-0006iX-Cv
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 11:11:11 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 29 Jan 2019 12:10:30 +0100
Message-Id: <cover.419382c8daad35fe16e2722dfdf83304674a066b.1548760200.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH 0/1] OP-TEE support for barebox
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

This is a rebase and update of the testing patch posted by Sascha Hauer
in 2017.

The FIXMEs in the code have been addressed and additional support for
loading optee as a builtin firmware has been added.

Rouven Czerwinski

Sascha Hauer (1):
  ARM: Initial OP-TEE support

 arch/arm/cpu/Makefile              |   2 +-
 arch/arm/cpu/start-kernel-optee.S  |  14 ++++-
 arch/arm/cpu/start.c               |   3 +-
 arch/arm/include/asm/armlinux.h    |   2 +-
 arch/arm/include/asm/barebox-arm.h |   9 ++-
 arch/arm/lib32/armlinux.c          |  10 ++-
 arch/arm/lib32/bootm.c             | 109 +++++++++++++++++++++++++++++-
 arch/arm/lib32/bootu.c             |   2 +-
 arch/arm/lib32/bootz.c             |   2 +-
 commands/bootm.c                   |  11 ++-
 common/Kconfig                     |  33 +++++++++-
 common/bootm.c                     |   6 ++-
 firmware/Kconfig                   |   3 +-
 firmware/Makefile                  |   2 +-
 include/bootm.h                    |   3 +-
 include/tee/optee.h                |  30 ++++++++-
 16 files changed, 234 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/cpu/start-kernel-optee.S
 create mode 100644 include/tee/optee.h

base-commit: 60e12093cf3288086b62612bb3cf565a0b4320aa
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
