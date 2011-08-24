Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QwGND-0003Ip-Rb
	for barebox@lists.infradead.org; Wed, 24 Aug 2011 16:32:16 +0000
Date: Wed, 24 Aug 2011 18:32:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110824163213.GI31404@pengutronix.de>
References: <CAA4bVAFi6B9fsNYn8KLor0_ObZVc2GmxXtwpeuaAC1N7Vt9H+Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAFi6B9fsNYn8KLor0_ObZVc2GmxXtwpeuaAC1N7Vt9H+Q@mail.gmail.com>
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
Subject: Re: [RFC] reference errors in OMAP documetation
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Tue, Aug 23, 2011 at 06:40:24PM +0400, Antony Pavlov wrote:
> Hi!
> 
> I posted this message some times ago, but nobody commented it.
> So I reposting it.
> 
> 
> I found some file reference errors in OMAP documentation.
> 
> I have made the patch, but I can't send it via git-send-email:
> some lines in dox file are too long.
> 
> Here is the patch, please look at it:
> 
> http://prizma.bmstu.ru/~antony/barebox/0001-ARM-fix-formatting-and-file-references-in-documentat.patch

I just added a wiki account for you, let me know if this works.

We could add a developer/arm/omap page in the wiki with the correct
version of the text. There are some parts in it I don't exactly agree
with, for example the policy to put all omap boards into
arch/arm/boards/omap. The panda board does not do so and really the
other boards shouldn't do it aswell.
Originally Nishanth said that all omap boards are so similar that
the code should be in a single directory. I did not realize it
at that time, having common code is a good thing, but it should go
to arch/arm/mach-omap and the board code still in arch/arm/boards/<name>

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
