Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q88mo-00079B-2o
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 10:19:30 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri,  8 Apr 2011 12:19:01 +0200
Message-Id: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 0/7] defaultenv updates
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

Hello,

this patch series updates the default env. It takes care about some problems
that arise if linux has two network interfaces (e.g. the mx28) and adds
support for kernel and/or rootfs location disk. Which can be a mmc
(in case of the mx28) or in the x86 case a bios disk.

please review and consider to apply.

cheers, Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
