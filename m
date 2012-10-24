Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQvfQ-0002ry-5n
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 07:46:21 +0000
Date: Wed, 24 Oct 2012 09:46:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121024074615.GU27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: phylib does not wait for link
To: barebox@lists.infradead.org

The current phylib behaviour is unusable for unattended network boot, we
need to do something about it.

We currently have no instance that would wait until a link comes up.
This may work for the default-3-seconds-boot-timeout which is enough for
most phys, but fails with smaller timeouts.

There are several places in which we could wait for a link to come up, I
have no idea which one is the best:

- eth_send
- phylib
- in the protocols (dhcp, ping, ...)

Anyway, this deserves fixing before the next release.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
