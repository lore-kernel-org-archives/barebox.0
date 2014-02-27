Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ84J-0003TR-Bo
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 21:00:37 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WJ83x-0003oI-Hw
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 22:00:13 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WJ83x-0000q0-Gk
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 22:00:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Feb 2014 22:00:07 +0100
Message-Id: <1393534812-30995-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Add NFS Bootloader Spec support
To: barebox@lists.infradead.org

This series adds support for booting bootloader Spec entries
via NFS. NFS URLs are specified according to rfc2224:

nfs://<host>[:<port>]<url-path>

The port argument is optional.

So 'boot nfs://192.168.2.2//home/sha/nfsroot/generic-v5'

Would look for a bootloader spec entry in the given directory
on the host and start it.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      run_command: remove unused flag parameter
      net: constify eth_get_byname argument
      net: remove old nfs support
      net: Add ifup support
      blspec: Add NFS support

 commands/boot.c                       |   2 +-
 commands/exec.c                       |   2 +-
 commands/login.c                      |   2 +-
 commands/time.c                       |   2 +-
 common/Kconfig                        |   1 +
 common/blspec.c                       | 114 +++++-
 common/hush.c                         |   2 +-
 common/menu.c                         |   2 +-
 common/parser.c                       |   2 +-
 common/startup.c                      |   4 +-
 defaultenv/defaultenv-2-base/bin/ifup |  67 ----
 fs/fs.c                               |   2 +-
 include/common.h                      |   3 +-
 include/net.h                         |   7 +-
 net/Kconfig                           |  15 +-
 net/Makefile                          |   2 +-
 net/eth.c                             |   2 +-
 net/ifup.c                            | 179 +++++++++
 net/nfs.c                             | 737 ----------------------------------
 19 files changed, 322 insertions(+), 825 deletions(-)
 delete mode 100644 defaultenv/defaultenv-2-base/bin/ifup
 create mode 100644 net/ifup.c
 delete mode 100644 net/nfs.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
