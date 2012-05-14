Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STpeE-000188-OR
 for barebox@lists.infradead.org; Mon, 14 May 2012 07:24:51 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1STpe9-00032j-6r
 for barebox@lists.infradead.org; Mon, 14 May 2012 09:24:45 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1STpe9-0004m8-5t
 for barebox@lists.infradead.org; Mon, 14 May 2012 09:24:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 May 2012 09:24:39 +0200
Message-Id: <1336980281-30288-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] global shell variables and more flexible bootargs
To: barebox@lists.infradead.org

We need global shell variables in barebox and currently try to
emulate this by sourcing scripts instead of executing them. This
adds global variable support by registering a device named 'global'
and registering device parameters on it.
This is then used to add a more flexible bootargs mechanism. Instead
of using a single variable we can now use variables beginning with
'linux.bootargs.' and 'linux.mtdparts.' which will be concatenated
together to a valid bootargs string.

This is mainly done as another step forward to a new default environment
which will make use of this.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      add 'global' command
      booting: more flexible Linux bootargs generation

 arch/arm/lib/armlinux.c            |    2 +-
 arch/arm/lib/bootm.c               |    3 +-
 arch/blackfin/lib/blackfin_linux.c |    2 +-
 arch/nios2/lib/bootm.c             |    2 +-
 commands/Kconfig                   |   19 +++++++++
 commands/Makefile                  |    1 +
 commands/global.c                  |   62 ++++++++++++++++++++++++++++
 commands/linux16.c                 |    2 +-
 common/Kconfig                     |    7 ++++
 common/Makefile                    |    2 +
 common/bootargs.c                  |   79 ++++++++++++++++++++++++++++++++++++
 common/globalvar.c                 |   65 +++++++++++++++++++++++++++++
 common/oftree.c                    |    3 +-
 include/boot.h                     |   16 ++++++++
 include/globalvar.h                |   12 ++++++
 15 files changed, 271 insertions(+), 6 deletions(-)
 create mode 100644 commands/global.c
 create mode 100644 common/bootargs.c
 create mode 100644 common/globalvar.c
 create mode 100644 include/globalvar.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
