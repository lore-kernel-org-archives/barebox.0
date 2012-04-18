Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKU4N-0004Oo-5H
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 12:33:15 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 47F1AFF97C5
 for <barebox@lists.infradead.org>; Wed, 18 Apr 2012 14:22:30 +0200 (CEST)
Date: Wed, 18 Apr 2012 14:02:30 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120418120230.GC1980@game.jcrosoft.org>
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
Subject: [PATCH 0/5 v2] introduce binfmt support
To: barebox@lists.infradead.org

Hi,i

	the following patch series

	Introduce binfmt support

	This will allow to execute any file and detect it's type to handle it.
	This will allow to use shell for bootp bootfile or dfu.

v2:

fix simple conole support
rebase against next

The following changes since commit a2d2e8868fe3c963ebac634b695ae18bb4b411ca:

  config: switch machine to hostname (2012-04-18 12:03:58 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git binfmt

for you to fetch changes up to 2b26b148f4c8633a19bca0cbb96d4393ece8f54e:

  defaultenv: add binfmt support (2012-04-18 20:19:20 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (5):
      filetype: add Bourne Shell support
      Introduce binfmt support
      bootm: add uimage binfmt support
      arm: bootm: add barebox, zImage and aImage binfmt support
      defaultenv: add binfmt support

 arch/arm/lib/bootm.c |   22 +++++++++++-
 commands/bootm.c     |   12 ++++++
 common/Kconfig       |    5 +++
 common/Makefile      |    1 +
 common/binfmt.c      |   95 ++++++++++++++++++++++++++++++++++++++++++++++++++
 common/filetype.c    |    3 ++
 common/hush.c        |   31 ++++++++++------
 defaultenv/bin/boot  |    4 ++
 include/binfmt.h     |   39 ++++++++++++++++++++
 include/filetype.h   |    1 +
 10 files changed, 200 insertions(+), 13 deletions(-)
 create mode 100644 common/binfmt.c
 create mode 100644 include/binfmt.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
