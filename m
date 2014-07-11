Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5Vmt-0004eE-UP
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 08:02:36 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1X5VmX-00011V-NH
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 10:02:13 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <sha@pengutronix.de>)
 id 1X5VmX-0001hg-L8
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 10:02:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jul 2014 10:02:09 +0200
Message-Id: <1405065733-31407-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] persistent device names for console devices
To: barebox@lists.infradead.org

Currently the console devices have arbitrary cs0..csx names
which makes them hard to find on the commandline and in scripts.
This series introduces persistent names for console devices and
renames the network console to "netconsole" and the usb serial
console to "usbserial"

Sascha

The following changes since commit 239b6559ed5d65cc3e08eae66eb862fefe651e33:

  images: ignore and clean *.mlo/*.mlospi (2014-07-11 08:27:01 +0200)

are available in the git repository at:

  none 

for you to fetch changes up to c053e2414c2a6c2de81cbbc4e49933042613191b:

  usb: usbserial gadget: Add persistent device name (2014-07-11 09:58:53 +0200)

----------------------------------------------------------------
Sascha Hauer (4):
      console: Allow persistent device names
      serial: imx: Determine device name from device tree
      netconsole: rename console to "netconsole"
      usb: usbserial gadget: Add persistent device name

 common/console.c              | 10 ++++++++--
 drivers/serial/serial_imx.c   |  4 ++++
 drivers/usb/gadget/u_serial.c |  7 ++++++-
 include/console.h             |  2 ++
 net/netconsole.c              |  1 +
 5 files changed, 21 insertions(+), 3 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
