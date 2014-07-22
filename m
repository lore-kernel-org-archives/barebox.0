Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9Vob-0003Ra-77
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 08:52:54 +0000
Message-ID: <1406019042.4667.23.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 22 Jul 2014 10:50:42 +0200
In-Reply-To: <CAOpc7mGUTXhr6FaYvC54HgyvyT=UD=h8CrrwynKzVuSSiFE1pw@mail.gmail.com>
References: <1406015842-20754-4-git-send-email-holgerschurig@gmail.de>
 <1406017939.4667.14.camel@weser.hi.pengutronix.de>
 <CAOpc7mGUTXhr6FaYvC54HgyvyT=UD=h8CrrwynKzVuSSiFE1pw@mail.gmail.com>
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
Subject: Re: [PATCH 3/3] sandbox: work around missing of_add_memory_bank()
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Am Dienstag, den 22.07.2014, 10:39 +0200 schrieb Holger Schurig:
> There are no memory banks in the sandbox, so adding a working
> of_add_memory_bank?  How should that work? Or do you mean adding a
> dummy of_add_memory_bank() to arch/sandbox/os/board.c?
> 
Can you please elaborate why of_add_memory() doesn't work if no memory
banks are there? Why do you need this ifdef in the first place? Your
commit message fails to explain this.

> > his adds ifdeffery (which everyone hates) just for the sake of a static checker
> 
> You probably never have run "scan-build make" after "apt-get install
> clang-3.5" ?!?!   For me, this two lines are minimal, and the amount
> of warnings that scan-build finds in barebox is staggering.

This argument doesn't work. The more interesting point here would be to
know how much of those are real problems. Different static checkers
expose vastly different signal-to-noise ratios.

I have run barebox through different static checkers, but as a fact I
default to only use those which don't require a build to be run and have
a high signal-to-noise ratio. Which doesn't mean clangs scan-build
couldn't be a welcome addition, so please convince me.

Regards,
Lucas
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
