Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-f195.google.com ([209.85.223.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foZj5-0004HL-9v
 for barebox@lists.infradead.org; Sat, 11 Aug 2018 19:39:05 +0000
Received: by mail-io0-f195.google.com with SMTP id w11-v6so10779099iob.2
 for <barebox@lists.infradead.org>; Sat, 11 Aug 2018 12:36:52 -0700 (PDT)
MIME-Version: 1.0
References: <20180508211502.5476-1-andrew.smirnov@gmail.com>
 <20180514071456.qknyha5bsl6gbkk4@pengutronix.de>
 <CAHQ1cqH0K04JFKYxhf_udU2dFA0dj9HLkYhtLpYJ+XUhv7H3Pw@mail.gmail.com>
 <20180515060727.j6zcpqcu7vwbd3bn@pengutronix.de>
In-Reply-To: <20180515060727.j6zcpqcu7vwbd3bn@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 11 Aug 2018 12:35:39 -0700
Message-ID: <CAHQ1cqF5a0uCKZw08Adr0Uu0eexZ+xgyZNWemVYtnsXLiKEuPw@mail.gmail.com>
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
Subject: Re: [PATCH] serial: lpuart: Avoid division by zero when requested
 baudrate is
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, May 14, 2018 at 11:07 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Mon, May 14, 2018 at 05:20:56PM -0700, Andrey Smirnov wrote:
> > On Mon, May 14, 2018 at 12:14 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > On Tue, May 08, 2018 at 02:15:02PM -0700, Andrey Smirnov wrote:
> > >> With serdev device support added there's now a corner case where:
> > >>
> > >>  1. There is a DT node for a serdev device on one of the UARTs
> > >>  2. There is no driver that binds against serdev device's compatibility
> > >>     string
> > >>
> > >> with 1 and 2 being true it is possible to end up in a situation where
> > >> a particualr UART has not been initalized to any baudrate when
> > >> clock_notifier_call_chain() gets called. This effectively translates
> > >> to
> > >>
> > >>       set_baudrate(uart, 0);
> > >>
> > >> which for LPUART driver result in a division by zero.
> > >
> > > This probably leads to a division by zero for most drivers since
> > > dividing by the baudrate is a common pattern. Wouldn't it be better to
> > > catch this is console_set_baudrate()?
> > >
> >
> > It would, but none of the drivers that register a callback with
> > clock_register_client() (serial_imx.c, serial_auart.c, stm-serial.c,
> > serial_lpuart.c and serial_cadence.c) use console_set_badrate() and
> > instead call ->setbrg() directly. Probably because
> > console_set_baudrate() also handles interactive baudrate switch for
> > f_active console devices. Serial_imx.c doesn't preform any division,
> > so it is safe and I can go through the rest of them to add appropriate
> > checks? Another option is probably to try to come up with common
> > clock_register_client() infrastructure(since all of the handlers are
> > the same) and keep that check there.
> >
> > Let me know if you want me to do either.
>
> I see. For the sake of simplicity I think we can go with your original
> patch. In the auart and cadence driver the clock notify stuff is unused,
> only copy paste leftover from copying the i.MX driver. That leaves the
> lpuart driver which really has this problem.
>

Sascha, I don't think this patch ever made it into master. I am
assuming it just slipped through the cracks. Let me know if anything
needs changing for it to be applied.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
