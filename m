Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SiZoS-00065K-Jf
 for barebox@lists.infradead.org; Sat, 23 Jun 2012 23:32:21 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1SiZoQ-00021r-VE
 for barebox@lists.infradead.org; Sun, 24 Jun 2012 01:32:18 +0200
Received: from jlu by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1SiZoQ-0008UJ-UL
 for barebox@lists.infradead.org; Sun, 24 Jun 2012 01:32:18 +0200
Date: Sun, 24 Jun 2012 01:32:18 +0200
From: Jan Luebbe <jlu@pengutronix.de>
Message-ID: <20120623233218.GA32096@pengutronix.de>
References: <20120623232159.GA30515@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120623232159.GA30515@pengutronix.de>
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
Subject: Re: Regression for the Beagle Board
To: barebox@lists.infradead.org

Hi again,

I forgot to note, that reverting this commit produces a booting barebox again,
although USB does not work.

Best regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
