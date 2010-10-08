Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P48qs-0001pT-P7
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 09:02:56 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1P48qk-0000bC-0h
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 11:02:46 +0200
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1P48qj-0004QH-Vp
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 11:02:45 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  8 Oct 2010 11:02:42 +0200
Message-Id: <1286528563-16026-1-git-send-email-jbe@pengutronix.de>
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
Subject: [2nd try] Switch the i.MX27's PLL in a safe manner
To: barebox@lists.infradead.org

(hopefully this time with *all* files)

This patch is required to switch the PLL of the i.MX27 at runtime without data
loss and random system crashes (but it is only required in this way if the CPU
core does not run at 1.45 V immediatly after reset).

Currently related only to the phyCORE-i.MX27 platform.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
