Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Prdxp-0004XD-13
	for barebox@lists.infradead.org; Mon, 21 Feb 2011 22:10:41 +0000
Date: Mon, 21 Feb 2011 23:10:37 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20110221221037.GJ26213@pengutronix.de>
References: <AANLkTi=btK3R6C6KTF8HALSx5z9jKowYGN9iApPfca5S@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTi=btK3R6C6KTF8HALSx5z9jKowYGN9iApPfca5S@mail.gmail.com>
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
Subject: Re: Submission of the Altera nios2 port
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Feb 21, 2011 at 11:02:30PM +0100, Franck JULLIEN wrote:
> I'm ready to submit the nios2 port. However, I don't know what to commit....
> I was about to commit the serial and Ethernet drivers in two separate commits.
> Should I post those ones first ? Or should a send you arch/nios2 files first ?
> How much files per commits ?

Please follow the kernel guidelines for patch submission: one topic per
patch, start with the core first and then add drivers. Please follow the
canonical patch format (which comes out of git automatically if you use
it).

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
