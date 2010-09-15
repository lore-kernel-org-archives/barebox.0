Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OvmOE-0007LK-5f
	for barebox@lists.infradead.org; Wed, 15 Sep 2010 07:26:46 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost.localdomain)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <mkl@pengutronix.de>) id 1OvmOC-0002lt-4H
	for barebox@lists.infradead.org; Wed, 15 Sep 2010 09:26:44 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 15 Sep 2010 09:26:33 +0200
Message-Id: <1284535596-26814-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 0/3] add generic polling infrastructure
To: barebox@lists.infradead.org

This series add a polling infrastructure to barebox. It can be used
to call hardware watchdogs or poll devices to simulate interrupts.

cheers,
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
