Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x243.google.com ([2607:f8b0:4001:c06::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTnmo-0004uf-38
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 12:25:04 +0000
Received: by mail-io0-x243.google.com with SMTP id d22-v6so10503816iof.13
 for <barebox@lists.infradead.org>; Fri, 15 Jun 2018 05:24:51 -0700 (PDT)
MIME-Version: 1.0
References: <20180615034409.22180-1-andrew.smirnov@gmail.com>
 <20180615070658.rv7tzscgd2a2aj5y@pengutronix.de>
In-Reply-To: <20180615070658.rv7tzscgd2a2aj5y@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 15 Jun 2018 05:24:39 -0700
Message-ID: <CAHQ1cqFweHDvjFaUMztqoYgfk=CQy6tde72F-B9uPPtRjnEJWQ@mail.gmail.com>
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
Subject: Re: [PATCH v7 00/10] ARM: i.MX8MQ and EVK support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jun 15, 2018 at 12:06 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Thu, Jun 14, 2018 at 08:43:59PM -0700, Andrey Smirnov wrote:
> > Everyone:
> >
> > Picking up where Sascha left off, this is the next version of the
> > patchset that adds support for i.MX8MQ EVK board.
> >
> > This patchest is also availible at:
> >
> >   https://github.com/ndreys/barebox/tree/imx8m-support-v7
>
> Applied with some adjustments. I meant to bypass the call to is_timeout
> and get_time_ns for the PBL rather than providing dummy functions for
> it.
>

Yeah, that's how I understood you, but providing dummy functions
seemed like a better option.

Anyway, I am glad to hear it landed.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
