Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from pfepa.post.tele.dk ([195.41.46.235])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oi4fJ-0002xI-5Z
	for barebox@lists.infradead.org; Sun, 08 Aug 2010 12:07:46 +0000
Date: Sun, 8 Aug 2010 14:07:41 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20100808120741.GA32022@merkur.ravnborg.org>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
	<20100808064846.GA31364@merkur.ravnborg.org>
	<20100808090612.GM24069@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100808090612.GM24069@game.jcrosoft.org>
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
Subject: Re: [PATCH] Kconfig: sync with linux kernel v2.6.35-4771-g1787985
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Aug 08, 2010 at 11:06:12AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi sam,
> > 
> > In the kconfig land we are workng on an enhancement to
> > nconf so we replace the "use first or second char in  menu as hotkey".
> > The initial reason why we started this was that people
> > did not like that some menus had the second char
> > capitalized like this:
> > 
> >    "mOdule support"
> > 
> > The reason why "O" is capital and not "m" is that "m" hotkey
> > is already in use. And we use the capital letter to signal
> > the relevant hotkey.
> > menuconfig does so using a different color, but the
> > high level ncurses interface nconfig uses does not allow this.
> I notice this and does not like it also
> why not underline it?

That was not possible with the high-level interface nconfig uses.
Nir used a new approach where he uses an interactive search
and the interactive search will match any menu containing
the string entered.

More powerfull than the hot-key support, and more flexible.

> > We are also working on a fix to savedefconfig.
> > savedefconfig is a new target used to save a minimal config.
> > 
> > So all-in-all I would like to see this sync happen
> > either a bit later this kernel cycle, or that you
> > resync again later in this cycle.
> > 
> > Which bring up another question.
> > We have plenty of projects out there that rely
> > on kconfig.
> > What can we do to kconfig to make the integration easier?
> > 
> > We have discussed that kconfig should be a seperate
> > installable tool (as rpm, deb whatever).
> > But there is a few quirks needed before we can do so.
> I prefer to umbedeed it is the source so we can control which version we use
> and no need to rely on too much external stuff
OK, I will drop any thinking of packaging it as an external tool.
[I was not sure how to do this so glad to drop it].

> > 
> > But are there any other thing we could do to
> > make life easier for external users?
> infact yes if the project name could be configurable it will avoid to modify
> it and we could use it as is
> 
> I've notice 3 names
> 
> kernel,
> Kernel,
> Linux Kernel
> 
> if instead of hard coding it we could use a symbol to configure it it will
> make it integrable as is
> 
> one other think it will be good to avoid KERNEL something in the env or the
> default symbol and use a more generic one as for KERNELVERSION use
> RELEASEVERSION as example

They should obviously go. I have had patches to do so before but I did
not like them so they never got applied.
I will try to cook up something and let see what Michal thinks.
[Michal takes care of kconfig these days, I just do some random
patches when I feel in the mode to do so].

> 
> also a small doc for the mandatory env and symbol will be nice for people to
> integrate it as not everyone is also a kernel dev or maintainer

I actually take this that integrating kconfig should be simpler.
So it:
a) should be documented using a HOW-TO
b) we sould rely on very little outside scripts/kconfig

The primary 'customer' is the kernel but it would be good
to generalize stuff a bit more.
This is by far the biggest task listed.
I will add it to my mental TODO list - but no promises :-) 

> 
> and a last thing It will be nice to be able to set a value to a symbol from an
> other one and not only select it

I am not sure I see how this is usefull.
Can you give me an example.

Note: We recently had a patch where "select" was extended to
specify an optional value.
But my issue with that was that I failed to see the use of it so
I was not happy with the extension.

But I may have missed something!

Thanks for the quick feedback!

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
