Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NNNGk-00067m-PF
	for barebox@lists.infradead.org; Wed, 23 Dec 2009 09:12:36 +0000
Date: Wed, 23 Dec 2009 10:11:31 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20091223091131.GF22533@pengutronix.de>
References: <alpine.LFD.2.00.0912221000250.4427@localhost>
	<20091223090639.GP15126@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20091223090639.GP15126@pengutronix.de>
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
Subject: Re: which drivers subdirs should be automatically selected?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Wed, Dec 23, 2009 at 10:06:39AM +0100, Sascha Hauer wrote:
> Nothing of the above is really fundamental. Without serial drivers you
> won't see anything of course, but this won't stop barebox from working.
> I think this only reflects a change of taste during time and should be
> done consistently so that other people know how to do it. Prefered is
> the obj-$(CONFIG_SPI) += spi/ style.

It's also good in the "how small can we make it" game.

rsc
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
