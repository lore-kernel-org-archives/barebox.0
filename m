Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jq4NX-0007jC-A3
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 00:44:03 +0000
Received: by mail-qt1-x843.google.com with SMTP id v19so14339564qtq.10
 for <barebox@lists.infradead.org>; Mon, 29 Jun 2020 17:44:01 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Mon, 29 Jun 2020 20:38:30 -0400
Message-Id: <20200630003838.7745-1-dgienda125@gmail.com>
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
Subject: [PATCH v2 0/8] Module and ARM Module updates and fixes
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

This series fixes various bugs and bit-rot issues with the module
loading code. It also ports a couple of modules features from the Linux
kernel: arch specific section fixups, and module PLTs for ARM modules,
to contain veneers for 'bl' instructions.

Changes since v1:
  - Added #ifndef MODULE guards to init.h, and removed #undefine
    directives from module.h
  - Created a weak function for module_frob_arch_sections default
    implementation

David Dgien (8):
  Makefile: Initialize and export KBUILD variables
  module: Add init macros to module.h
  module: Fix adding module to list after layout
  module: Fix module command registration
  module: Implement HAVE_MOD_ARCH_SPECIFIC
  arm: makefile: Fix compiler flag variable
  arm: elf: Add THM relocation types
  arm: module: Allow modules outside of bl range

 Makefile                      |  12 +-
 arch/arm/Kconfig              |  15 +++
 arch/arm/Makefile             |   6 +-
 arch/arm/cpu/Kconfig          |   1 +
 arch/arm/include/asm/elf.h    |   3 +
 arch/arm/include/asm/module.h |  33 ++++-
 arch/arm/lib32/Makefile       |   1 +
 arch/arm/lib32/module-plts.c  | 229 ++++++++++++++++++++++++++++++++++
 arch/arm/lib32/module.c       |  14 +++
 arch/arm/lib32/module.lds     |   4 +
 common/Kconfig                |   7 ++
 common/module.c               |  68 ++++++----
 include/asm-generic/module.h  |  49 ++++++++
 include/init.h                |  26 ++--
 include/module.h              |  78 ++++++++++++
 15 files changed, 505 insertions(+), 41 deletions(-)
 create mode 100644 arch/arm/lib32/module-plts.c
 create mode 100644 arch/arm/lib32/module.lds
 create mode 100644 include/asm-generic/module.h

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
