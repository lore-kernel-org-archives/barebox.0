Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVA3o-0006V1-N1
 for barebox@lists.infradead.org; Mon, 27 May 2019 07:28:45 +0000
Received: by mail-it1-x141.google.com with SMTP id u186so22820992ith.0
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 00:28:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-2-a.fatoum@pengutronix.de>
 <CAHQ1cqHnqQoUes2FoDgODkJdtFBFwk30r9ZnYm3BvjUwB0RyLQ@mail.gmail.com>
 <e081b9ae-11af-70bb-ca26-299392dafc4c@pengutronix.de>
 <CAHQ1cqG6WGAbQUr3NXOE0N+kJeJsGUZeweb4T5y0PcZg0hEOOg@mail.gmail.com>
 <b7c639aa-3afc-c000-ad3c-4aa479a60804@pengutronix.de>
In-Reply-To: <b7c639aa-3afc-c000-ad3c-4aa479a60804@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 00:28:32 -0700
Message-ID: <CAHQ1cqF8R9eN1rosQ8oh2N284VyQYrw1Ynxaykks_o9bKj+Ttw@mail.gmail.com>
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

On Mon, May 27, 2019 at 12:23 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello,
>
> On 27/5/19 08:50, Andrey Smirnov wrote:
> > On Sun, May 26, 2019 at 11:29 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >>
> >> Hello Andrey,
> >>
> >> On 26/5/19 23:55, Andrey Smirnov wrote:
> >>> On Tue, May 21, 2019 at 8:56 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >>>>
> >>> This particular patch does break a non 6Q+ version of RDU2,  but the
> >>> follow up ones in the series fix it, so it seems that no action is
> >>> really necessary on my part.
> >>
> >> The reparenting removed in this patch isn't reinstated by the rest of the series.
> >> They merely apply parentage expressed in the device tree in a glitch-free manner.
> >>
> >> As both barebox and kernel imx6qdl-zii-rdu2.dtsi lack the relevant
> >> assigned-clock-parents snippet, I am not sure what it is this patch broke that the
> >> follow-up ones fixed?
> >
> > Not sure, will investigate.
>
> Ok.
>
> >
> >>
> >> Generally, affected boards have been broken since day 1, because the LVDS output
> >> would've locked up every blue moon or so. If this patch breaks them, they're just
> >> more reliably broken. :-)
> >>
> >
> > There's a world of difference between not working every once in a blue
> > moon and not working from a first boot.
>
> Ye, the latter one can be dealt with on-the-spot. The other is much more costly to
> fix.
>

Here's a different perspective: If you needed to make an urgent phone
call, would you rather you phone didn't work every once in a blue moon
or be broken for the get go?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
