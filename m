Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YkBHf-0001WC-Qi
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 12:58:45 +0000
Message-ID: <1429534700.3444.23.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 20 Apr 2015 14:58:20 +0200
In-Reply-To: <CAHQ1cqFsmdJn9JWzbHbRP-9CFBUi5Xk_O66btO1Png8cwn0zyA@mail.gmail.com>
References: <CAHQ1cqGVK7z-joRkPEWvswo4JDw6BgPxM9TNVgrsZAyN8cmqUg@mail.gmail.com>
 <20150413130411.GB19889@pengutronix.de>
 <CAHQ1cqFsmdJn9JWzbHbRP-9CFBUi5Xk_O66btO1Png8cwn0zyA@mail.gmail.com>
Mime-Version: 1.0
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
Subject: Re: Booting Linux on Altera's socfpga
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Steffen,

Am Montag, den 20.04.2015, 05:41 -0700 schrieb Andrey Smirnov:

[...]
> >> After the last step I and barebox jumps to the kernel code I don't see
> >> any output on the serial at all.
> >>
> >
> > Wild guess: does the Rocketboards kernel define "CONFIG_VMSPLIT_2G=y"?
> > It is possible, that this produces errors when you use barebox.
> >
> 
> You wild guess was spot on, thank you! It was indeed the reason and as
> soon as I recompiled a Rocketboards kernel without that option
> everything started to work just fine.
> 

Care to explain what might be the problem there?

Regards,
Lucas
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
