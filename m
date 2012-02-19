Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RzB1p-0007DC-2W
 for barebox@lists.infradead.org; Sun, 19 Feb 2012 17:58:30 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RzB1X-0000p5-Bo
 for barebox@lists.infradead.org; Sun, 19 Feb 2012 18:58:11 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RzB1W-0006qh-Ax
 for barebox@lists.infradead.org; Sun, 19 Feb 2012 18:58:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 19 Feb 2012 18:58:03 +0100
Message-Id: <1329674288-25583-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: tftp filesystem support
To: barebox@lists.infradead.org

Handling tftp files has been special in barebox since it needs a special
tftp command. This series implements tftp as a regular filesystem, so no
special handling for tftp anymore.

Unfortunately there is no directory read support in tftp, so a mounted
tftp directory will only show an empty directory, but despite what 'ls'
says the files are really there and can (mostly) be accessed like every
other file. The exception to this is that lseek is not possible on tftp
files which means that bootm needs a quirk.

Sascha

Sascha Hauer (5):
      Add suport for tftp as a filesystem
      make uimages work on tftpfs
      net: let net_udp_get_payload return void *
      add string for -ETIMEDOUT
      copy_file: limit progress bar to sensible limits

 common/misc.c   |    2 +-
 common/uimage.c |   25 +++
 fs/Kconfig      |    4 +
 fs/Makefile     |    1 +
 fs/tftp.c       |  644 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/net.h   |    2 +-
 lib/copy_file.c |    5 +-
 7 files changed, 678 insertions(+), 5 deletions(-)
 create mode 100644 fs/tftp.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
