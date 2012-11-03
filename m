Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUko5-0005ma-P4
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 20:59:06 +0000
Received: from mail635.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 27767FFA64C
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 22:09:35 +0100 (CET)
Date: Sat, 3 Nov 2012 21:56:55 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121103205655.GA29599@game.jcrosoft.org>
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
Subject: [PATCH 0/3] i2c: add at24 eeprom support
To: barebox@lists.infradead.org

HI,

	this patch serie add the at24 eeprom support based on linux 3.6

	the depends on the i2c prepare 1t24 support patch series

The following changes since commit 5526278ac77ecd7109c9c1bbc35d7c74875902e7:

  i2c: add id_table support (2012-11-03 13:33:54 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at24

for you to fetch changes up to fe6968e20c39461df068d5cc15869012be4a3161:

  eeprom: add at24 support (2012-11-03 13:46:50 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      import log2 support from linux
      add roundup and rounddown support
      eeprom: add at24 support

 drivers/eeprom/Kconfig  |   19 ++++++++++
 drivers/eeprom/Makefile |    1 +
 drivers/eeprom/at24.c   |  460 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/i2c/at24.h      |   35 +++++++++++++++++++
 include/linux/kernel.h  |   15 ++++++++
 include/linux/log2.h    |  190 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 6 files changed, 720 insertions(+)
 create mode 100644 drivers/eeprom/at24.c
 create mode 100644 include/i2c/at24.h
 create mode 100644 include/linux/log2.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
