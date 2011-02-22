Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PrzfE-0003Zb-CZ
	for barebox@lists.infradead.org; Tue, 22 Feb 2011 21:20:56 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PrzfA-0001Y8-Lv
	for barebox@lists.infradead.org; Tue, 22 Feb 2011 22:20:52 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PrzfA-0008Jn-Kg
	for barebox@lists.infradead.org; Tue, 22 Feb 2011 22:20:52 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 22 Feb 2011 22:20:48 +0100
Message-Id: <1298409650-28408-1-git-send-email-jbe@pengutronix.de>
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
Subject: [RFC] Add more changes to make the mini2440 work
To: barebox@lists.infradead.org

It seems there are more variants of the mini2440 in the wild than I ever
thought.

If there is someone out there with a different SDRAM and NAND setting than my
system, please test this patches on top of barebox-next. My SDRAM is of type
Hynix HY57V561620FTP-H and my NAND is of type Samsung K9F1208U0C.
It seems my NAND is the only type with 512 byte pages. All other possible
NAND devices (K9F1G08UOB, K9F2G08UOB, K9K8G08U0A) are using 2048 bytes per
page. This difference is important when booting from NAND. So, I add a menu
entry to select 512 or 2048 bytes per page. I have no idea how to handle this
in a different/generic way, as it's hard to detect the NAND device at this
early point of time when the system starts after reset.

Comments are welcome.

jbe


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
