Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fPMQN-0006CA-Rd
 for barebox@lists.infradead.org; Sun, 03 Jun 2018 06:23:33 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sun,  3 Jun 2018 08:23:10 +0200
Message-Id: <20180603062314.26960-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 0/4] MIPS: provide basic ELF support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

changes v2:
- add dryrun support
- some style fixes
- enable ELF parser only on supported platform (currently only MIPS)

Antony Pavlov (1):
  filetype: add ELF type

Oleksij Rempel (3):
  add basic ELF parser
  bootm: split split bootm_load_devicetree function
  MIPS: bootm: add ELF handler

 arch/mips/lib/bootm.c |  56 ++++++++++++++++
 common/Kconfig        |   5 ++
 common/Makefile       |   1 +
 common/bootm.c        |  39 ++++++++++--
 common/elf.c          | 145 ++++++++++++++++++++++++++++++++++++++++++
 common/filetype.c     |   5 ++
 include/bootm.h       |   1 +
 include/elf.h         |  10 +++
 include/filetype.h    |   1 +
 9 files changed, 257 insertions(+), 6 deletions(-)
 create mode 100644 common/elf.c

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
