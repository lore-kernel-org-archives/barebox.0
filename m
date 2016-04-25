Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auejL-0004cw-TN
 for barebox@lists.infradead.org; Mon, 25 Apr 2016 11:31:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aueiz-0002z8-5P
 for barebox@lists.infradead.org; Mon, 25 Apr 2016 13:30:45 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <sha@pengutronix.de>) id 1aueiy-00031i-Ve
 for barebox@lists.infradead.org; Mon, 25 Apr 2016 13:30:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Apr 2016 13:30:39 +0200
Message-Id: <1461583844-32250-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Create and use C API for ubiformat
To: Barebox List <barebox@lists.infradead.org>

The USB fastboot gadget can call ubiformat when necessary. This is done
by executing the "ubiformat" command. This is not so nice since with
this the fastboot gadget needs command support enabled. This series
gets rid of this dependency by creating a C API for ubiformat.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      commands: ubiformat: Pass around context data
      commands: ubiformat: create separate function for ubiformat
      commands: ubiformat: move code to common/
      usb: fastboot: Use C API for ubiformat
      usb: fastboot: drop CONFIG_COMMAND_SUPPORT dependency

 commands/Kconfig                |   4 +-
 commands/ubiformat.c            | 686 +++-------------------------------------
 common/Kconfig                  |   7 +
 common/Makefile                 |   1 +
 common/ubiformat.c              | 675 +++++++++++++++++++++++++++++++++++++++
 drivers/usb/gadget/Kconfig      |   1 +
 drivers/usb/gadget/f_fastboot.c |  18 +-
 7 files changed, 735 insertions(+), 657 deletions(-)
 create mode 100644 common/ubiformat.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
