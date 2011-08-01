Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QnnfH-0008Ac-5Q
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 08:15:56 +0000
Date: Mon, 1 Aug 2011 10:15:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110801081550.GC31404@pengutronix.de>
References: <1312057103-29658-1-git-send-email-franck.jullien@gmail.com>
	<CAFfN3gXVaR++amBV-fW4mVaxV2FqzFGFqjziEJvU9wzh1FdcGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFfN3gXVaR++amBV-fW4mVaxV2FqzFGFqjziEJvU9wzh1FdcGQ@mail.gmail.com>
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
Subject: Re: [PATCH] nios2: Add Altera SPI master driver
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jul 31, 2011 at 05:46:07PM +0200, Hubert Feurstein wrote:
> Hi Franck,
> 
> please fix the errors reported by ./scripts/checkpatch.pl.
> 
> @Sascha: What about "WARNING: line over 80 characters". Should we take
> care about this warning?

I'd consider 80 characters a soft limit. This 80 character thing is good
for limiting the number of possible indentions, but I'm fine with 100
characters aswell.

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
