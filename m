Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Cuo-0004re-FV
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 06:21:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1Z2CuS-0001M2-0d
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 08:21:16 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <sha@pengutronix.de>) id 1Z2CuR-0003a6-Of
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 08:21:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jun 2015 08:21:03 +0200
Message-Id: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Add functions for (de)activating consoles and for setting baudrate
To: Barebox List <barebox@lists.infradead.org>

We have some console users like load[bxy] which fiddle with device
parameters to control console activation and baudrate settings. This
series introduces functions for doing this and makes use of them where
possible. The serial download stuff is untested as I have been unable
to get that to work with any of the three protocols and kermit or minicom
as terminal programs. If anyone has a hint how this works I'd be grateful.

Sascha

----------------------------------------------------------------
Sascha Hauer (12):
      console: Add functions to get/set active state of console
      console: Add functions to get/set baudrate
      console: Add console_get_by_name
      console: When switching baudrate print console name
      usb: gadget: serial: Use console_set_active to activate console
      loadxy: Use console_get_by_name
      loadxy: use console_get_baudrate
      loadx: ignore -c option
      loadxy: use console_set_baudrate
      loadb: use console_get_baudrate
      loadb: Use console_set_baudrate
      loadb: ignore -c option

 commands/loadb.c              |  39 ++++----------
 commands/loadxy.c             |  81 ++++++++++------------------
 common/console.c              | 123 ++++++++++++++++++++++++++++--------------
 common/console_common.c       |  13 +++++
 drivers/usb/gadget/u_serial.c |   3 +-
 include/console.h             |   7 +++
 6 files changed, 144 insertions(+), 122 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
