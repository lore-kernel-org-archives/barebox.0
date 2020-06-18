Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jluJA-0007Jw-3J
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 13:10:21 +0000
Date: Thu, 18 Jun 2020 15:10:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200618131017.GJ11869@pengutronix.de>
References: <20200617034404.5904-1-dgienda125@gmail.com>
 <20200617134538.GC11869@pengutronix.de>
 <20200618015455.GA9887@fizzbox.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618015455.GA9887@fizzbox.localdomain>
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
Subject: Re: [RFC PATCH 0/8] Module and ARM Module updates and fixes
To: David Dgien <dgienda125@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 17, 2020 at 09:54:55PM -0400, David Dgien wrote:
> Hi Sascha,
> 
> On Wed, Jun 17, 2020 at 03:45:38PM +0200, Sascha Hauer wrote:
> > Hi David,
> > 
> > On Tue, Jun 16, 2020 at 11:43:56PM -0400, David Dgien wrote:
> > > This series fixes various bugs and bit-rot issues with the module
> > > loading code. It also ports a couple of modules features from the Linux
> > > kernel: arch specific section fixups, and module PLTs for ARM modules,
> > > to contain veneers for 'bl' instructions.
> > > 
> > > There are two things in this series I'm looking for feedback on:
> > > Linux implements module_frob_arch_sections as a weak symbol for the
> > > default case. I didn't see any other "weak" functions in barebox, so I
> > > wasn't sure if using that was acceptable.
> > 
> > For things that are really mutually exclusive like different
> > implementations on different architectures I think weak functions are
> > ok. They are not ok as a quick hack for hooking something into something
> > though.
> > 
> 
> I'll make the change to a weak function here in a v2, since it will be a
> bit cleaner.
> 
> > > Since the Kconfig
> > > HAVE_MOD_ARCH_SPECIFIC already exists as part of the change, I just used
> > > that to define a static inline default implementation, but using a weak
> > > function would make that slightly cleaner.
> > > 
> > > And in the patch that added the init macros to module.h, I wasn't sure
> > > if it would be okay to pollute init.h with the #ifndef MODULE
> > > directives, so instead I just #undef'd all of the initcalls before
> > > redefining them in module.h.  If it's okay to add the #ifndef MODULE to
> > > init.h, that would be significantly cleaner than the current
> > > implementation.
> > 
> > I think it's ok to add #ifndef MODULE to init.h
> 
> Same as above.
> 
> > 
> > Anyway, what do you need modules for? Do you have a good reason or is it
> > just for the fun of it?
> 
> I'm working on a project that wants to use barebox as a very lightweight
> OS replacement. 
> We're using modules to allow loading user code with
> controlled access to hw interfaces via exported driver symbols.

So barebOS again, we had that as an April fools joke once :)

You'll probably miss things like interrupts, paging and multitasking
very soon.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
