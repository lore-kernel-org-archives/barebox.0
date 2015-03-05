Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTWtd-0004Ka-L4
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 14:37:06 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=hardanger.do.blackshift.org)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mkl@pengutronix.de>) id 1YTWtG-0005xS-9G
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 15:36:42 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu,  5 Mar 2015 15:36:38 +0100
Message-Id: <1425566201-31989-1-git-send-email-mkl@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/3] sandbox cleanups
To: barebox@lists.infradead.org

Hey Sascha,

three patches for next, please fixup into the for-next/sandbox-of banch.

Two patches cleanup the hostfile handling, while the third one will generate a
device tree of the fly, if no one is specified on the sandbox command line.

Marc

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
