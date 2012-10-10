Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLrw7-0006ue-MY
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 08:46:40 +0000
Date: Wed, 10 Oct 2012 10:46:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121010084637.GR27665@pengutronix.de>
References: <1349694156-30554-1-git-send-email-s.hauer@pengutronix.de>
 <20121008121527.GY26553@game.jcrosoft.org>
 <CAA4bVAGCbbrw0RmMdpDa88bF12Wjqp2FFixsKZ_-6wYyUKwcCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAGCbbrw0RmMdpDa88bF12Wjqp2FFixsKZ_-6wYyUKwcCQ@mail.gmail.com>
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
Subject: Re: [PATCH] ARM at91sam9260ek: remove unused reset entry
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 08, 2012 at 04:24:18PM +0400, Antony Pavlov wrote:
> On 8 October 2012 16:15, Jean-Christophe PLAGNIOL-VILLARD
> <plagnioj@jcrosoft.com> wrote:
> > On 13:02 Mon 08 Oct     , Sascha Hauer wrote:
> >> The at91sam9260ek has a custom reset function which does the same thing
> >> as the default function. Also it does not define MACH_HAS_LOWLEVEL_INIT
> >> as it should do. Remove the function.
> >>
> >> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >> ---
> > Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> >
> > btw we should rename the command reset reboot because it start to be confusing
> 
> IMHO it is a very good idea!

I would rather use a different name for the reset functions which are in
the startup code. In the end the reset command just resets the board.
'reboot' sounds like something is being shutdown before restarting a
board.

Changing a command is quite painful since all environment scripts will
be broken. I don't think reset is used in the environment, but the
API change to the mount command always nags me when using a new barebox
which has an older environment in flash. I think we really have to be
more careful when changing commands.

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
