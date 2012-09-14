Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCQaT-0005NG-4b
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 07:45:17 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TCQaR-0007Gm-F6
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 09:45:15 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TCQaR-0004S8-Dy
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 09:45:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Sep 2012 09:45:10 +0200
Message-Id: <1347608713-10133-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC, PATCH] barebox-update command support
To: barebox@lists.infradead.org

Hi All,

The following adds barebox-update command support. This command is
supposed to provide a dedicated command for updating barebox.

The rationale behind this is:

- We can add additional generic, SoC specific, board specific sanity
  checks (Is this really a barebox image? Does the image fit into the
  device?)
- Sometimes SoC or board specific fixups are necessary. For example,
  with Omap Nand boot we have to switch the Nand driver into a different
  ECC mode before flashing barebox. With i.MX MMC card boot we want
  to preserve the partition table. On i.MX28 Nand boot we have to create
  a Boot Control Block. The list does not end here...

The current idea is:

A board can register one or multiple update handlers. The update handlers
themselves are registered by a board because only the board knows where
it actually can boot from. Nevertheless there might be generic handlers
available, the most simple one being: Check image header, check size, write
to device.

This is in an early state, right now there are only dummy handlers, hence the
RFC state.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      Add barebox update infrastructure
      ARM: Add dummy update handler
      ARM pcm038: register nor update handler

 arch/arm/boards/pcm038/pcm038.c |    7 +++
 arch/arm/lib/Makefile           |    1 +
 arch/arm/lib/bbu.c              |   56 ++++++++++++++++++++
 commands/Kconfig                |    5 ++
 commands/Makefile               |    1 +
 commands/barebox-update.c       |   80 ++++++++++++++++++++++++++++
 common/Kconfig                  |    3 ++
 common/Makefile                 |    1 +
 common/bbu.c                    |  110 +++++++++++++++++++++++++++++++++++++++
 include/bbu.h                   |   40 ++++++++++++++
 10 files changed, 304 insertions(+)
 create mode 100644 arch/arm/lib/bbu.c
 create mode 100644 commands/barebox-update.c
 create mode 100644 common/bbu.c
 create mode 100644 include/bbu.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
