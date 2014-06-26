Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X0Eqy-0001RJ-NW
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 18:57:01 +0000
Date: Thu, 26 Jun 2014 20:56:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626185637.GD14257@pengutronix.de>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
 <alpine.LFD.2.11.1406260622060.14712@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1406260622060.14712@localhost>
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
Subject: Re: New Documentation for barebox
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: barebox@lists.infradead.org

On Thu, Jun 26, 2014 at 06:31:10AM -0400, Robert P. J. Day wrote:
> On Thu, 26 Jun 2014, Sascha Hauer wrote:
> 
> 
>   ... snip ...
> 
>   couple quick observations before i put on my editor hat and go
> through all this. first, on my fedora rawhide system, running "make
> docs" generates quite a few warnings, although the HTML is eventually
> built. is it worth digging into the doc generation warnings and trying
> to clean them up? anyone else building the docs on fedora rawhide and
> see what i'm talking about?
> 
>   and just from the main page, a couple very pedantic questions:
> 
> * should the name "Barebox" be italicized or not? it seems even that
> single page bounces back and forth using and not using "@a" in front
> of the word "Barebox".
> 
> * the "Directory layout" section inserts a space on either side of the
> "/" in directory names, as in:
> 
>   arch / * /
> 
> that just looks ... weird.
> 
> * oh, final note regarding name "Barebox", i notice some pages (like
> the x86_bootloader page) use the uncapitalized name "barebox" -- this
> really should be consistent throughout all the docs.

It seems you are talking about the old doxygen docs. Please checkout
the doc branch on:

git://git.pengutronix.de/git/barebox.git

There should be only one match for Barebox with a capital 'B' in

Documentation/boards/omap.rst:36:exactly behaves like an external dongle. Barebox does not automatically detect

All others are lowercase.

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
