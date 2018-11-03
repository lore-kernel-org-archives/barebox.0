Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIqnY-00037y-NU
 for barebox@lists.infradead.org; Sat, 03 Nov 2018 07:56:50 +0000
Date: Sat, 3 Nov 2018 08:56:31 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181103075631.GA28832@ravnborg.org>
References: <20181101091846.10882-1-l.stach@pengutronix.de>
 <20181101091846.10882-4-l.stach@pengutronix.de>
 <20181102222727.GA17886@ravnborg.org>
 <CAHQ1cqFnL4eGC7PR-Q+W4ZsqEwSBi9OxEhxGhq6VGi7y_f-ndg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFnL4eGC7PR-Q+W4ZsqEwSBi9OxEhxGhq6VGi7y_f-ndg@mail.gmail.com>
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
Subject: Re: [PATCH v4 04/11] ARM: allow secure monitor code to be built
 without PSCI
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Andrey.

> >
> >         bl  something
> >         bl  something_else
> >
> > In the above (when CONFIG_ARM_PSCI is defined).
> > Seems that we will never hit the second branch long instruction.
> >
> > But maybe I am just clueless on the assembly syntax?
> >
> 
> That just a regular call, "bl" means "branch and store return address
> in link register", if you look at the source of of
> "secure_monitor_stack_setup" its last instruction is "bx lr" which is
> "branch to address stored in link register" (potentially switching
> from/to Thumb, if I remember the meaning of "x" at the end correctly).

Thanks. I am now a tiny little less clueless on ARM assembler :-)

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
