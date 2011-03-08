Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwyD6-0003NL-9A
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 14:48:29 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PwyD3-0007p9-Pg
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:48:25 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PwyD3-0003Fa-OT
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:48:25 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue,  8 Mar 2011 15:48:14 +0100
Message-Id: <1299595704-11733-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] Various fixes to make barebox's x86 support working again
To: barebox@lists.infradead.org

The x86 architecture is currently broken. I already sent this patch stack a
while ago, but it did not find the way into the repository yet.

At least the "[PATCH 02/10] x86: Use the generic linker script initializing"
is a candidate for barebox-master, as it fixes a build time error.

jbe


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
