Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oi1uK-0003Ff-6l
	for barebox@lists.infradead.org; Sun, 08 Aug 2010 09:11:05 +0000
Date: Sun, 8 Aug 2010 11:06:12 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100808090612.GM24069@game.jcrosoft.org>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
	<20100808064846.GA31364@merkur.ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100808064846.GA31364@merkur.ravnborg.org>
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
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hi sam,
> 
> In the kconfig land we are workng on an enhancement to
> nconf so we replace the "use first or second char in  menu as hotkey".
> The initial reason why we started this was that people
> did not like that some menus had the second char
> capitalized like this:
> 
>    "mOdule support"
> 
> The reason why "O" is capital and not "m" is that "m" hotkey
> is already in use. And we use the capital letter to signal
> the relevant hotkey.
> menuconfig does so using a different color, but the
> high level ncurses interface nconfig uses does not allow this.
I notice this and does not like it also
why not underline it?
> We are also working on a fix to savedefconfig.
> savedefconfig is a new target used to save a minimal config.
> 
> So all-in-all I would like to see this sync happen
> either a bit later this kernel cycle, or that you
> resync again later in this cycle.
> 
> Which bring up another question.
> We have plenty of projects out there that rely
> on kconfig.
> What can we do to kconfig to make the integration easier?
> 
> We have discussed that kconfig should be a seperate
> installable tool (as rpm, deb whatever).
> But there is a few quirks needed before we can do so.
I prefer to umbedeed it is the source so we can control which version we use
and no need to rely on too much external stuff
> 
> But are there any other thing we could do to
> make life easier for external users?
infact yes if the project name could be configurable it will avoid to modify
it and we could use it as is

I've notice 3 names

kernel,
Kernel,
Linux Kernel

if instead of hard coding it we could use a symbol to configure it it will
make it integrable as is

one other think it will be good to avoid KERNEL something in the env or the
default symbol and use a more generic one as for KERNELVERSION use
RELEASEVERSION as example

also a small doc for the mandatory env and symbol will be nice for people to
integrate it as not everyone is also a kernel dev or maintainer

and a last thing It will be nice to be able to set a value to a symbol from an
other one and not only select it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
