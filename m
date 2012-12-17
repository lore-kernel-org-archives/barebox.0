Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TkVN7-0007pK-PD
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 07:44:22 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TkVN3-0002g3-CK
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 08:44:17 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TkVN3-0003Zm-Bn
 for barebox@lists.infradead.org; Mon, 17 Dec 2012 08:44:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Dec 2012 08:44:14 +0100
Message-Id: <1355730256-13520-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] USB ULPI updates
To: barebox@lists.infradead.org

The following are some updates to the ULPI support. These were
hidden in the Efika Smartbook patches. Here they are separately

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      USB ULPI: Add missing ulpi_write function
      USB ULPI: Add more register/bit defines

 drivers/usb/otg/ulpi.c |   33 +++++++++++++++++++++++++--------
 include/usb/ulpi.h     |   43 +++++++++++++++++++++++++++++++++++--------
 2 files changed, 60 insertions(+), 16 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
