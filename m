Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z8Nub-0006nS-1a
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 07:18:57 +0000
Date: Fri, 26 Jun 2015 09:18:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150626071832.GC18611@pengutronix.de>
References: <20150608184033.GL6325@pengutronix.de>
 <20150625152714.71ffc6272ed69a63a346ea02@gmail.com>
 <20150625200718.GA18611@pengutronix.de>
 <CAOpc7mH4aGVaj8FKuS+R7Bv+8KhWQEHbN0-bNAgrxAKFp=xn2w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mH4aGVaj8FKuS+R7Bv+8KhWQEHbN0-bNAgrxAKFp=xn2w@mail.gmail.com>
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
Subject: Re: v2015.06.0 ...and a new website
To: Holger Schurig <holgerschurig@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jun 26, 2015 at 08:09:21AM +0200, Holger Schurig wrote:
> Imagemagick (and therefore also probably /Graphicsmagic) allows this
> from the command line:
> 
> convert -setTheOutputSizeOfThePng 1024x1024 test.svg test.png

That was my first choice aswell. 'convert' calls Inkscape in the
background, so you're lucky, 'convert' uses your SVG tool of choice
anyway ;). However, unfortunately it takes several seconds to convert
a single barebox logo, so converting the logo into different sizes will
take some time. Also Imagemagick has the problem that the transparent
background of the logo becomes white. I have found no solution even
after some digging and trying the different options to 'convert'. I'm
sure this problem is solvable though.

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
