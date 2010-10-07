Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P3pqN-0004PJ-8W
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 12:45:08 +0000
Date: Thu, 7 Oct 2010 14:45:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101007124503.GF28242@pengutronix.de>
References: <20101005135213.24F871539A0@gemini.denx.de>
	<20101006072749.GR28242@pengutronix.de>
	<20101006135644.8D7051539A0@gemini.denx.de>
	<20101007080646.GB28242@pengutronix.de>
	<20101007084530.82D8E153A7E@gemini.denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101007084530.82D8E153A7E@gemini.denx.de>
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
Subject: Re: Code "borrowed" without attribution to original authors
To: Wolfgang Denk <wd@denx.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 07, 2010 at 10:45:30AM +0200, Wolfgang Denk wrote:
> Dear Sascha,
> 
> In message <20101007080646.GB28242@pengutronix.de> you wrote:
> >
> > > Do you think such a short hint cannot be done?
> > 
> > We can (and actually I prefered Jean-Christophe had done it) add a
> > hint in the commit log saying that the code is derived from U-Boot,
> > but I will not dig through the U-Boot commit log to see who actually
> > made a commit looking similar to a barebox commit, and I do not expect
> > anyone to do so.
> 
> It is trivial to find the commits that added the lines you are
> copying from - just run "git blame" on that file.

You showed me in a long mail that it's enough of contribution if the
string 'Linux' shows up in the commit log and now you want me to
reference particular commits? That's cool.

Anyway, I don't want to run further into your
barebox-sucks-from-the-community argumentation.

Jean-Christophe, I just reverted the offending commits. Can you please
update the patches to contain credits to U-Boot and Marian
Balakowicz?

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
