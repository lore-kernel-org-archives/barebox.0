Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo4.mail-out.ovh.net ([188.165.33.112]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0cXa-0006gb-4e
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 18:05:31 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 46A531050CA4
 for <barebox@lists.infradead.org>; Sun, 12 Aug 2012 20:10:04 +0200 (CEST)
Date: Sun, 12 Aug 2012 20:05:35 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120812180535.GK6271@game.jcrosoft.org>
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
Subject: [PATCH 0/4 v2] fs/mount: add autodetection support
To: barebox@lists.infradead.org

HI,

v2:
	fix typo
	move convert to fs_driver after check

please pull
The following changes since commit 58713d32746d49ad39ba17658fe82f1b98b80b2e:

  commands: memset: fix help message (2012-08-09 08:44:38 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/fs

for you to fetch changes up to 7565f1e0f6877357c3e38f40d73f5773957f94b6:

  command/mount: add autodetection support (2012-08-12 21:46:15 +0800)

----------------------------------------------------------------
fs/mount: add autodetection type support

This will allow to simplify automount support
Make also mount command more linux like

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      fs/mount: add autodetection type support
      filetype: add fat filesystem support
      fs/fat: add filetype
      command/mount: add autodetection support

 arch/arm/boards/crystalfontz-cfa10036/env/init/automount |    2 +-
 arch/arm/boards/mioa701/env/bin/sdcard_override          |    2 +-
 arch/arm/boards/pcm049/env/bin/nand_bootstrap            |    2 +-
 arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap     |    2 +-
 commands/mount.c                                         |   18 +++++++++++++++---
 common/filetype.c                                        |   20 ++++++++++++++++++++
 defaultenv-2/base/init/automount                         |    6 +++---
 fs/Kconfig                                               |    5 +++++
 fs/fat/fat.c                                             |    1 +
 fs/fs.c                                                  |   28 ++++++++++++++++++++++++++++
 include/filetype.h                                       |    1 +
 include/fs.h                                             |    5 +++++
 12 files changed, 82 insertions(+), 10 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
