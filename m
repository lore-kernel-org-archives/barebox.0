Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9BkH-0003Zv-OY
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 07:41:14 +0000
Date: Mon, 11 Apr 2011 09:41:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110411074109.GE7285@pengutronix.de>
References: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
	<1302273422-6987-15-git-send-email-s.hauer@pengutronix.de>
	<201104101433.44722.marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201104101433.44722.marc@cpdesign.com.au>
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
Subject: Re: [PATCH 14/16] ARM: compile in image size and magic into
	barebox image
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

Hi Marc,

On Sun, Apr 10, 2011 at 02:33:44PM +1000, Marc Reilly wrote:
> Hi,
> 
> > This is useful to detect a barebox image and to be able
> > to copy only the image size if barebox is stored on
> > raw partitions which are bigger than the image.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/cpu/start.c           |    6 ++++++
> >  arch/arm/lib/barebox.lds.S     |    1 +
> >  include/asm-generic/sections.h |    3 +++
> >  3 files changed, 10 insertions(+), 0 deletions(-)
> > 
> > diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> > index e0fb712..ddb65e8 100644
> > --- a/arch/arm/cpu/start.c
> > +++ b/arch/arm/cpu/start.c
> > @@ -38,6 +38,12 @@ void __naked __section(.text_entry)
> > exception_vectors(void) "ldr pc, =not_used\n"			/* (reserved) */
> >  		"ldr pc, =irq\n"			/* irq (interrupt) */
> >  		"ldr pc, =fiq\n"			/* fiq (fast interrupt) */
> > +		".word 0x65726162\n"			/* 'BARE' */
> > +		".word 0x00786f62\n"			/* 'BOX' */

I just see that the comment is wrong. It's actually in lower case
letters.

> > +		".word _text\n"				/* text base. If copied there,
> > +							 * barebox can skip relocation
> > +							 */
> > +		".word _barebox_image_size\n"		/* image size to copy */
> >  	);
> >  }
> 
> I like this, is there a way to include a version string/info also?
> 
> (The aim is to be able to derive the barebox version of an image from just 
> reading the file).

Should be possible. One problem might be that the length of the version
string is variable, so if we put it here, it must be the piece of
information here.

> > +extern void *_barebox_image_size;
> > +
> > +#define barebox_image_size	(unsigned int)&_barebox_image_size
> 
> I don't understand this line. Did you mean something like:
> 
> #define barebox_image_size *((unsigned int *)_barebox_image_size)
> 
> Or am I missing something?

_barebox_image_size is filled in by the linker. It can be seen as a
pointer which address corresponds to the image size. I know this looks
strange and I don't really like this. Maybe it can be done better?

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
