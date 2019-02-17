Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvU3a-0001FM-P1
 for barebox@lists.infradead.org; Sun, 17 Feb 2019 21:33:05 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23990828AbfBQVc40G2l9 (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 17 Feb 2019 22:32:56 +0100
Date: Sun, 17 Feb 2019 22:32:55 +0100
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20190217213255.GA5986@lenoch>
References: <20190217161609.11305-1-sam@ravnborg.org>
 <20190217184415.GA12478@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190217184415.GA12478@ravnborg.org>
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
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Sun, Feb 17, 2019 at 07:44:15PM +0100, Sam Ravnborg wrote:
> Hi all.
> 
> > Sam Ravnborg (9):
> >       clocksource: Do not mix depends and select for ATMEL_PIT
> >       arm: at91: fix at91_configure_usart6 warning
> >       arm: at91: add SOC_SAMA5{D3,D4}
> >       clk: at91: add at91sam9260
> >       clk: at91: add at91sam9rl
> >       clk: at91: add at91sam9x5
> >       clk: at91: add sama5d2
> 
> >       clk: at91: add sama5d4
> This patch is bogus, fails to build.
> 
> >       clk: at91: update to new bindings
> Likewise, at least part of it.

Well, it builds for at91sam9260 (at91sam9g20) and is runtime tested now.
So for that configuration here is my
Tested-by: Ladislav Michl <ladis@linux-mips.org>

Besides, current master plus your patches is about 1,3kB bigger, so
it does not fit Dataflash anymore, but that is separate issue to solve :)

Thanks a lot for your work!

	ladis

> Both issues discovered while working on adding DT support
> to sama5d4 xplained board.
> 
> Will repost an updated series when I have it fixed.
> 
> 	Sam
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
