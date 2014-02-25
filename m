Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIIq4-0003C0-PI
 for barebox@lists.infradead.org; Tue, 25 Feb 2014 14:18:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WIIpg-00020V-Sf
 for barebox@lists.infradead.org; Tue, 25 Feb 2014 15:18:04 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WIIpg-0005fr-Rg
 for barebox@lists.infradead.org; Tue, 25 Feb 2014 15:18:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Feb 2014 15:18:00 +0100
Message-Id: <1393337884-17282-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Add bbenv-y support
To: barebox@lists.infradead.org

Currently we can build images for multiple boards at once, but
all share the same default environment. As a last step to real
multi image support this patchset changes this.

bbenv-y is a Makefile target which can be used to generate default
environment snippets. Boards can use it as:

bbenv-$(CONFIG_SOMETHING) += my-environment

The directory containing the files to compile into the binary
should be named my-environment.

This can be accessed in C code later as:

extern unsigned char __bbenv_my_environment_start[];
extern unsigned char __bbenv_my_environment_end[];

The defaultenv snippet can then be registered using defaultenv_append().

With this each board will find the environment it expects during runtime.

Sascha

----------------------------------------------------------------
Sascha Hauer (13):
      common/Makefile: reorder targets
      defaultenv: simplify env dependencies
      make: Add wildcard rules for compressed files
      defaultenv: use wildcard compression rules
      Kconfig: Select default compression type
      filetype: Add detection for barebox environment
      environment: constify arguments
      environment: Add function to load envfs from buffer
      defaultenv: Align defaultenv array
      make: Add bbenv-y target to generate default environment files
      move defaultenv-1 to defaultenv/defaultenv-1
      move defaultenv-2 to defaultenv/defaultenv-2-*
      defaultenv: Allow multiple defaultenvironment overlays

 Makefile                                           |  20 ++-
 commands/loadenv.c                                 |  34 +++-
 common/Kconfig                                     |  45 +++--
 common/Makefile                                    | 153 +++++------------
 common/environment.c                               | 183 +++++++++++++--------
 common/filetype.c                                  |   4 +
 common/startup.c                                   |  44 +----
 defaultenv/Makefile                                |  23 +++
 defaultenv/{ => defaultenv-1}/bin/_boot_help       |   0
 defaultenv/{ => defaultenv-1}/bin/_update          |   0
 defaultenv/{ => defaultenv-1}/bin/_update_help     |   0
 defaultenv/{ => defaultenv-1}/bin/boot             |   0
 defaultenv/{ => defaultenv-1}/bin/init             |   0
 defaultenv/{ => defaultenv-1}/bin/update           |   0
 defaultenv/{ => defaultenv-1}/config               |   0
 .../defaultenv-2-base}/bin/bootargs-ip             |   0
 .../base => defaultenv/defaultenv-2-base}/bin/ifup |   0
 .../base => defaultenv/defaultenv-2-base}/bin/init |   0
 .../defaultenv-2-base}/bin/mtdparts-add            |   0
 .../base => defaultenv/defaultenv-2-base}/boot/net |   0
 .../base => defaultenv/defaultenv-2-base}/config   |   0
 .../defaultenv-2-base}/data/ansi-colors            |   0
 .../defaultenv-2-base}/data/boot-template          |   0
 .../defaultenv-2-base}/init/automount              |   0
 .../base => defaultenv/defaultenv-2-base}/init/ps1 |   0
 .../defaultenv-2-base}/network/eth0                |   0
 .../defaultenv-2-menu}/menu/boot-entries-collect   |   0
 .../defaultenv-2-menu}/menu/boot-entries-edit      |   0
 .../defaultenv-2-menu}/menu/boot-entries-remove    |   0
 .../defaultenv-2-menu}/menu/boot-menu-add-entry    |   0
 .../menu/boot-menu-new-boot-entry                  |   0
 .../defaultenv-2-menu}/menu/init-entries-collect   |   0
 .../defaultenv-2-menu}/menu/init-entries-edit      |   0
 .../defaultenv-2-menu}/menu/init-menu-add-entry    |   0
 .../defaultenv-2-menu}/menu/mainmenu               |   0
 .../defaultenv-2-menu}/menu/settings               |   0
 defaultenv/defaultenv.c                            | 150 +++++++++++++++++
 include/envfs.h                                    |  36 +++-
 include/filetype.h                                 |   1 +
 scripts/Makefile.lib                               |  47 ++++++
 scripts/genenv                                     |  12 +-
 41 files changed, 503 insertions(+), 249 deletions(-)
 create mode 100644 defaultenv/Makefile
 rename defaultenv/{ => defaultenv-1}/bin/_boot_help (100%)
 rename defaultenv/{ => defaultenv-1}/bin/_update (100%)
 rename defaultenv/{ => defaultenv-1}/bin/_update_help (100%)
 rename defaultenv/{ => defaultenv-1}/bin/boot (100%)
 rename defaultenv/{ => defaultenv-1}/bin/init (100%)
 rename defaultenv/{ => defaultenv-1}/bin/update (100%)
 rename defaultenv/{ => defaultenv-1}/config (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/bin/bootargs-ip (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/bin/ifup (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/bin/init (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/bin/mtdparts-add (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/boot/net (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/config (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/data/ansi-colors (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/data/boot-template (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/init/automount (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/init/ps1 (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/network/eth0 (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/boot-entries-collect (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/boot-entries-edit (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/boot-entries-remove (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/boot-menu-add-entry (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/boot-menu-new-boot-entry (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/init-entries-collect (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/init-entries-edit (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/init-menu-add-entry (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/mainmenu (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/settings (100%)
 create mode 100644 defaultenv/defaultenv.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
