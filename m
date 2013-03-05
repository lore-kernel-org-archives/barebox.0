Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCvSo-0007yK-3f
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 17:15:42 +0000
Date: Tue, 5 Mar 2013 11:22:00 -0600
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130305172200.GF16050@kryptos>
References: <cover.1362273612.git.joshc@eso.teric.us>
 <13f79e3d64f81140c9637abbf78cf3a70be1099c.1362273612.git.joshc@eso.teric.us>
 <CAA4bVAGNk98jtGkGNh=L27ZtRUkFEw=0gQLRYG3OcuHpBtHCRw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAGNk98jtGkGNh=L27ZtRUkFEw=0gQLRYG3OcuHpBtHCRw@mail.gmail.com>
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
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Michal Simek <monstr@monstr.eu>

On Sun, Mar 03, 2013 at 11:24:53AM +0400, Antony Pavlov wrote:
> On 3 March 2013 04:48, Josh Cartwright <joshc@eso.teric.us> wrote:
> > Signed-off-by: Josh Cartwright <joshc@eso.teric.us>
[..]
> > --- /dev/null
> > +++ b/arch/arm/mach-zynq/reset.c
> > @@ -0,0 +1,28 @@
> > +/*
> > + * Copyright (C) 2013 Josh Cartwright <joshc@eso.teric.us>
> > + *
> > + * This program is free software; you can redistribute it and/or
> > + * modify it under the terms of the GNU General Public License as
> > + * published by the Free Software Foundation; either version 2 of
> > + * the License, or (at your option) any later version.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + * You should have received a copy of the GNU General Public License
> > + * along with this program; if not, write to the Free Software
> > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> > + * MA 02111-1307 USA
> 
> Please drop the address of the FSF.

Okay, will-do.  It's also included in the notice in the serial driver,
but I'm a little weary about it's removal there since it's taken
verbatim from the copyright notice in the u-boot driver.

   Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
