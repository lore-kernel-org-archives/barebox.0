Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYyeM-0000LF-GP
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 11:29:59 +0000
Date: Fri, 9 Dec 2011 12:29:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111209112953.GH27267@pengutronix.de>
References: <1323335864-27895-1-git-send-email-s.hauer@pengutronix.de>
 <20111208142433.GC23884@game.jcrosoft.org>
 <20111209080652.GY27267@pengutronix.de>
 <20111209104631.GN23884@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111209104631.GN23884@game.jcrosoft.org>
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
Subject: Re: [PATCH] ARM i.MX27: initialize MAX
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 09, 2011 at 11:46:31AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:06 Fri 09 Dec     , Sascha Hauer wrote:
> > On Thu, Dec 08, 2011 at 03:24:33PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 10:17 Thu 08 Dec     , Sascha Hauer wrote:
> > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > ---
> > > >  arch/arm/mach-imx/imx27.c                   |   43 +++++++++++++++++++++++++++
> > > >  arch/arm/mach-imx/include/mach/imx27-regs.h |    1 +
> > > >  2 files changed, 44 insertions(+), 0 deletions(-)
> > > do we really need this in barebox?
> > 
> > Why not? It's basically just a handfull of register accesses which are
> > normally hidden in lowlevel_init without anybody noticing it. The fact
> > that I created defines for them just makes it slightly more visible.
> can we have a small comment when they are needed at list

What do you mean? The patch has this:

> +/*
> + * Initialize MAX on i.MX27. necessary to give the DMA engine
> + * higher priority to the memory than the CPU. Needed for proper
> + * audio support
> + */

(I agree that this does not necessarily has to be done in barebox, but
my plan is to send a patch for the kernel aswell. This increases the
chance that it is done at least once somewhere)

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
