Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyeAL-0004TY-EH
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 11:11:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1Zye9z-0003OL-Kr
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 12:10:51 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1Zye9z-0007IB-Tj
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 12:10:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Nov 2015 12:10:46 +0100
Message-Id: <1447758651-26575-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: loadb console cleanups
To: Barebox List <barebox@lists.infradead.org>

This series has some cleanups for the loadb support. With this loadb
uses a single console device directly to transfer files. This console
device is configurable on the command line is no longer necessarily the
console which outputs messages.

----------------------------------------------------------------
Sascha Hauer (5):
      loadb: Use local cdev
      loadb: deactivate console before using it for loadb
      console: Set baudrate during registration
      loadb: Allow to specify device to use
      loads: Use putchar rather than console_putc

 commands/loadb.c | 78 ++++++++++++++++++++++++++++++++++++++------------------
 commands/loads.c |  6 ++---
 common/console.c | 11 +++-----
 3 files changed, 60 insertions(+), 35 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
