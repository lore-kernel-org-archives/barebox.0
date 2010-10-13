Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.konzeptpark.de ([195.226.66.162] helo=mail.konzeptpark.de)
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5zAw-00016o-Sn
	for barebox@lists.infradead.org; Wed, 13 Oct 2010 11:07:21 +0000
Received: from KPLADC0001 (cantor.konzeptpark.de [172.25.0.211])
	by mail.konzeptpark.de (Postfix) with SMTP id D9B10231EA
	for <barebox@lists.infradead.org>;
	Wed, 13 Oct 2010 12:39:34 +0200 (CEST)
Received: from [172.25.0.211] (helo=kpladc0001.konzeptpark.intra)
	by KPLADC0001 with G Data MailSecurity;
	for <barebox@lists.infradead.org>; Wed, 13 Oct 2010 12:40:10 +0200
From: Carsten Schlote <c.schlote@konzeptpark.de>
Date: Wed, 13 Oct 2010 12:40:08 +0200
Message-ID: <1286966408.19212.1.camel@kplaws107lx>
Mime-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: pull-request: kp-mcb2 board files and configuration, GCC 4.5.x
	optimizer workaround, powerpc mach changes
To: barebox@lists.infradead.org

The following changes since commit
a14c018d11ab8931eb0882dd9d7f6bdb04aa6d8b:

  MAKEALL: allow CROSS_COMPILE*="" (2010-10-08 15:43:09 +0200)

are available in the git repository at:
  git://git.vahanus.net/csc/barebox.git for-upstream

Carsten Schlote (5):
      [ppc/mpc5xxx] Fixed typo in cpu_init.c
      [ppc/mpc5xxx] Small text cleanups and ADDECR to output
      [kp-mcb2] Added board files and configs for konzeptpark mcb2
      [compiler] Added OPTIMIZE options to enable GCC optimizer
      [drivers/nor] Fixed mismatch in prototype

 Makefile                                |    2 +-
 arch/arm/Makefile                       |    8 +
 arch/blackfin/Makefile                  |    7 +
 arch/m68k/Makefile                      |    7 +
 arch/ppc/Kconfig                        |   11 +
 arch/ppc/Makefile                       |    8 +
 arch/ppc/boards/kp-mcb2/Makefile        |    2 +
 arch/ppc/boards/kp-mcb2/barebox.lds.S   |  139 ++++++++++++
 arch/ppc/boards/kp-mcb2/config.h        |  253 ++++++++++++++++++++++
 arch/ppc/boards/kp-mcb2/kp-mcb2.c       |  349
+++++++++++++++++++++++++++++++
 arch/ppc/boards/kp-mcb2/kp-mcb2.dox     |    8 +
 arch/ppc/boards/kp-mcb2/mt46v32m16-75.h |   46 ++++
 arch/ppc/mach-mpc5xxx/Kconfig           |    5 +-
 arch/ppc/mach-mpc5xxx/cpu_init.c        |    2 +-
 arch/ppc/mach-mpc5xxx/reginfo.c         |    3 +-
 arch/sandbox/Makefile                   |    8 +
 arch/x86/Makefile                       |    8 +
 common/Kconfig                          |   13 ++
 drivers/nor/cfi_flash.c                 |    2 +-
 19 files changed, 875 insertions(+), 6 deletions(-)
 create mode 100644 arch/ppc/boards/kp-mcb2/Makefile
 create mode 100644 arch/ppc/boards/kp-mcb2/barebox.lds.S
 create mode 100644 arch/ppc/boards/kp-mcb2/config.h
 create mode 100644 arch/ppc/boards/kp-mcb2/kp-mcb2.c
 create mode 100644 arch/ppc/boards/kp-mcb2/kp-mcb2.dox
 create mode 100644 arch/ppc/boards/kp-mcb2/mt46v32m16-75.h

-- 
Carsten Schlote <c.schlote@konzeptpark.de>
konzeptpark.de

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
