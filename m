Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STv0p-00036L-S0
 for barebox@lists.infradead.org; Mon, 14 May 2012 13:08:32 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 14 May 2012 15:07:33 +0200
References: <20120513090917.GX27341@pengutronix.de>
 <201205141157.29518.jbe@pengutronix.de> <4FB0E757.5050508@gmail.com>
In-Reply-To: <4FB0E757.5050508@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205141507.33356.jbe@pengutronix.de>
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
Subject: Re: [PATCH 3/9] Minimal S5PV210 + Tiny210 support (2nd stage only)
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Hi Alexey,

Alexey Galakhov wrote:
> >> Using iROM to boot is generally a bad idea, but there's no alternative
> >> right now.
> >
> > For you there might be no alternative right now. But for Barebox its all
> > right if only a basic support for this new CPU is available.
>
> Even if it's not bootable?

At least it can act as a second stage bootloader (network boot for example). 
This is also the stage at which my S3C6410 currently is.

> Ok, there's better plan. Instead of adding iROM in a separate file, I'll
> just call its magic address in board's lowlevel init. So this will be
> for tiny210 only.
>
> > Skip the iROM entirely in your patch series if you want to remove it
> > later on. What sense would it make to include it and then remove it
> > again?
>
> It depends on what one means "remove again". This may happen after a
> year or so. While I think I can implement NAND quite fast, I'm not so
> optimistic about MMC.

In this case MMC boot support just not exists. If it will work with an ugly 
solution there is no more pressure to develop a correct solution for it...and 
it will stay forever.
Keep it in your repository if you need it for your work.

> >> However, there's one bad thing: it's better to add at least one board to
> >> Kconfig with the new arch.
> >
> > ?
>
> If there are no BOARDINFO and board-y defined, barebox cannot be built.
> So one cannot compile barebox with CONFIG_ARCH_something if there are no
> boards utilizing it, right? How to test the compilation then? Is it Ok?

But you can't first add the consumer of a new API (=board file) and after that 
the API itself!

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
