Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWTKm-00074X-6x
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 16:20:45 +0000
Date: Sat, 5 Apr 2014 18:20:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140405162016.GA27055@pengutronix.de>
References: <1396618899-26105-1-git-send-email-michel@reverze.net>
 <1396618899-26105-3-git-send-email-michel@reverze.net>
 <20140404195639.7fdb6d8cb645145fffde4d22@gmail.com>
 <F17C5AB3-87A5-4FA1-9CAB-7BF13489E1C5@reverze.net>
 <20140404221240.70e458aefc095d88290b1174@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140404221240.70e458aefc095d88290b1174@gmail.com>
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
Subject: Re: [PATCH 3/3] x86: ns16550: Rework driver to allow for x86 I/O space
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, Apr 04, 2014 at 10:12:40PM +0400, Antony Pavlov wrote:
> On Fri, 4 Apr 2014 18:52:46 +0200
> Michel Stam <michel@reverze.net> wrote:
> 
> > Hello Antony,
> > 
> > Sorry to hear that- the patch was not meant to add new functionality, merely preserve the status quo in master. 
> 
> Quite the contrary!
> 
> Your patchseries introduces new functionality, it adds additional io space.
> 
> In barebox maillist all new functionality patches are assumed to be 'next' branch patches.
> 
> Only critical bugfixes and trivial changes can go to the 'master' branch directly.
> 
> > To explain; add_ns16550_device() assumes that all ns16550 chips are mapped into memory. This is not so on the x86 platform. Previously, because no io-mapped resources were available, x86 created a "memory" device with custom IO routines. I rewrote this to use IORESOURCE_IO instead, but to do this, the invocation of the add_ns16550_device() needed to specify the resource type. The patch which conflicts with your patch can be undone as far as I'm concerned; I wasn't adding anything new to the mips/mach-xburst platform. I can redo the patch, leaving the file targeted by your patch unchanged if you like?
> 
> IMHO you have to rebase your patches over the 'next' branch.

No, please base your patches on master. I'll resolve the merge conflicts
if necessary while merging the different for-next branches. Should there
be non-trivial conflicts it may happen that I explicitly ask you to base
your work on -next.

Right now the -next branch is empty, so this doesn't make a difference
at the moment.

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
