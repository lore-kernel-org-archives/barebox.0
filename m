Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwLtE-0002vc-RP
	for barebox@lists.infradead.org; Sun, 06 Mar 2011 21:53:25 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PwLtB-0003m6-HP
	for barebox@lists.infradead.org; Sun, 06 Mar 2011 22:53:21 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PwLtB-0001de-DV
	for barebox@lists.infradead.org; Sun, 06 Mar 2011 22:53:21 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun,  6 Mar 2011 22:53:13 +0100
Message-Id: <1299448398-5672-1-git-send-email-jbe@pengutronix.de>
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
Subject: [RFC/PATCH v2] S3C24xx: NAND management changes to support booting
	from NAND
To: barebox@lists.infradead.org

This is revision two of my patch series to make the mini2440 booting from NAND.
This seems somehow tricky: The mini2440 with a 64 MiB NAND works fine here,
but the one with 128 MiB does currently boot only.
In the first patch series where some errors in page address calculation, so
they cannot work. This patch series might do it in a correct manner, but now
only tested on 64 MiB and 128 MiB NAND. At least booting from NAND is now
working also from 128 MiB. But the ECC handling fails, and I have no idea
whats wrong now: Reading the environment fails with 'err: -74'...

Comments and ideas are welcome.

Juergen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
