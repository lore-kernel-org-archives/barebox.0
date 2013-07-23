Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1WGv-0008G9-KC
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 06:40:34 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1V1WGY-0005M0-RU
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 08:40:10 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1V1WGY-0000Bv-Q6
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 08:40:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jul 2013 08:40:04 +0200
Message-Id: <1374561610-686-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] serial: ns16550: Add devicetree support
To: barebox@lists.infradead.org

This adds the necessary preparations to make the ns16550 driver devicetree
aware and finally adds devicetree support to the driver.

----------------------------------------------------------------
Sascha Hauer (6):
      clk: provide static inline wrappers
      serial: ns16550: reorder functions to avoid forward declaration
      serial: ns16550: introduce private struct
      serial: ns16550: remove f_caps from platform_data
      serial: ns16550: Add clk support and make platform_data optional
      serial: ns16550: Add devicetree probe support

 arch/arm/Kconfig                |   3 +
 drivers/clk/Kconfig             |   3 +
 drivers/serial/serial_ns16550.c | 134 ++++++++++++++++++++++++++++------------
 include/linux/clk.h             |  39 +++++++++++-
 include/ns16550.h               |   4 --
 5 files changed, 139 insertions(+), 44 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
