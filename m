Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fo1FW-0007XR-1P
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 06:50:15 +0000
Received: by mail-it0-x244.google.com with SMTP id d70-v6so3868998ith.1
 for <barebox@lists.infradead.org>; Thu, 09 Aug 2018 23:50:03 -0700 (PDT)
MIME-Version: 1.0
References: <20180615040852.22906-1-andrew.smirnov@gmail.com>
 <CAHQ1cqG_HW3P+tswVjEh8DMOKi5vuB8T6h0kBUas8Fw+3qxSXQ@mail.gmail.com>
 <20180810064554.hmeivvee3yca2gfe@pengutronix.de>
In-Reply-To: <20180810064554.hmeivvee3yca2gfe@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 9 Aug 2018 23:49:51 -0700
Message-ID: <CAHQ1cqEXxnQJ0rK5=dv8YM3uSa2anxCRr1DB7mT65+gpefQJxQ@mail.gmail.com>
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
Subject: Re: [RFC] Revert "i.MX: Add provisions to boot from IRAM"
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Aug 9, 2018 at 11:45 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Thu, Aug 09, 2018 at 03:51:50PM -0700, Andrey Smirnov wrote:
> > On Thu, Jun 14, 2018 at 9:09 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
> > >
> > > After being introduced 3 years ago this feature ended up being
> > > "obsoleted by events" and project it was supposed to be a part of
> > > winded down.
> > >
> > > Revert this feature due to:
> > >
> > >   a) Lack of users
> > >
> > >   b) Existence of better way to make barebox load via SRAM as
> > >   intermediary step that does not require two separate images to be
> > >   built (.imx-sram-img)
> > >
> > > This reverts commit 903c9477a08c5655161779ef4144886928ecc7d1.
> > > ---
> > >
> > > I am assuming that this feature was never used by anyone but me (hence
> > > a) above), so it should be safe to drop it. However if this feature is
> > > useful to anyone, I am more than happy to keep it.
> > >
> > > Thanks,
> > > Andrey Smirnov
> > >
> >
> > Sascha, any comment on this?
>
> I like it. We can apply this if you like. It needs a rebase though, it
> doesn't apply anymore as is.

OK, will do and resubmit as and actual patch with a proper DCO.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
