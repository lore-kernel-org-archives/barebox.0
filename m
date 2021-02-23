Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEUTA-0006eK-69
 for barebox@lists.infradead.org; Tue, 23 Feb 2021 09:59:05 +0000
Date: Tue, 23 Feb 2021 10:59:02 +0100
Message-ID: <20210223095902.GD5549@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
From: Sascha Hauer <sha@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: nios2 and openrisc in barebox
To: Barebox List <barebox@lists.infradead.org>

Hi Franck, Antony

Are you still interested in barebox support for NIOS2 and openrisc? If
not I would consider removing it. Background is that we are planning to
introduce green threads and implement pollers with them which makes
green threads rather mandatory. Green threads need a setjmp/longjmp
implementation that would have to be added for these architectures.

Keeping the architectures is no big deal normally, but I don't want to
add untested new functionality, also I don't want to implement things
that nobody uses, so if you are still interested it would be great if
you volunteer to implement setjmp/longjmp.

Thanks
  Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
