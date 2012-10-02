Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJ5g4-0003NJ-2m
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 16:50:38 +0000
Date: Tue, 2 Oct 2012 18:50:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121002165033.GZ1322@pengutronix.de>
References: <1349183217-19639-1-git-send-email-s.hauer@pengutronix.de>
 <20121002143011.GZ26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121002143011.GZ26553@game.jcrosoft.org>
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
Subject: Re: [PATCH] pbl updates
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 02, 2012 at 04:30:11PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:06 Tue 02 Oct     , Sascha Hauer wrote:
> > Here are two updates for the MMU code in the decompressor. The first
> > one may come in handy when a JTAG debugger is connected. The second
> > one is more important. It actually makes turning on the MMU in the
> > decompressor useful by making map_cachable work. It turned out that
> > this didn't work leaving the whole mapping uncached.
> > Note that the code in current master should work, but slow. Since
> > it actually does work I do not want to put this into the upcoming
> > release.
> As I report the current code does not work on at91sam9g45
> I suspect as we boot from the second ram controler on this SoC
> 
> So please hold the release that I can try those patch on sam9g45 if they fix
> the PBL they will be mandatory for it

I think they won't fix it. map_cachable currently is a noop, but this
should be fine as now we have a complete 1:1 uncached mapping. I don't
see why this shouldn't work. I hope you find out.

What we can do for now is to add an additional Kconfig option to make
enabling the MMU in the pbl optional. Then at least it should work on
your boards.

BTW I hunted down a strange problem with the MMU on a KaRO Tx53 board.
It turned out that the image header (which basically is a poke table
to initialize the SDRAM) indeed initialized the SDRAM. The problem was
that this SDRAM setup depends on some other lowlevel setup which is done
later. The SDRAM setup was good enough to load with MMU disabled, but
once the MMU is enabled the SDRAM does burst accesses and the board goes
to nirvana.
Maybe your problem is related somehow.

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
