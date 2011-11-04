Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RMFjW-0006nI-8G
	for barebox@lists.infradead.org; Fri, 04 Nov 2011 09:06:44 +0000
Date: Fri, 4 Nov 2011 10:06:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111104090637.GI16886@pengutronix.de>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
	<20111103072645.GC16886@pengutronix.de>
	<4EB28DAD.6010100@team-embedded.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4EB28DAD.6010100@team-embedded.nl>
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
Subject: Re: [RFC PATCH 0/9] Catch-up/clean-up doxygen documentation
To: Mark Vels <mark.vels@team-embedded.nl>
Cc: barebox@lists.infradead.org

On Thu, Nov 03, 2011 at 01:48:45PM +0100, Mark Vels wrote:
> Hi Sascha,
> 
> On 03-11-11 08:26, Sascha Hauer wrote:
> > Thank you for your efforts, I really appreciate this. I hoped though
> > that I can shift over the documentation to
> > http://wiki.barebox.org/doku.php as this is maintainable without
> > patching the source code. 
> Is this to decrease your work load as maintainer or do you have other
> concerns that drive this goal?

The documentation does not have any influence on my workload as a
maintainer as nearly nobody updates it ;)

> > So I wonder if you didn't know about this
> > website at all (could be my bad, I should have communicated this more
> > clearly) or are there other problems with the documentation in the wiki?
> Well, of course I saw the wiki but looking at the command
> documentation I figured it was older and less complete that what I
> found in the generated documentation. Therefore I drew the conclusion
> that the doxygen documentation was the preferred option.

> > Maybe in the end the doxygen documentation is more what people
> > actually
> > want?
> IMHO it makes sense to have command and supported board info generated
> from the source code because I see a number of advantages:
> - Documentation is tied to the source code. If options for a command
> are changed, expect a patch for the documentation with it. With some
> discipline from contributors and reviewers this keeps the doc in sync
> with the code. Since I don't seem to have any possibility to edit the
> wiki myself yet, this looks like a good excuse to let the wiki bit rot
> and not update the documentation.

This was one of the reasons to put it in doxygen.

> 
> - When in future situations branching (for LTS versions?) becomes
> relevant (there are companies that are still using UBoot 1.1.6 for
> example), there will be different implementations or command sets
> implemented for different branches.
> Since the doxygen code is generated from the sources it is always
> relevant/ up-to-date for the version people are using.  I think having
> multiple versions documented is very hard and messy to realise with a
> wiki.

This was another reason.

> 
> - It saves work to use doxygen since most information needs to be in
> the source code for the builtin help anyway.  Re-using it for the
> doxygen documentation (by using the BAREBOX_CMD_HELP_XXX() macros) is
> more efficient than having to
> update the wiki too.
> 
> - I know that in the ideal world all changes go through upstream. But
> having worked at a number of big companies, there will be all sorts of
> custom hacks to barebox that are not even relevant to be ever
> upstreamed (like commands to change settings in custom FPGA firmware
> for example). The doxygen documentation can be a great framework to
> extend with 'home-brew' changes and documentation and make it easier
> to use barebox in such environments.
> 
> For the other documentation (the stuff in section 'Developer' section
> on the wiki etc), I don' really have a strong opinion. Maybe the wiki
> is more convenient here because it has a more powerful and versatile
> syntax. I just wonder how contributors to any wiki documentation
> should progress? Should they post the wiki-formatted pages to the
> mailing list?  Or are you planning on providing people with login
> credentials for the wiki on request?
> 
> In case we decide to stick with the wiki-only approach, I think it is
> time to do some clean-up in the source tree and remove obsolete
> doxygen pages/comments. Would it make sense to create a DOCUMENTATION
> file manifest to explain the documentation strategy?

I understand all the reasons why doxygen is a good tool, like
documentation in the source code and (theoretically) in sync
with the source code. Unfortunately it did not work very well. Ok, it
would probably be my job to force people to update the docs when
they update a command, but I am not very good at writing documentation
myself. For the commands I agree that these are kept well in the inline
doxygen style, but with the wiki I hoped to make it easier for people to
write some board specific docs or some howtos what they can do with
barebox.

I don't like the look of the doxygen output at all. Someone with
some more web skills than me could probably fix this. I also don't
like the workflow with doxygen when it comes to pages which are not
specific to a particular command. I think the additional make step
and also the IMO quite inconvenient linking between pages make
doxygen quite hard to use for the occasional user.

The idea with the wiki is the following:

- Everyone gets a wiki account on request (so far nobody made a
  request), so everyone interested can write documentation. I hesitated
  to make the wiki world editable because of possible spam.
- The wiki is in a git repository here:
  git.pengutronix.de/git/barebox-doc.git
- You can clone this repository, it contains a script to start a local
  lighttpd and then you can edit the wiki as you like. Every edit is
  automatically committed and I am willing to accept pull requests. This
  way everybody can update the documentation even when offline.
- dokuwiki contains a siteexport plugin which can be used to create
  local static html pages. This can be used for additional (in-house)
  documentation for things which are not mainline. Also we can generate
  a documentation specific to a particular barebox version.

We definitely have a communication problem, so adding this information
to DOCUMENTATION is a good thing to do. Removing the doxygen stuff
from the source code also is a good thing to not confuse the users. I
wanted to do this once I have some feedback about the wiki approach, but
unfortunately I did not receive any feedback until now.

I just created an account for you. Maybe you can give it a try and give
some feedback (positive or negative).

Regards,
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
