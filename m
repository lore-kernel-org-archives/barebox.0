Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxH0-0004aS-9c
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 10:08:19 +0000
Date: Mon, 14 Oct 2019 12:08:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191014100815.6kofs6c57fzof3f6@pengutronix.de>
References: <20191002144430.14946-1-s.hauer@pengutronix.de>
 <20191002144430.14946-6-s.hauer@pengutronix.de>
 <20191002185337.GB32491@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002185337.GB32491@ravnborg.org>
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
Subject: Re: [PATCH 5/7] X86: lds: remove unnecessary alignments
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Wed, Oct 02, 2019 at 08:53:37PM +0200, Sam Ravnborg wrote:
> Hi Sascha.
> 
> On Wed, Oct 02, 2019 at 04:44:28PM +0200, Sascha Hauer wrote:
> > We do not seem to need all these alignments in the rodata sections
> > except the one for the command array. Remove them and put the alignment
> > for the command array into the BAREBOX_CMDS define.
> 
> The changelog does not match the code.
> The alignment is only for x86_64.
> 
> > --- a/include/asm-generic/barebox.lds.h
> > +++ b/include/asm-generic/barebox.lds.h
> > @@ -46,7 +46,13 @@
> >  	KEEP(*(.exitcall.6))			\
> >  	__barebox_exitcalls_end = .;
> >  
> > +/* For some obscure reason X86_64 needs these 64bit aligned */
> 
> The obscure reason looks like this (from include/command.h):
> #ifdef __x86_64__
> /* This is required because the linker will put symbols on a 64 bit alignment */
> __attribute__((aligned(64)))
> #endif
> 
> I did not try it. But I would assume removing the alignment from the .h
> file and the .lds file would sort it out.

Unfortunately it doesn't. I still don't fully understand this, but the
linker uses a different alignment for the array as the compiler does.

I chose to go a different way and have created an array of pointers to
the commands rather than putting the commands directly into an array.
This seems to solve it without playing aligmnent tricks.

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
