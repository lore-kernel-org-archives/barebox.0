Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P3qSV-00065E-E3
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 13:24:31 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P3qST-0002s0-EH
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 15:24:29 +0200
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1P3qST-0007ro-D7
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 15:24:29 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu,  7 Oct 2010 15:24:11 +0200
Message-Id: <1286457858-29771-1-git-send-email-jbe@pengutronix.de>
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
Subject: [RFC] Add MCI card support to barebox
To: barebox@lists.infradead.org

This is the second try to send the patch stack via git...hopefully its
complete this time.

This patch is based on some work Sascha made already. I tried to bring in some
light into the MCI framework routines as they are based on code from another
project. Bear with me, if I didn't add useful comments all over the code. I
just wasn't able to understand what happen... If someone has more knowledge
about MCI cards, please take a look at the FIXME/TODOs and make me understand
why the code does what it does.

There is no regular user, yet. The first platform (S3C2440 based) I did the
tests on, is not part of barebox (and will not) and the other platfrom (i.MX23
ChumbOne) is not yet part of barebox. But will coming soon.

Comments are welcome.

Regards,
Juergen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
