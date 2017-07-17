Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dX4PY-0001dX-11
 for barebox@lists.infradead.org; Mon, 17 Jul 2017 11:42:12 +0000
Date: Mon, 17 Jul 2017 13:41:33 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170717114133.GA26062@ravnborg.org>
References: <20170707121000.GA16920@ravnborg.org>
 <1500285149.6594.30.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1500285149.6594.30.camel@pengutronix.de>
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
Subject: Re: [PATCH v2 0/23] at91: move reset vector to board code
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Lucas.
> 
> Just to let you know the current status here: While I think you are on
> the right track with this, I'm currently lacking the bandwidth to
> properly review this series. I'm a bit hesitant to just throw it into
> -next without any kind of review, so I'm still hoping for others to take
> a look.

Thanks for the heads-up.
Review is a must as I am in unknown land here.
The most important part is if the apporach is correct or not.

I have continued with the effort to DT enable
the at91sam9263ek board and have a barebox that
boots using DT now with most stuff working.

atmel_lcdfb did not support DT which I have added.
All other drivers worked more or less out-of-the-box.

In the process there have been a few cleanups and fixes
and I will post the patches after some more testing.

Not everything is working yet:
- the NAND cannot read BBT (NAND is properly identified)
- environment load /dev/env0 fails (maybe related to the above)
- no kernel booted yet
- bootstrap not tested (will provide a defconfig if I get it working)
- network is not yet tested

I expect to work on the above list and hold back patches
until everything is working. That will take a few days.

If everything goes like for the other challenges I will
run to the other side of the forest to pick up a small
splinter of wood in my effort to find a fix.
Which is OK as this is part of the fun :-)

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
