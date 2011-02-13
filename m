Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PocfC-0001JV-Ni
	for barebox@lists.infradead.org; Sun, 13 Feb 2011 14:11:03 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1Pocf8-0000yZ-Ph
	for barebox@lists.infradead.org; Sun, 13 Feb 2011 15:10:54 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1Pocf8-0003Mc-7f
	for barebox@lists.infradead.org; Sun, 13 Feb 2011 15:10:54 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 13 Feb 2011 15:10:37 +0100
Message-Id: <1297606252-802-1-git-send-email-jbe@pengutronix.de>
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
Subject: RFC: Booting from NAND for mini2440 platform
To: barebox@lists.infradead.org

This patch series brings in NAND boot support for the mini24040 platform and
also does some cleanup (and also fixes some typos).

Testes are welcome, as I only have a mini2440 board with HY57V561620 SDRAM
devices. I added some documentation (thanks to Marek for info how it works
with DFU) about the board itself and how to bring in barebox. Hope it helps
others to enjoy barebox on mini2440.

Regards,
Juergen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
