Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XvNmf-0002qS-2R
 for barebox@lists.infradead.org; Mon, 01 Dec 2014 10:00:45 +0000
Received: by mail-lb0-f176.google.com with SMTP id p9so8446852lbv.35
 for <barebox@lists.infradead.org>; Mon, 01 Dec 2014 02:00:22 -0800 (PST)
Date: Mon, 1 Dec 2014 14:01:48 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20141201140148.4e8652b784b920d027a6d645@gmail.com>
In-Reply-To: <20141201063140.GB30369@pengutronix.de>
References: <1417180052-16824-1-git-send-email-antonynpavlov@gmail.com>
 <20141201063140.GB30369@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] clocksource: dummy: don't show message on first cs read
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 1 Dec 2014 07:31:40 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Nov 28, 2014 at 04:07:32PM +0300, Antony Pavlov wrote:
> > In the commit
> > =

> >     commit 96cae61eba199b9c3f5451f293cf60db2b535164
> >     Author: Sascha Hauer <s.hauer@pengutronix.de>
> >     Date:   Tue Sep 30 08:25:55 2014 +0200
> > =

> >         clock: Add a variable with the first timestamp after startup
> > =

> >         For measuring the startup time it's useful to save the first
> >         timestamp after the clocksource has been registered.
> > =

> > the behaviour of clocksource subsystem is changed: every registered
> > clocksource is called at least once. So the dummy clocksource (if enabl=
ed)
> > _ALWAYS_ prints a confusing 'Using dummy clocksource' warning.
> > =

> > This patch fixes the situation: now the 'Using dummy clocksource'
> > warning is printed only if the dummy clocksource is called second time.
> =

> I don't like this very much. The dummy clocksource expects some certain
> behaviour of the common clocksource code and works around this when it
> changes. How about integrating the dummy clocksource into the core
> instead, like
> =

> uint64_t get_time_ns(void)
> {
> 	if (!current_clock)
> 		return dummy_counter++;
> =

> 	...
> }
> =

> Then add a initcall which warns later if we still don't have a valid
> clocksource?

Good plan! I'll try to realize it in several days.
 =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
