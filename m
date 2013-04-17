Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USQhk-0002KK-1W
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 11:39:16 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1USQhh-0000uC-ID
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 13:39:09 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1USQhh-0005wY-H4
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 13:39:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Apr 2013 13:39:01 +0200
Message-Id: <1366198748-22717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] memory commands
To: barebox@lists.infradead.org

This series contains some cleanups for the memory commands and a new
memory command: mm. 'mm' allows to manipulate registers bitwise.

Sascha

----------------------------------------------------------------
Sascha Hauer (7):
      memory commands: export common functions
      memory commands: move memory_display to separate file
      Use a common define for RW_BUF_SIZE
      memory commands: cleanup initialization
      memory commands: make rw_buf global
      memory commands: separate into one file per command
      Add memory modify command (mm)

 commands/Kconfig        |  50 ++++-
 commands/Makefile       |   6 +
 commands/md.c           | 116 +++++++++++
 commands/mem.c          | 524 +-----------------------------------------------
 commands/memcmp.c       | 148 ++++++++++++++
 commands/memcpy.c       | 145 ++++++++++++++
 commands/memset.c       | 101 ++++++++++
 commands/mm.c           | 117 +++++++++++
 commands/mw.c           | 104 ++++++++++
 common/Makefile         |   1 +
 common/memory_display.c |  64 ++++++
 include/common.h        |   7 +-
 lib/copy_file.c         |   2 -
 13 files changed, 868 insertions(+), 517 deletions(-)
 create mode 100644 commands/md.c
 create mode 100644 commands/memcmp.c
 create mode 100644 commands/memcpy.c
 create mode 100644 commands/memset.c
 create mode 100644 commands/mm.c
 create mode 100644 commands/mw.c
 create mode 100644 common/memory_display.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
