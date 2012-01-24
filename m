Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpdyF-00045u-IQ
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 10:51:24 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=hardanger.do.blackshift.org)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mkl@pengutronix.de>) id 1Rpdy1-0006Ei-Rq
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 11:51:09 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 24 Jan 2012 11:51:01 +0100
Message-Id: <1327402267-22385-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 0/6] update mx35_3ds suppoprt
To: barebox@lists.infradead.org

Hey,

this patch series updates mx35_3ds support in barebox. In my current project
the rootfs is bigger than 32 MiB, so that it cannot be flashed with tftp with
the current blocksize of 512 bytes. So flash via nfs is added to the update
script.

Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
