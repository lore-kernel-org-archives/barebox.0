Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UB6FK-0005YZ-3w
 for barebox@lists.infradead.org; Thu, 28 Feb 2013 16:22:15 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mkl@pengutronix.de>) id 1UB6FH-00076M-4V
 for barebox@lists.infradead.org; Thu, 28 Feb 2013 17:22:11 +0100
Received: from mkl by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <mkl@pengutronix.de>) id 1UB6FH-0003WS-3Q
 for barebox@lists.infradead.org; Thu, 28 Feb 2013 17:22:11 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 28 Feb 2013 17:22:08 +0100
Message-Id: <1362068530-11332-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 0/2] add mxs application uart driver
To: barebox@lists.infradead.org

Hello,

this series adds support for the mxs application uart driver. Lifted from TQS's
u-boot patches.

regards,
Marc

changes since v1:
- fix comments (auart_serial_getc(), auart_serial_setbaudrate())
- use auart_serial_setbaudrate

Both suggested by Sascha.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
