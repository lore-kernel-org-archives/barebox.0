Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qvshy-0004oH-KK
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 15:16:07 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Qvshw-0000Hm-5A
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 17:16:04 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1Qvshw-00071Q-3c
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 17:16:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Aug 2011 17:16:01 +0200
Message-Id: <1314112562-26525-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] support Arm Linux images with CONFIG_AUTO_ZRELADDR
To: barebox@lists.infradead.org

This is needed to make sure images will be located in the first
128MB of SDRAM as required by this kernel option.

Sascha Hauer (1):
      ARM linux: support Linux images with CONFIG_AUTO_ZRELADDR

 arch/arm/lib/bootz.c |   59 +++++++++++++++++++++++++++++++++++++------------
 1 files changed, 44 insertions(+), 15 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
