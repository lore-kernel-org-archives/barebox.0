Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta14.messagelabs.com ([193.109.254.105])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC0yC-0002oC-2S
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 07:37:41 +0000
From: Herve Codina <Herve.CODINA@celad.com>
Date: Mon, 6 Jul 2015 09:36:42 +0200
Message-ID: <1436168207-6433-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: [PATCH 0/4] exitcall infrastructure
To: barebox@lists.infradead.org
Cc: Herve Codina <Herve.CODINA@celad.com>

This series adds shutdown hooks mechanism.
The mechanism chosen is based on initcall infrastructure and so the name
given is exitcall.
The first patch implement the exitcall infrastructure.
The other patches move old shutdown functions to this new infrastructure.

Herve Codina (4):
  exitcall: Add exitcall infrastructure
  exitcall: move device_shutdown to exitcall infrastructure
  exitcall: move arch_shutdown to exitcall infrastructure
  exitcall: move board_shutdown to exitcall infrastructure

 arch/arm/boards/animeo_ip/init.c          |    2 +-
 arch/arm/cpu/cpu.c                        |    3 ++-
 arch/arm/include/asm/common.h             |    2 --
 arch/arm/lib/barebox.lds.S                |    4 ++++
 arch/blackfin/boards/ipe337/barebox.lds.S |    4 ++++
 arch/blackfin/include/asm/common.h        |    6 ++----
 arch/blackfin/lib/board.c                 |    7 ++++++-
 arch/efi/lib/elf_ia32_efi.lds.S           |    4 ++++
 arch/efi/lib/elf_x86_64_efi.lds.S         |    4 ++++
 arch/mips/lib/barebox.lds.S               |    4 ++++
 arch/nios2/cpu/barebox.lds.S              |    4 ++++
 arch/nios2/lib/board.c                    |    3 ---
 arch/openrisc/cpu/barebox.lds.S           |    4 ++++
 arch/openrisc/lib/board.c                 |    3 ---
 arch/ppc/boards/pcm030/barebox.lds.S      |    5 +++++
 arch/ppc/mach-mpc85xx/barebox.lds.S       |    5 +++++
 arch/sandbox/board/barebox.lds.S          |    5 +++++
 arch/x86/lib/barebox.lds.S                |    9 ++++++++-
 common/startup.c                          |   18 ++++++++++--------
 drivers/base/driver.c                     |    3 ++-
 include/asm-generic/barebox.lds.h         |    9 +++++++++
 include/common.h                          |    3 ---
 include/driver.h                          |    5 -----
 include/init.h                            |   15 +++++++++++++++
 24 files changed, 98 insertions(+), 33 deletions(-)

-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
