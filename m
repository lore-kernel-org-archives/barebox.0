Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pe7QY-0005iW-1X
	for barebox@lists.infradead.org; Sat, 15 Jan 2011 14:48:27 +0000
Date: Sat, 15 Jan 2011 15:48:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110115144821.GB9041@pengutronix.de>
References: <1295034699-18863-1-git-send-email-s.hauer@pengutronix.de>
	<1295034699-18863-6-git-send-email-s.hauer@pengutronix.de>
	<20110115015023.GA14798@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110115015023.GA14798@game.jcrosoft.org>
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
Subject: Re: [PATCH 5/7] provide real barebox end variable
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 15, 2011 at 02:50:23AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 20:51 Fri 14 Jan     , Sascha Hauer wrote:
> > Sometimes it's useful to have the memory end address barebox uses.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  include/reloc.h |    2 +-
> >  1 files changed, 1 insertions(+), 1 deletions(-)
> > 
> > diff --git a/include/reloc.h b/include/reloc.h
> > index 22cb886..a0bf15f 100644
> > --- a/include/reloc.h
> > +++ b/include/reloc.h
> > @@ -1,7 +1,7 @@
> >  #ifndef __RELOC_H
> >  #define __RELOC_H
> >  
> > -extern unsigned long _barebox_start, _bss_start, _bss_end, _text_base;
> > +extern unsigned long _barebox_start, _bss_start, _bss_end, _text_base, _end;
> how about _barebox_end

Agreed. I just used this name because I didn't want to change all linker
scripts, but laziness is not a good argument for introducing a global variable
with such a generic name.

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
