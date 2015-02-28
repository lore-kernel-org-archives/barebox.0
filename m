Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRp7w-0003p6-Ec
 for barebox@lists.infradead.org; Sat, 28 Feb 2015 21:40:50 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=hardanger.do.blackshift.org)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mkl@pengutronix.de>) id 1YRp7Y-0000WM-Gj
 for barebox@lists.infradead.org; Sat, 28 Feb 2015 22:40:24 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sat, 28 Feb 2015 22:40:05 +0100
Message-Id: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
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
Subject: general cleanups and sandbox OF integration
To: barebox@lists.infradead.org

Hello Sascha,

the first five patches are several cleanups in barebox, I've found while
working on a new feautre. The remaining ones bring OF support to the sandbox so
that enables testing of framworks which need the device tree.

regards,
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
