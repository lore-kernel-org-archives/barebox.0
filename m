Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P3rx4-0003kX-EH
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 15:00:12 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P3rwy-0006s0-Ih
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 17:00:04 +0200
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1P3rwy-0004Wm-He
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 17:00:04 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu,  7 Oct 2010 16:59:53 +0200
Message-Id: <1286463597-16948-1-git-send-email-jbe@pengutronix.de>
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
Subject: Add the i.MX23/i.MX28 architecure
To: barebox@lists.infradead.org

This patch adds the basic support for the i.MX23/i.MX28 architecture. These
CPUs are branded with i.MX but they are mostly of type STMP378X from SigmaTel.
So, they do not share most of their internal devices with the other i.MX CPUs.
That's why I open a new sub architecture 'mach-stm'.

Comments are welcome.

Regards,
Juergen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
