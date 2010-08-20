Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OmLjM-0000Lz-Nn
	for barebox@lists.infradead.org; Fri, 20 Aug 2010 07:09:37 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <rsc@pengutronix.de>) id 1OmLjI-00069h-4c
	for barebox@lists.infradead.org; Fri, 20 Aug 2010 09:09:32 +0200
Received: from rsc by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <rsc@pengutronix.de>) id 1OmLjI-0002sf-3R
	for barebox@lists.infradead.org; Fri, 20 Aug 2010 09:09:32 +0200
Date: Fri, 20 Aug 2010 09:09:32 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20100820070932.GT30096@pengutronix.de>
References: <1282190002-6807-1-git-send-email-plagnioj@jcrosoft.com>
	<20100819082922.GE27749@pengutronix.de>
	<20100820032101.GA8693@game.jcrosoft.org>
	<20100820063822.GH27749@pengutronix.de>
	<20100820065139.GG8693@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100820065139.GG8693@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Add Menu Framework
To: barebox@lists.infradead.org

On Fri, Aug 20, 2010 at 08:51:39AM +0200, Jean-Christophe PLAGNIOL-VILLARD =
wrote:
> > > I plan to have this also via FrameBuffer and with a background image
> > > so maybe barebox could replace grub & co aneday :)
> >
> > A long way to go ;)
>
> but a good target :-)

Note that J=FCrgen has already pushed initial x86 support (ontop of BIOS)
into Barebox. What's mainly needed to be useful for people is:

- framebuffer console
- support for fetchin the kernel from filesystems

rsc
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
