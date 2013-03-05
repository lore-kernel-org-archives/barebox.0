Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCxEG-0002T6-OY
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 19:08:49 +0000
Date: Tue, 5 Mar 2013 20:08:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130305190845.GC1906@pengutronix.de>
References: <cover.1362273612.git.joshc@eso.teric.us>
 <13f79e3d64f81140c9637abbf78cf3a70be1099c.1362273612.git.joshc@eso.teric.us>
 <CAA4bVAGNk98jtGkGNh=L27ZtRUkFEw=0gQLRYG3OcuHpBtHCRw@mail.gmail.com>
 <20130305172200.GF16050@kryptos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130305172200.GF16050@kryptos>
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
Subject: Re: [PATCH 4/5] ARM: zynq: add support for Zynq 7000 SoC
To: Josh Cartwright <joshc@eso.teric.us>
Cc: barebox@lists.infradead.org, Michal Simek <monstr@monstr.eu>

On Tue, Mar 05, 2013 at 11:22:00AM -0600, Josh Cartwright wrote:
> On Sun, Mar 03, 2013 at 11:24:53AM +0400, Antony Pavlov wrote:
> > On 3 March 2013 04:48, Josh Cartwright <joshc@eso.teric.us> wrote:
> > > Signed-off-by: Josh Cartwright <joshc@eso.teric.us>
> [..]
> > > --- /dev/null
> > > +++ b/arch/arm/mach-zynq/reset.c
> > > @@ -0,0 +1,28 @@
> > > +/*
> > > + * Copyright (C) 2013 Josh Cartwright <joshc@eso.teric.us>
> > > + *
> > > + * This program is free software; you can redistribute it and/or
> > > + * modify it under the terms of the GNU General Public License as
> > > + * published by the Free Software Foundation; either version 2 of
> > > + * the License, or (at your option) any later version.
> > > + *
> > > + * This program is distributed in the hope that it will be useful,
> > > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > > + * GNU General Public License for more details.
> > > + *
> > > + * You should have received a copy of the GNU General Public License
> > > + * along with this program; if not, write to the Free Software
> > > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > > + * MA 02111-1307 USA
> > 
> > Please drop the address of the FSF.
> 
> Okay, will-do.  It's also included in the notice in the serial driver,
> but I'm a little weary about it's removal there since it's taken
> verbatim from the copyright notice in the u-boot driver.

It's fine to remove it. The address is wrong anyway. You should leave a
note though where the code comes from, either in the commit log or in
the header.

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
