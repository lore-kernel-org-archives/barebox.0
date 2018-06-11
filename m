Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x244.google.com ([2607:f8b0:4001:c06::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSR3d-0007zm-OA
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 17:56:47 +0000
Received: by mail-io0-x244.google.com with SMTP id s26-v6so24929227ioj.4
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2018 10:56:35 -0700 (PDT)
MIME-Version: 1.0
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
 <20180608064636.cv7nx5vpkdioea4f@pengutronix.de>
In-Reply-To: <20180608064636.cv7nx5vpkdioea4f@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Jun 2018 10:56:22 -0700
Message-ID: <CAHQ1cqHRaU6PY6dtGP2LLr=4myKzO9A5G0SzffmmPa0JZp394A@mail.gmail.com>
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
Subject: Re: [RESEND v3 00/52] ARM: i.MX8MQ and EVK support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jun 7, 2018 at 11:46 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi Andrey,
>
> On Thu, Jun 07, 2018 at 06:00:16AM -0700, Andrey Smirnov wrote:
> > RESEND to include ALL of the patches in the series (not just first 38)
> >
> > Everyone:
> >
> > Picking up where Sascha left off, this is the next version of the
> > patchset that adds support for i.MX8MQ EVK board.
>
>
> Applied up to 30/52 and most of the rest. For 32 I'd like to ask if it's
> really worth making several clock functions static inline. It increases
> the image size by a few kb. We do more often than I like, so isn't there
> another solution?
>

Very early versions of the series were relying on functioning udelay()
function, but that's not the case any more, so I can move all of those
shared functions into lib/ and link them against a dummy
get_time_ns(). This should still allow me to use readx_poll_timeout()
for infinite timeouts and not increase the image size.

I'll make that change in v4.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
