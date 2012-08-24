Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4lsq-0006r1-Va
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 04:52:38 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 155FDDC0FCD
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 06:57:32 +0200 (CEST)
Date: Fri, 24 Aug 2012 06:52:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120824045246.GJ6271@game.jcrosoft.org>
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
Subject: [PATCH 0/5] defaultenv-2: add boot sequence
To: barebox@lists.infradead.org

HI,

	this patch series depends on fs-symlink send previously

please pull
The following changes since commit 64adf688f4f8cc6c0b7e1f3c4da29e881524c5f0:

  defautenv: add support of symlink (2012-08-23 21:31:57 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/defaultenv-2-boot-sequence

for you to fetch changes up to ae5c90abd8625d1f091a0a089ac29f886fb6c6f5:

  defaultenv-2: add boot sequence (2012-08-24 12:02:36 +0800)

----------------------------------------------------------------
defaultenv-2: add boot sequence

Boot will boot run sequentially the script in /env/boot.d
We store symlink in /env/boot.d on /env/boot

if not global.boot.defaul or global.boot.defaul == seq
start the boot sequence

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (5):
      globalbar: add inline when not enabled
      globalvar: add support to set a value to of all globalvars beginning with 'match'
      defaultenv-2: boot use global.linux.bootargs.dyn for dynamic globarvar
      defaultenv-2: boot reset linux.bootargs.dyn. and bootm. globarvar
      defaultenv-2: add boot sequence

 commands/global.c                          |   58 +++++++++++++++++++++++++++++++++++++++++++++++++++-------
 common/globalvar.c                         |   10 ++++++++++
 defaultenv-2/base/bin/boot                 |   56 +++++++++++++++++++++++++++++++++++++++++++++++++++-----
 defaultenv-2/base/bin/bootargs-ip          |    4 ++--
 defaultenv-2/base/bin/bootargs-ip-barebox  |    2 +-
 defaultenv-2/base/bin/bootargs-ip-dhcp     |    2 +-
 defaultenv-2/base/bin/bootargs-ip-none     |    2 +-
 defaultenv-2/base/bin/bootargs-root-disk   |    2 +-
 defaultenv-2/base/bin/bootargs-root-ext    |    2 +-
 defaultenv-2/base/bin/bootargs-root-initrd |    2 +-
 defaultenv-2/base/bin/bootargs-root-jffs2  |    2 +-
 defaultenv-2/base/bin/bootargs-root-nfs    |    2 +-
 defaultenv-2/base/bin/bootargs-root-ubi    |    2 +-
 defaultenv-2/base/bin/init                 |    5 +++--
 defaultenv-2/base/boot/initrd              |    2 +-
 defaultenv-2/base/init/general             |    2 +-
 include/globalvar.h                        |   23 +++++++++++++++++++++++
 17 files changed, 151 insertions(+), 27 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
