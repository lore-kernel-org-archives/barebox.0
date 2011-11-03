Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RLrhI-0003KI-6T
	for barebox@lists.infradead.org; Thu, 03 Nov 2011 07:26:49 +0000
Date: Thu, 3 Nov 2011 08:26:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111103072645.GC16886@pengutronix.de>
References: <cover.1320141619.git.mark.vels@team-embedded.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1320141619.git.mark.vels@team-embedded.nl>
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

Hi Mark,

On Tue, Nov 01, 2011 at 11:09:36AM +0100, Mark Vels wrote:
> I just started using BB and was a little anoyed by the fact that although there
> is plenty of documentation in the source code, it did not show up in the
> generated documentation. I think the availability of simple, clean and
> structured information is important for the success of BB and make it 
> enjoyable for developers to get aquainted with BB. Therefore I put some effort
> in getting the doxygen output up to date.
> 
> This patch set tries to update the shell command documentation.
> 
> A short summary of the changes in this patch set:
> - The first few patches deal with orphan pages; pages that were not
>   linked to directly and hence showed up at top-level in the Doxygen output
>   HTML.
> 
> - In the command overview page, a separation between platform-independent
>   and dependent code has been made. In some cases I found 3 versions/
>   implementations of the same command on different ARCHs, including 3 copies
>   of the same documentation. I will try to come up with a solution for this
>   and make sure we have consistent command implementations across different
>   platforms and architectures which IMHO is important.
> 
> - In a few cases I found the command help information inside an #ifdef. I took
>   the liberty to move the BAREBOX_CMD_HELP_* macros outside these conditional
>   sections so that the documentation for that command always shows up in the
>   Doxygen-generated output. Of course the availability of the commands and the
>   help text in bb should not have been altered.
> 
> - An attempt is made to make consistent use of the BAREBOX_CMD_HELP_* macro's.
>   Also some clean-up was done or small amendments to the documentation.
> 
> - I changed a number of syntax errors in the drivers/mtd/nand directory. It was
>   not my intention to touch source-generated documentation but decided to fix a
>   number of syntax errors to make a first attempt to get rid of all Doxygen 
>   warnings and make the output usable again.
> 
> - I also tried to make sure all shell command documentation now uses the same
>   format for describing cli options (for example the use of [OPTIONS] for 
>   options and [<arg1>] for an optional argument. This style is what I saw
>   for most commands already so I just tried to make it's use consistent.
> 
> I realise that the distribution of the number of changes is not optimal,
> this patch set grew considerably bigger as I progressed. In the end it is
> just a big collection of lots of small and trivial changes and I hope you can 
> still find the motivation to review these patches and provide me with some 
> feedback.

Thank you for your efforts, I really appreciate this. I hoped though
that I can shift over the documentation to
http://wiki.barebox.org/doku.php as this is maintainable without
patching the source code. So I wonder if you didn't know about this
website at all (could be my bad, I should have communicated this more
clearly) or are there other problems with the documentation in the wiki?
Maybe in the end the doxygen documentation is more what people actually
want?

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
