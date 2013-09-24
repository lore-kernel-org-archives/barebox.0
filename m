Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOMkD-00050b-Me
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 07:09:19 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VOMjo-0003nn-IO
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 09:08:48 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VOMjo-00021F-HC
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 09:08:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Sep 2013 09:08:36 +0200
Message-Id: <1380006527-2599-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Bootm patches
To: barebox@lists.infradead.org

The following contains some memory leak fixes and cleanups for bootm,
but more important: The conversion of the current defenv-2 'boot' script
to a command with the same semantics.

Motivation for doing this was that the current shell script(s) are already
stretched to the limits we can handle with our limited shell. The C code
instead looks rather simple and can be further extended. One of these
extensions will come very soon in the form of the bootloader spec:
http://www.freedesktop.org/wiki/Specifications/BootLoaderSpec/
So this series is mainly a preparation for it.

Sascha

----------------------------------------------------------------
Sascha Hauer (11):
      bootm: fix possible memory leak
      bootm: fix memory leak
      bootm: check for os image file
      bootm: remove unused define
      bootm: move getenv_loadaddr from command to common
      bootm: move globalvars from command to common
      bootm: separate bootm input data and internal data
      bootm: Add dryrun support
      ARM: compile bootm code depending on CONFIG_BOOTM
      command: Let builtin command take precedence
      defenv-2: replace boot script with command

 arch/arm/Kconfig                 |   2 +-
 arch/arm/lib/Makefile            |   2 +-
 commands/Kconfig                 |  11 ++
 commands/Makefile                |   1 +
 commands/boot.c                  | 258 +++++++++++++++++++++++++++++++++++++++
 commands/bootm.c                 |  81 +++---------
 common/Kconfig                   |   1 +
 common/binfmt.c                  |   5 +-
 common/bootm.c                   |  87 ++++++++++++-
 defaultenv-2/base/bin/_boot      |  44 -------
 defaultenv-2/base/bin/_boot_help |  20 ---
 defaultenv-2/base/bin/_boot_list |   7 --
 defaultenv-2/base/bin/boot       |  65 ----------
 include/boot.h                   |  18 ++-
 14 files changed, 395 insertions(+), 207 deletions(-)
 create mode 100644 commands/boot.c
 delete mode 100644 defaultenv-2/base/bin/_boot
 delete mode 100644 defaultenv-2/base/bin/_boot_help
 delete mode 100644 defaultenv-2/base/bin/_boot_list
 delete mode 100644 defaultenv-2/base/bin/boot

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
