Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOz4-00024P-MB
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 03:43:31 +0000
Received: by mail-qt1-x843.google.com with SMTP id w9so522622qtv.3
 for <barebox@lists.infradead.org>; Tue, 16 Jun 2020 20:43:29 -0700 (PDT)
From: David Dgien <dgienda125@gmail.com>
Date: Tue, 16 Jun 2020 23:43:56 -0400
Message-Id: <20200617034404.5904-1-dgienda125@gmail.com>
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
Subject: [RFC PATCH 0/8] Module and ARM Module updates and fixes
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>

This series fixes various bugs and bit-rot issues with the module
loading code. It also ports a couple of modules features from the Linux
kernel: arch specific section fixups, and module PLTs for ARM modules,
to contain veneers for 'bl' instructions.

There are two things in this series I'm looking for feedback on:
Linux implements module_frob_arch_sections as a weak symbol for the
default case. I didn't see any other "weak" functions in barebox, so I
wasn't sure if using that was acceptable. Since the Kconfig
HAVE_MOD_ARCH_SPECIFIC already exists as part of the change, I just used
that to define a static inline default implementation, but using a weak
function would make that slightly cleaner.

And in the patch that added the init macros to module.h, I wasn't sure
if it would be okay to pollute init.h with the #ifndef MODULE
directives, so instead I just #undef'd all of the initcalls before
redefining them in module.h.  If it's okay to add the #ifndef MODULE to
init.h, that would be significantly cleaner than the current
implementation.

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
 arch/arm/include/asm/module.h |  44 ++++++-
 arch/arm/lib32/Makefile       |   1 +
 arch/arm/lib32/module-plts.c  | 229 ++++++++++++++++++++++++++++++++++
 arch/arm/lib32/module.c       |  14 +++
 arch/arm/lib32/module.lds     |   4 +
 common/Kconfig                |   8 ++
 common/module.c               |  60 +++++----
 include/asm-generic/module.h  |  49 ++++++++
 include/module.h              | 109 ++++++++++++++++
 14 files changed, 523 insertions(+), 32 deletions(-)
 create mode 100644 arch/arm/lib32/module-plts.c
 create mode 100644 arch/arm/lib32/module.lds
 create mode 100644 include/asm-generic/module.h

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
