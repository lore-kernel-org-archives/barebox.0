Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJaG-00061z-HE
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 05:38:45 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 28 Jan 2020 06:38:17 +0100
Message-Id: <20200128053821.677207-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 0/5] OP-TEE early loading
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

v3 of the OP-TEE early loading patch series.

This allows loading OP-TEE during the lowlevel board initialization,
instead of loading it before the kernel is started.

v3:
- include arm64 setjmp from U-Boot
- build setjmp unconditionally
- rename pl2x0 write test function

v2:
- fixed smaller nits by Sascha Hauer
- include the setjmp import

Rouven Czerwinski (5):
  optee: move optee_verify_header() to common
  ARM: import setjmp implementation from U-Boot
  ARM: add optee early loading function
  ARM: mach-imx: test PL310 write access
  user: add documentation for OP-TEE loading

 Documentation/user/optee.rst        | 29 ++++++++++++++++
 Documentation/user/user-manual.rst  |  1 +
 arch/arm/include/asm/setjmp.h       | 29 ++++++++++++++++
 arch/arm/lib32/Makefile             |  4 +++
 arch/arm/lib32/bootm.c              | 12 ++-----
 arch/arm/lib32/optee-early.c        | 38 ++++++++++++++++++++
 arch/arm/lib32/setjmp.S             | 36 +++++++++++++++++++
 arch/arm/lib64/Makefile             |  1 +
 arch/arm/lib64/setjmp.S             | 41 ++++++++++++++++++++++
 arch/arm/mach-imx/imx6.c            | 20 +++++++++++
 common/Kconfig                      | 54 ++++++++++++++++++-----------
 common/Makefile                     |  2 ++
 common/optee.c                      | 19 ++++++++++
 include/asm-generic/memory_layout.h |  4 +--
 include/tee/optee.h                 | 11 ++++++
 15 files changed, 269 insertions(+), 32 deletions(-)
 create mode 100644 Documentation/user/optee.rst
 create mode 100644 arch/arm/include/asm/setjmp.h
 create mode 100644 arch/arm/lib32/optee-early.c
 create mode 100644 arch/arm/lib32/setjmp.S
 create mode 100644 arch/arm/lib64/setjmp.S
 create mode 100644 common/optee.c

-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
