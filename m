Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKpS3-00073F-2q
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 11:55:19 +0000
Date: Sun, 7 Oct 2012 13:55:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121007115515.GH1322@pengutronix.de>
References: <1349354221-28409-3-git-send-email-shc_work@mail.ru>
 <20121005121204.GP1322@pengutronix.de>
 <20121007140337.b778f85b.shc_work@mail.ru>
 <20121007104550.GG1322@pengutronix.de>
 <20121007145701.75a20196.shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121007145701.75a20196.shc_work@mail.ru>
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
Subject: Re: [PATCH 3/3] ARM: Add CLPS711X architecture
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Oct 07, 2012 at 02:57:01PM +0400, Alexander Shiyan wrote:
> On Sun, 7 Oct 2012 12:45:50 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> ...
> > And in the driver:
> > 
> > #define SYSCON		0x100
> > 
> > 	...
> > 	writel(0xdeadbeef, base + SYSCON);
> > 	...
> You a right, but SYSCON is used not only for UARTs. This register also
> used for setup timers, keypad, lcd, spi etc... Just look on bit definitions.
> Same I can say about other resisters.

Oh my gosh, that indeed looks strange... Normally register regions are
reserved for separate units, on this SoC it seems more that bit
positions inside registers are reserved for separate units ;)

> In this case we have some redundancy definitions. I will think about other way.

Try and have a look if you could clean this up a bit, but it might be
that you already found the best solution.

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
