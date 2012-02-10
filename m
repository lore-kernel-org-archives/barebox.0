Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvrZO-0004hX-3J
 for barebox@lists.infradead.org; Fri, 10 Feb 2012 14:35:27 +0000
Date: Fri, 10 Feb 2012 15:35:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120210143514.GK3852@pengutronix.de>
References: <alpine.DEB.2.02.1202100755520.10458@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1202100755520.10458@oneiric>
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
Subject: Re: what is the earliest i can get MLO to print out debugging info?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Fri, Feb 10, 2012 at 07:59:08AM -0500, Robert P. J. Day wrote:
> 
>   as a (sort of) followup to my last post on extending barebox to
> recognize pandaboards, at the moment, i have a build that boots nicely
> on an original panda but produces absolutely *no* output at all on a
> panda ES.
> 
>   i know that barebox currently doesn't recognize the ES, but i'm
> wondering if that's the real problem, and where i can put debugging
> statements in to show something along the lines of, "hi, i'm just
> starting to run MLO".
> 
>   surely there's an initial part of MLO that has to run before even
> checking the revision of the board, so can i add some debugging that
> would show that, or is it not even possible to set up the console
> before recognizing the board?  thanks.

Is there a LED on the board? Then you could use it for bisecting the
code. Setting up a console is not that easy as it may require setting
up the iomuxer. Another way would be to setup a regular U-Boot on the
board and start the MLO from there. Then you can just do a writel to
the UARTs tx register.

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
