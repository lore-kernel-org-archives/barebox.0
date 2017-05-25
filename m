Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22a.google.com ([2a00:1450:4010:c07::22a])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDmNt-0006NF-RK
 for barebox@lists.infradead.org; Thu, 25 May 2017 06:36:35 +0000
Received: by mail-lf0-x22a.google.com with SMTP id 99so78476958lfu.1
 for <barebox@lists.infradead.org>; Wed, 24 May 2017 23:36:12 -0700 (PDT)
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-2-andrew.smirnov@gmail.com>
 <b2e10c3a-cf7d-e3ff-4707-447d56f2e45f@cogentembedded.com>
 <CAHQ1cqFDcR49fvD9JrtSgR5tEMZPnFdPsxSJvwF8c1crqGd7jA@mail.gmail.com>
 <db78852f-c295-d85b-1c38-3c31f2442d5f@cogentembedded.com>
 <1495649778.5146.219.camel@kymetacorp.com>
 <CAHQ1cqEoXNdQA=1kCtxpC3dmJhYGiBY5PBxAOFCwBbZyJ5nj+w@mail.gmail.com>
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Message-ID: <38ca9996-beb8-19a2-99ee-2a4fa7a82232@cogentembedded.com>
Date: Thu, 25 May 2017 09:36:09 +0300
MIME-Version: 1.0
In-Reply-To: <CAHQ1cqEoXNdQA=1kCtxpC3dmJhYGiBY5PBxAOFCwBbZyJ5nj+w@mail.gmail.com>
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
Subject: Re: [PATCH 2/4] gpiolib: Add code to support "active low" GPIOs
To: Andrey Smirnov <andrew.smirnov@gmail.com>, Trent Piepho <tpiepho@kymetacorp.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "cphealy@gmail.com" <cphealy@gmail.com>

> IMHO, whether any of likes it or not, OF_GPIO_ACTIVE_LOW is an
> existing feature and the only technical question is if it should be
> supported by Barebox on per-driver basis or if there should be a
> central API for it.
> 
> Sascha, are you still OK with me proceeding with making and using an
> API, or should I just scrap that and handle this as a part of my
> "usb-no-xcev"?

Is support for case when this usb-no-xcev's gpio is active high needed?

If yes, then your questions above are valid.

If no, then there is third option, completely ignore this aspect of
device tree and just assume that gpio is active low.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
