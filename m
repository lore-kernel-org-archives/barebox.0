Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 82-148-208-25.fiber.unet.nl ([82.148.208.25]
	helo=berilia.team-embedded.nl)
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLwit-0008O7-I5
	for barebox@lists.infradead.org; Thu, 03 Nov 2011 12:48:48 +0000
Message-ID: <4EB28DAD.6010100@team-embedded.nl>
Date: Thu, 03 Nov 2011 13:48:45 +0100
From: Mark Vels <mark.vels@team-embedded.nl>
MIME-Version: 1.0
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
	<20111103072645.GC16886@pengutronix.de>
In-Reply-To: <20111103072645.GC16886@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 03-11-11 08:26, Sascha Hauer wrote:
> Thank you for your efforts, I really appreciate this. I hoped though
> that I can shift over the documentation to
> http://wiki.barebox.org/doku.php as this is maintainable without
> patching the source code. 
Is this to decrease your work load as maintainer or do you have other concerns that drive this goal?
> So I wonder if you didn't know about this
> website at all (could be my bad, I should have communicated this more
> clearly) or are there other problems with the documentation in the wiki?
Well, of course I saw the wiki but looking at the command documentation I figured it was older and less complete that
what I found in the generated documentation. Therefore I drew the conclusion that the doxygen documentation was the
preferred option.
> Maybe in the end the doxygen documentation is more what people actually
> want?
IMHO it makes sense to have command and supported board info generated from the source code because I see a number of
advantages:
- Documentation is tied to the source code. If options for a command are changed, expect a patch for the documentation
with it. With some discipline from contributors and reviewers this keeps the doc in sync with the code. Since I don't
seem to have any possibility to edit the wiki myself yet, this looks like a good excuse to let the wiki bit rot and not
update the documentation.

- When in future situations branching (for LTS versions?) becomes relevant (there are companies that are still using
UBoot 1.1.6 for example), there will be different implementations or command sets implemented for different branches.
Since the doxygen code is generated from the sources it is always relevant/ up-to-date for the version people are using.
I think having multiple versions documented is very hard and messy to realise with a wiki.

- It saves work to use doxygen since most information needs to be in the source code for the builtin help anyway.
Re-using it for the doxygen documentation (by using the BAREBOX_CMD_HELP_XXX() macros) is more efficient than having to
update the wiki too.

- I know that in the ideal world all changes go through upstream. But having worked at a number of big companies, there
will be all sorts of custom hacks to barebox that are not even relevant to be ever upstreamed (like commands to change
settings in custom FPGA firmware for example). The doxygen documentation can be a great framework to extend with
'home-brew' changes and documentation and make it easier to use barebox in such environments.

For the other documentation (the stuff in section 'Developer' section on the wiki etc), I don' really have a strong
opinion. Maybe the wiki is more convenient here because it has a more powerful and versatile syntax. I just wonder how
contributors to any wiki documentation should progress? Should they post the wiki-formatted pages to the mailing list?
Or are you planning on providing people with login credentials for the wiki on request?

In case we decide to stick with the wiki-only approach, I think it is time to do some clean-up in the source tree and
remove obsolete doxygen pages/comments. Would it make sense to create a DOCUMENTATION file manifest to explain the
documentation strategy?

Best regards,

Mark



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
