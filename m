Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRS89-0004Yu-IC
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 19:30:42 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1VRS7j-0002QU-4x
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 21:30:15 +0200
Received: from jlu by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1VRS7j-0000uR-3Y
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 21:30:15 +0200
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  2 Oct 2013 21:30:07 +0200
Message-Id: <1380742211-2731-1-git-send-email-jlu@pengutronix.de>
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
Subject: BeagleBone fixes & cleanup
To: barebox@lists.infradead.org

Hi,

I've tried the recent changes in next on both BeagleBones.

These are actual fixes:
[PATCH 1/4] am33xx_generic: convert from switch to if/else
[PATCH 3/4] arm: omap: am33xx_generic: fix DDR setup for DDR2

These are more 'nice to have':
[PATCH 2/4] arm: mmu: be more verbose if ttb setup fails
[PATCH 4/4] beaglebone: use most recent timings for white variant

Regards,
Jan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
