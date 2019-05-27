Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAav-000288-Rq
 for barebox@lists.infradead.org; Mon, 27 May 2019 08:02:59 +0000
Received: by mail-io1-xd44.google.com with SMTP id f22so12534865iol.11
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 01:02:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-2-a.fatoum@pengutronix.de>
 <CAHQ1cqHnqQoUes2FoDgODkJdtFBFwk30r9ZnYm3BvjUwB0RyLQ@mail.gmail.com>
 <e081b9ae-11af-70bb-ca26-299392dafc4c@pengutronix.de>
 <CAHQ1cqG6WGAbQUr3NXOE0N+kJeJsGUZeweb4T5y0PcZg0hEOOg@mail.gmail.com>
 <b7c639aa-3afc-c000-ad3c-4aa479a60804@pengutronix.de>
 <CAHQ1cqF8R9eN1rosQ8oh2N284VyQYrw1Ynxaykks_o9bKj+Ttw@mail.gmail.com>
 <c8ad27d2-607e-099b-3507-78bfba7b555d@pengutronix.de>
In-Reply-To: <c8ad27d2-607e-099b-3507-78bfba7b555d@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 01:02:45 -0700
Message-ID: <CAHQ1cqFbMn6WjVXN8fkSFzBb_H6jYZtnLh5KBjCNBv5cgk4gzg@mail.gmail.com>
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
Subject: Re: [PATCH v2 1/5] clk: imx6: remove quirky
 clk_set_parent(LDB_diN_sel, pll5_video_div)
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Raphael Poggi <poggi.raph@gmail.com>, pza@pengutronix.de

On Mon, May 27, 2019 at 12:49 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Andrey,
>
> On 27/5/19 09:28, Andrey Smirnov wrote:
> >>>> Generally, affected boards have been broken since day 1, because the LVDS output
> >>>> would've locked up every blue moon or so. If this patch breaks them, they're just
> >>>> more reliably broken. :-)
> >>>>
> >>>
> >>> There's a world of difference between not working every once in a blue
> >>> moon and not working from a first boot.
> >>
> >> Ye, the latter one can be dealt with on-the-spot. The other is much more costly to
> >> fix.
> >>
> >
> > Here's a different perspective: If you needed to make an urgent phone
> > call, would you rather you phone didn't work every once in a blue moon
> > or be broken for the get go?
>
> The expectation is that the phone's basic operation was verified beforehand
> and a once-in-a-blue-moon kind of issue is easier missed than an always
> occurring one.
>
> Do I take this as you voicing support of v1 of the patchset?
>

No, not at all. Both versions are fine as far as I am concerned and
should proceed on whatever course you guys decided on. This particular
conversation started with you trying to convince me that "generally"
your patch didn't break the board and it was always broken, just less
reliably so. My point is that this is just a borderline exercise in
sophistry and if a thing went from "working 99% of the time" to "not
working at all" after a change, that change broke that thing. Even if
the change itself is a good thing and definitely should be done.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
