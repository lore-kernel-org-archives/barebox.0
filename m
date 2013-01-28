Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzkxD-0006yT-Go
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 09:24:40 +0000
Received: from mail416.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A6B12DC0860
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2013 10:34:32 +0100 (CET)
Date: Mon, 28 Jan 2013 10:23:20 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130128092320.GQ26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH 0/3] pbl: factorise decompress code and add none compress
 support
To: barebox@lists.infradead.org

HI,

The following changes since commit cd1c289b2a4949e8acb235d4847419bde784a9d6:

  Merge branch 'for-next/misc' into next (2013-01-25 19:51:11 +0100)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/pbl

for you to fetch changes up to c71c520fe4fc180c4546a37105ce2ed4fc674383:

  pbl: add none compression support (2013-01-24 06:30:57 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      pbl: move configs to pbl/Kconfig
      pbl: factorise decompressor
      pbl: add none compression support

 arch/arm/cpu/start-pbl.c        |   21 ++-------------------
 arch/arm/pbl/Makefile           |    3 ++-
 arch/arm/pbl/piggy.shipped.S    |    6 ++++++
 arch/mips/boot/main_entry-pbl.c |   23 +----------------------
 arch/mips/pbl/Makefile          |    3 ++-
 arch/mips/pbl/piggy.shipped.S   |    6 ++++++
 common/Kconfig                  |   42 +-----------------------------------------
 include/pbl.h                   |   15 +++++++++++++++
 pbl/Kconfig                     |   46 ++++++++++++++++++++++++++++++++++++++++++++++
 pbl/Makefile                    |    1 +
 pbl/decomp.c                    |   44 ++++++++++++++++++++++++++++++++++++++++++++
 11 files changed, 126 insertions(+), 84 deletions(-)
 create mode 100644 arch/arm/pbl/piggy.shipped.S
 create mode 100644 arch/mips/pbl/piggy.shipped.S
 create mode 100644 include/pbl.h
 create mode 100644 pbl/Kconfig
 create mode 100644 pbl/decomp.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
