Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIbeY-0006nj-EX
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 08:14:47 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B74A3FF90A7
 for <barebox@lists.infradead.org>; Fri, 13 Apr 2012 10:15:50 +0200 (CEST)
Date: Fri, 13 Apr 2012 09:57:05 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120413075705.GE11079@game.jcrosoft.org>
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
Subject: [PATCH 0/5] introduce binfmt support
To: barebox@lists.infradead.org

Hi,

	the following patch serie

	Introduce binfmt support

	This will allow to execute any file and detect it's type to handle it.
	This will allow to use shell for bootp bootfile or dfu.

	this depend on the pull fix of the zImage

The following changes since commit 9e8b96b0cec32635f681de0718aaa371bd87af49:

  arm: bootm: zImage allow to use the concataned oftree (2012-04-13 15:25:40 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git binfmt

for you to fetch changes up to c678cebe313c4fb90df41cd5aeb3fd01c692adc5:

  defaultenv: add binfmt support (2012-04-13 16:04:51 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (5):
      filetype: add Bourne Shell support
      Introduce binfmt support
      bootm: add uimage binfmt support
      arm: bootm: add barebox and zImage binfmt support
      defaultenv: add binfmt support

 arch/arm/lib/bootm.c |   13 +++++++
 commands/bootm.c     |   12 +++++++
 common/Makefile      |    2 +-
 common/binfmt.c      |   90 ++++++++++++++++++++++++++++++++++++++++++++++++++
 common/filetype.c    |    3 ++
 common/hush.c        |   31 ++++++++++-------
 defaultenv/bin/boot  |    4 ++
 include/binfmt.h     |   26 ++++++++++++++
 include/filetype.h   |    1 +
 9 files changed, 169 insertions(+), 13 deletions(-)
 create mode 100644 common/binfmt.c
 create mode 100644 include/binfmt.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
