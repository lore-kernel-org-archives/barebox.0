Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1efAte-0001pI-Cd
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 20:46:52 +0000
Date: Fri, 26 Jan 2018 21:46:32 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180126204632.GA3317@ravnborg.org>
References: <20180126192644.5434-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180126192644.5434-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 0/2] Make finding fixup nodes more robust
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sasha.

On Fri, Jan 26, 2018 at 08:26:42PM +0100, Sascha Hauer wrote:
> Recently the node names in i.MX6 device tree files have changed. The
> leading zeroes were removed from the addresses. With this a newer
> barebox doesn't find the nodes to fixup in an old device tree and
> an older barebox doesn't find the nodes in a new device tree. To
> fix this we create new names of the nodes based on things that hopefully
> don't change: We iterate up to a node which is MMIO space mappable
> and get a name that starts with "[adr]". For the remaining parts of
> a node we add "<reg>" when the hierarchy level has a "reg" property
> and only as last fallback we add "{nodename}" in curly brackets.
> This name is safe against node name changes and also against adding
> a new hierarchy level in the device tree (when for example a bus level
> is added).
I think I was bitten by something similar while toying with display
timings.

So I think commands/of_display_timings.c would benefit
from a conversion to this new scheme too - as well as the mtd stuff
in of/partition.c

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
