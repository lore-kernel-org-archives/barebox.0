Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RiNH7-0001XB-7w
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 09:36:50 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RiNGq-00071O-4g
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 10:36:32 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RiNGq-0004zS-3i
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 10:36:32 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed,  4 Jan 2012 10:36:28 +0100
Message-Id: <1325669790-18433-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] Fix compile failures due to arch move
To: barebox@lists.infradead.org

The required change in the graphics driver for the S3C24xx arch slipped
through the tests, because it wasn't enabled. This patch enables it to ensure
all S3C24xx related driver will be compile time checked in the future. Also it
fixes the compile-time failure.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
