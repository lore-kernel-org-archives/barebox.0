Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9Sl-00087U-95
 for barebox@lists.infradead.org; Mon, 27 May 2019 06:50:28 +0000
Received: by mail-it1-x142.google.com with SMTP id m140so22678294itg.2
 for <barebox@lists.infradead.org>; Sun, 26 May 2019 23:50:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
 <20190521155626.9906-2-a.fatoum@pengutronix.de>
 <CAHQ1cqHnqQoUes2FoDgODkJdtFBFwk30r9ZnYm3BvjUwB0RyLQ@mail.gmail.com>
 <e081b9ae-11af-70bb-ca26-299392dafc4c@pengutronix.de>
In-Reply-To: <e081b9ae-11af-70bb-ca26-299392dafc4c@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 26 May 2019 23:50:14 -0700
Message-ID: <CAHQ1cqG6WGAbQUr3NXOE0N+kJeJsGUZeweb4T5y0PcZg0hEOOg@mail.gmail.com>
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

On Sun, May 26, 2019 at 11:29 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Andrey,
>
> On 26/5/19 23:55, Andrey Smirnov wrote:
> > On Tue, May 21, 2019 at 8:56 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >>
> > This particular patch does break a non 6Q+ version of RDU2,  but the
> > follow up ones in the series fix it, so it seems that no action is
> > really necessary on my part.
>
> The reparenting removed in this patch isn't reinstated by the rest of the series.
> They merely apply parentage expressed in the device tree in a glitch-free manner.
>
> As both barebox and kernel imx6qdl-zii-rdu2.dtsi lack the relevant
> assigned-clock-parents snippet, I am not sure what it is this patch broke that the
> follow-up ones fixed?

Not sure, will investigate.

>
> Generally, affected boards have been broken since day 1, because the LVDS output
> would've locked up every blue moon or so. If this patch breaks them, they're just
> more reliably broken. :-)
>

There's a world of difference between not working every once in a blue
moon and not working from a first boot.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
