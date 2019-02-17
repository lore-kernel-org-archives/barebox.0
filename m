Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvUNm-0008RY-S0
 for barebox@lists.infradead.org; Sun, 17 Feb 2019 21:53:56 +0000
Date: Sun, 17 Feb 2019 22:53:47 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190217215347.GA12408@ravnborg.org>
References: <20190217161609.11305-1-sam@ravnborg.org>
 <20190217184415.GA12478@ravnborg.org>
 <20190217213255.GA5986@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190217213255.GA5986@lenoch>
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
Subject: Re: [PATCH v2 0/9] at91: Support PMC clock bindings
To: Ladislav Michl <ladis@linux-mips.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Ladislav

On Sun, Feb 17, 2019 at 10:32:55PM +0100, Ladislav Michl wrote:
> Hi Sam,
> 
> On Sun, Feb 17, 2019 at 07:44:15PM +0100, Sam Ravnborg wrote:
> > Hi all.
> > 
> > > Sam Ravnborg (9):
> > >       clocksource: Do not mix depends and select for ATMEL_PIT
> > >       arm: at91: fix at91_configure_usart6 warning
> > >       arm: at91: add SOC_SAMA5{D3,D4}
> > >       clk: at91: add at91sam9260
> > >       clk: at91: add at91sam9rl
> > >       clk: at91: add at91sam9x5
> > >       clk: at91: add sama5d2
> > 
> > >       clk: at91: add sama5d4
> > This patch is bogus, fails to build.
> > 
> > >       clk: at91: update to new bindings
> > Likewise, at least part of it.
> 
> Well, it builds for at91sam9260 (at91sam9g20) and is runtime tested now.
> So for that configuration here is my
> Tested-by: Ladislav Michl <ladis@linux-mips.org>
Thanks, very good to know it works for others.

The build failure started when I pulled in clk-h32mx and sama5d4.
They are not used by SAM9 so you are safe.

> Besides, current master plus your patches is about 1,3kB bigger, so
> it does not fit Dataflash anymore, but that is separate issue to solve :)
The current patch pulls in at91sam9260 + at91sam9rl + at91sam9x5
for the SAM9 targets. This is like done in the kernel today.
We may have to look at splitting this up.

The patchset also enabled some clocks that was not enabled before.
Maybe we can avoid them as they may not be required in the bootloader.
This is also something inherited from the kernel.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
