Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QstAR-0006Ts-OV
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 09:09:08 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QstAP-00026Z-Jo
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 11:09:05 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QstAP-0005f8-IG
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 11:09:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Aug 2011 11:09:01 +0200
Message-Id: <1313399344-21259-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] initialize barebox_loc on i.MX51
To: barebox@lists.infradead.org

Sascha Hauer (3):
      put env_push_context into postcore_initcall
      ARM i.MX25/35: initialize barebox_loc earlier
      ARM i.MX51: set barebox_loc according to boot source

 arch/arm/mach-imx/boot.c  |    8 +---
 arch/arm/mach-imx/imx51.c |   87 +++++++++++++++++++++++++++++++++++++++++++++
 common/env.c              |    2 +-
 3 files changed, 90 insertions(+), 7 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
