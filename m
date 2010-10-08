Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P4Fqk-0005az-SR
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 16:31:15 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P4Fqi-0002Tc-4s
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 18:31:12 +0200
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1P4Fqi-0005Jz-2Q
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 18:31:12 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  8 Oct 2010 18:30:48 +0200
Message-Id: <1286555458-20125-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH v2]  Add MCI card support to barebox
To: barebox@lists.infradead.org

This is the second series. Hopefully it include all suggestions made.
It also include Sascha's patches related to MCI.

This patch is based on some work Sascha made already. I tried to bring in some
light into the MCI framework routines as they are based on code from another
project. Bear with me, if I didn't add useful comments all over the code. I
just wasn't able to understand what happen... If someone has more knowledge
about MCI cards, please take a look at the FIXME/TODOs and make me understand
why the code does what it does.

There is only one regular user yet: The i.MX27 based PCA100 platform. The other
platform (S3C2440 based) I did the tests on, is not part of barebox (and will not)
and the i.MX23 based platform (ChumbyOne) is not yet part of barebox.

Comments are still welcome.

Regards,
Juergen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
