Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9I1H-0006Bc-Bg
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:23:11 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q9I1F-0000DY-T9
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 16:23:09 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q9I1F-0006bM-S4
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 16:23:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:23:08 +0200
Message-Id: <1302531789-25169-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: FAT filesystem support
To: barebox@lists.infradead.org

The following adds FAT read/write support to barebox.

Sascha Hauer (1):
      fs: add fat filesystem support

 fs/Kconfig       |    2 +
 fs/Makefile      |    1 +
 fs/fat/Kconfig   |   15 +
 fs/fat/Makefile  |    1 +
 fs/fat/diskio.h  |   78 ++
 fs/fat/fat.c     |  434 +++++++++
 fs/fat/ff.c      | 2761 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 fs/fat/ff.h      |  239 +++++
 fs/fat/ffconf.h  |  145 +++
 fs/fat/integer.h |   28 +
 10 files changed, 3704 insertions(+), 0 deletions(-)
 create mode 100644 fs/fat/Kconfig
 create mode 100644 fs/fat/Makefile
 create mode 100644 fs/fat/diskio.h
 create mode 100644 fs/fat/fat.c
 create mode 100644 fs/fat/ff.c
 create mode 100644 fs/fat/ff.h
 create mode 100644 fs/fat/ffconf.h
 create mode 100644 fs/fat/integer.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
