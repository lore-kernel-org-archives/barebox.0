Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jXQ-00025k-K9
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:09:54 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q6jXO-0002sb-Bq
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 15:09:46 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q6jXO-0002L6-Av
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 15:09:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:09:38 +0200
Message-Id: <1301922585-8144-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: various fixes and updates
To: barebox@lists.infradead.org

The following contains various bug fixes and updates.

Sascha

Sascha Hauer (7):
      arm: update mach-types
      driver: Do not forget to remove device from active list
      memcpy command: do not set read/write size
      mmc: check correctness of the voltage mask in ocr
      fs: errno should be set correctly before the end of functions
      usbnet: do not initialize ethernet device from usb device
      ARM: Add missing parameter name

 arch/arm/include/asm/armlinux.h |    2 +-
 arch/arm/tools/mach-types       |  248 +++++++++++++++++++++++++++++++++------
 commands/mem.c                  |    2 +-
 drivers/mci/mci-core.c          |   12 ++-
 drivers/net/usb/usbnet.c        |    1 -
 fs/fs.c                         |    5 +-
 lib/driver.c                    |    1 +
 7 files changed, 230 insertions(+), 41 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
