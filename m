Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdgAX-0002dz-J5
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 09:42:06 +0000
Date: Fri, 14 Jan 2011 10:42:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110114094203.GG24373@pengutronix.de>
References: <AANLkTikGGvBBbo0voeJbwHU6dtORkP8B+rcqgxiso_Cz@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTikGGvBBbo0voeJbwHU6dtORkP8B+rcqgxiso_Cz@mail.gmail.com>
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
Subject: Re: Beagle XM MMC driver
To: Cory Walker <cwalker32@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Jan 13, 2011 at 07:31:01PM -0500, Cory Walker wrote:
> I meant to post this to the list but I accidentally emailed it to a single
> person:
> 
> Barebox on the XM has no device in /dev for the MMC. Does a driver need to
> be written?

Not exactly written, but ported. U-Boot has an OMAP3 mmc driver which
can be used with modifications.

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
