Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail12.tpgi.com.au ([203.12.160.162])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9Cg9-0003ub-2M
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 08:41:02 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Mon, 11 Apr 2011 18:42:12 +1000
References: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
	<201104101433.44722.marc@cpdesign.com.au>
	<20110411074109.GE7285@pengutronix.de>
In-Reply-To: <20110411074109.GE7285@pengutronix.de>
MIME-Version: 1.0
Message-Id: <201104111842.13036.marc@cpdesign.com.au>
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
Subject: Re: [PATCH 14/16] ARM: compile in image size and magic into barebox
	image
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

> > > @@ -38,6 +38,12 @@ void __naked __section(.text_entry)
> > > exception_vectors(void) "ldr pc, =not_used\n"			/* (reserved) */
> > > 
> > >  		"ldr pc, =irq\n"			/* irq (interrupt) */
> > >  		"ldr pc, =fiq\n"			/* fiq (fast interrupt) */
> > > 
> > > +		".word 0x65726162\n"			/* 'BARE' */
> > > +		".word 0x00786f62\n"			/* 'BOX' */
> 
> I just see that the comment is wrong. It's actually in lower case
> letters.
> 

True.
(This is why I'm always reluctant to ack patches - I'm not very thorough :)

> > > +		".word _text\n"				/* text base. If copied there,
> > > +							 * barebox can skip relocation
> > > +							 */
> > > +		".word _barebox_image_size\n"		/* image size to copy */
> > > 
> > >  	);
> > >  
> > >  }
> > 
> > I like this, is there a way to include a version string/info also?
> > 
> > (The aim is to be able to derive the barebox version of an image from
> > just reading the file).
> 
> Should be possible. One problem might be that the length of the version
> string is variable, so if we put it here, it must be the piece of
> information here.

"it must be the _last_ piece of information here"?
 
Could also dedicate a fixed maximum size, although that's the kind of thing 
that becomes a pain later. 

> 
> > > +extern void *_barebox_image_size;
> > > +
> > > +#define barebox_image_size	(unsigned int)&_barebox_image_size
> > 
> > I don't understand this line. Did you mean something like:
> > 
> > #define barebox_image_size *((unsigned int *)_barebox_image_size)
> > 
> > Or am I missing something?
> 
> _barebox_image_size is filled in by the linker. It can be seen as a
> pointer which address corresponds to the image size. I know this looks
> strange and I don't really like this. 


Ah, _now_ I get it. It looks strange but makes sense with your explanation 
above, and I reckon that's OK. 

> Maybe it can be done better?

Roberts suggestion to give it a comment is probably the best and simplest. The 
alternate way I come up with isn't any better.

Cheers
Marc



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
