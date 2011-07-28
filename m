Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmQqm-0004CS-GA
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 13:42:09 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QmQqk-0007ly-8O
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 15:42:06 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QmQqk-0007lm-6n
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 15:42:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 15:41:53 +0200
Message-Id: <1311860524-28566-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: more switches to resources
To: barebox@lists.infradead.org

Sascha Hauer (11):
      serial netx: get rid of map_base
      serial s3c: get rid of map_base
      serial pl010: get rid of map_base
      serial stm: get rid of map_base
      serial mpc5xxx: get rid of map_base
      smc911x: use dev_* instead of printf
      smc911x: switch to use resources
      smc911x: embed eth_device into priv
      ARM pcm037: Fix wrong sdram base
      smc91111: switch to resources
      fec_mpc5200: switch to resources

 arch/arm/boards/pcm037/pcm037.c |    2 +-
 drivers/net/cs8900.c            |    2 +-
 drivers/net/fec_mpc5200.c       |    2 +-
 drivers/net/smc91111.c          |    2 +-
 drivers/net/smc911x.c           |   42 ++++++++---------
 drivers/serial/serial_mpc5xxx.c |   11 +++--
 drivers/serial/serial_netx.c    |   37 ++++++++-------
 drivers/serial/serial_pl010.c   |   11 +++--
 drivers/serial/serial_s3c24x0.c |   31 ++++++++-----
 drivers/serial/stm-serial.c     |   94 ++++++++++++++++++++-------------------
 10 files changed, 122 insertions(+), 112 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
