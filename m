Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta9Y5-0001RF-0W
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 18:24:54 +0000
Date: Sun, 18 Nov 2012 13:24:47 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <CAA4bVAEpXjiv-DAG=aF9OfmJBOqHZKadr6xpXOznEB6MPdQMkA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1211181322590.680@oneiric>
References: <alpine.DEB.2.02.1211181240360.32651@oneiric>
 <CAA4bVAEpXjiv-DAG=aF9OfmJBOqHZKadr6xpXOznEB6MPdQMkA@mail.gmail.com>
MIME-Version: 1.0
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
Subject: Re: shouldn't asm-generic/barebox.lds.h be arch-independent?
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sun, 18 Nov 2012, Antony Pavlov wrote:

> On 18 November 2012 21:52, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

... snip ...

> >   the fact that the current approach is prone to "error" can be seen
> > in the file arch/mips/lib/barebox.lds.S:
> >
> > #include <asm-generic/barebox.lds.h>
> >
> > OUTPUT_ARCH(mips)
> > ENTRY(_start)
> > SECTIONS
> > {
> >         . = TEXT_BASE;
> >
> >         . = ALIGN(4);
> >         .text      :
> >         {
> >                 _start = .;
> >                 *(.text_entry*)
> >                 _stext = .;
> >                 _text = .;
> >                 __bare_init_start = .;
> >                 *(.text_bare_init*)
> >                 __bare_init_end = .;
> >                 *(.text*)
> >         }
> >         BAREBOX_BARE_INIT_SIZE
> >
> >         PRE_IMAGE  <--- ?????
> >
> > apparently, the MIPS architecture is including the "PRE_IMAGE"
> > content, despite the fact that it can't possibly be defined.
> > it's not wrong, it's just pointless and potentially confusing.
>
> Unfortunately nowadays MIPS lacks lowlevel initialization support.
> Yesterday I mailed RFC about pbl (prebootloader) support. It needs
> much work, but IMHO after incorporating MIPS pbl support the status
> of "PRE_IMAGE" will be more clear.

  ok, but that still doesn't address the bigger issue that the
allegedly "generic" barebox.lds.h file really shouldn't be checking
for individual machines or architectures.  IMHO.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
