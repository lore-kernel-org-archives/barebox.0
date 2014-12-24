Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3dUF-0001SY-1s
 for barebox@lists.infradead.org; Wed, 24 Dec 2014 04:23:51 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 sBO4NTeJ001805
 for <barebox@lists.infradead.org>; Wed, 24 Dec 2014 13:23:30 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili11) with ESMTP id sBO4NTR08366
 for <barebox@lists.infradead.org>; Wed, 24 Dec 2014 13:23:29 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 24 Dec 2014 13:23:25 +0900
Message-Id: <1419395007-31582-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 0/2] kbuild: Fix "make clean" and move asm-offsets.h rule
To: barebox@lists.infradead.org




Masahiro Yamada (2):
  kbuild: add ./Kbuild file to fix "make clean"
  kbuild: move asm-offsets.h rule to ./Kbuild

 Kbuild                          | 43 +++++++++++++++++++++++++++++++++++++++++
 TODO                            |  2 +-
 arch/arm/lib/asm-offsets.c      | 16 +++++++++++++++
 arch/blackfin/lib/asm-offsets.c | 12 ++++++++++++
 arch/efi/lib/asm-offsets.c      | 12 ++++++++++++
 arch/mips/Makefile              | 43 -----------------------------------------
 arch/nios2/lib/asm-offset.c     | 22 +++++++++++++++++++++
 arch/openrisc/lib/asm-offsets.c | 18 +++++++++++++++++
 arch/ppc/lib/asm-offsets.c      | 21 ++++++++++++++++++++
 arch/sandbox/lib/asm-offsets.c  | 12 ++++++++++++
 arch/x86/lib/asm-offsets.c      | 11 +++++++++++
 11 files changed, 168 insertions(+), 44 deletions(-)
 create mode 100644 Kbuild
 create mode 100644 arch/arm/lib/asm-offsets.c
 create mode 100644 arch/blackfin/lib/asm-offsets.c
 create mode 100644 arch/efi/lib/asm-offsets.c
 create mode 100644 arch/nios2/lib/asm-offset.c
 create mode 100644 arch/openrisc/lib/asm-offsets.c
 create mode 100644 arch/ppc/lib/asm-offsets.c
 create mode 100644 arch/sandbox/lib/asm-offsets.c
 create mode 100644 arch/x86/lib/asm-offsets.c

-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
