Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFWMl-0007E0-3z
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 21:04:12 +0000
Date: Tue, 12 Mar 2013 22:04:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130312210408.GV1906@pengutronix.de>
References: <1362924823.394544173@f371.mail.ru>
 <513CF27B.6080802@free-electrons.com>
 <1363110626.497378554@f165.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363110626.497378554@f165.mail.ru>
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
Subject: Re: New dt-only arm/mach
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org, Maxime Ripard <maxime.ripard@free-electrons.com>

On Tue, Mar 12, 2013 at 09:50:26PM +0400, Alexander Shiyan wrote:
> > > I think about dtb-file in /env, but not sure... Thanks.
> > 
> > It can be done as well I guess, but that doesn't sound that familiar
> > from what I've seen in the other barebox boards.
> 
> Kernel no contain any board for mach-sunxi.
> This mean than all stuff is described via DT.
> In the barebox we should have "mach" & "board", so I think we
> should create empty (fake) board for architectures like this.
> Any other opinions?

Where would you put the SDRAM setup then?

I think it shouldn't be a problem to change barebox to compile
without a board directory if you really don't need one, but I assume
some board specific code will be left.

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
