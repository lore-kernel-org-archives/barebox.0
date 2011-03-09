Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PxL8l-00058c-Cx
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 15:17:32 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PxL8h-0004EB-Km
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 16:17:27 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PxL8h-0001eK-JT
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 16:17:27 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed,  9 Mar 2011 16:17:21 +0100
Message-Id: <1299683846-20616-1-git-send-email-jbe@pengutronix.de>
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
Subject: [RFC] Support multiple environments in barebox
To: barebox@lists.infradead.org

This patch series adds handling routines for multiple environments. This
can be usefull if an environment partition gets destroyed by accident. In
this case barebox falls back to a second (or more) environment partition.

The board file just have to register env0, env1 and so on. When running the
saveenv command, barebox will store the new content to all environment
partitions it finds.

Comments are welcome, as this is a cleaned patch stack from one of March
last year. And untested, due to the lack of hardware.

jbe


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
