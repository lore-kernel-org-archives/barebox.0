Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5ELZ-0002MU-J8
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 09:07:06 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P5ELX-0006Yk-T9
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:07:03 +0200
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1P5ELX-0000qv-Qb
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:07:03 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 11 Oct 2010 11:06:56 +0200
Message-Id: <1286788020-14077-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH v2] Add the i.MX23 architecure to barebox
To: barebox@lists.infradead.org

This patch adds the basic support for the i.MX23 architecture. This
CPUs is branded with i.MX, but they are mostly of type STMP378X from SigmaTel.
So, it does not share most of its internal devices with the other i.MX CPUs.
That's why I open a new sub architecture 'mach-stm'.

This is v2 of my patch series to add the i.MX23 architecture. Slightly
modified for easier i.MX28 addition later on. Defconfigs are regenerated.

jbe


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
