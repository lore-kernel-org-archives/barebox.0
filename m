Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ra3wq-0006Lb-VS
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 11:21:33 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Ra3wh-0004EZ-H0
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 12:21:23 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1Ra3wh-0007n4-Fx
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 12:21:23 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 12 Dec 2011 12:21:19 +0100
Message-Id: <1323688881-29140-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH v2] Add support for the more recent Davicom DM9000A and DM9000
To: barebox@lists.infradead.org

The current Davicom DM9000 support covers the DM9000E device only. This patch
series adds support of for the more recent DM9000A and DM9000B variants.
The DM9000E variant is still supported.

Tested on Mini2440 and scb9328 with the DM9000E variant and Mini6410 with the
DM9000A variant.

This is v2 of the patch series, as the first one has forgotten to switch all
users of the existing DM9000 driver to the new one.

Comments are welcome.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
