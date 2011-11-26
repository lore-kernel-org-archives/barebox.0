Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUOmJ-0000zX-2Y
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 20:23:17 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RUOmA-0004rp-4g
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 21:23:06 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RUOm9-00084M-3u
 for barebox@lists.infradead.org; Sat, 26 Nov 2011 21:23:05 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 26 Nov 2011 21:22:47 +0100
Message-Id: <1322338981-30978-1-git-send-email-jbe@pengutronix.de>
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
Subject: [RFC] Prepare to add more Samsung S3C CPUs to barebox
To: barebox@lists.infradead.org

This patch series tries to make the current Samsung S3C24XX CPU and platform
support more generic to be able to add Samsung's more recent S3C CPUs (S3C64XX
for example). Some drivers can be shared between members in the S3C family of
processors, so the drivers get a s3c in their names to reflect it. But some
parts stick to their processor. To avoid an ifdef hell, I moved these parts
into separte files.

Comments are welcome.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
