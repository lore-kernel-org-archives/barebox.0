Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ag5iW-00065x-1s
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 07:18:04 +0000
Date: Wed, 16 Mar 2016 08:17:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160316071741.GS30994@pengutronix.de>
References: <1457018230-4554-1-git-send-email-rndfax@yandex.ru>
 <1457018230-4554-2-git-send-email-rndfax@yandex.ru>
 <20160304071921.GD21869@pengutronix.de>
 <4230541457086688@web17h.yandex.ru>
 <20160307073016.GG21869@pengutronix.de>
 <1569051457342206@web17j.yandex.ru>
 <20160310092619.GK30994@pengutronix.de>
 <5303551457972793@web8j.yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5303551457972793@web8j.yandex.ru>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] input: make the Input Core be the last in the poller
 queue
To: Aleksey Kuleshov <rndfax@yandex.ru>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Mar 14, 2016 at 07:26:33PM +0300, Aleksey Kuleshov wrote:
> Genius USB keyboard can't work with interrupt msgs, only control msgs.
> Then, with control msgs if there were no report requests during ~10 secs,=
 EHCI stack
> in Barebox reports "timeout error" infinitely until 'usb' command will be=
 exectued
> (i.e. until EHCI halt + reset).
> =

> So:
> =

> 1) usb_kbd can detect "timeout error" (or some other error) so your patch=
, as for now,
> lacks status checking from idev->poll().
> =

> 2) I know this is a WIP patch, but
> =

> > +static void input_devices_poller_func(struct poller_struct *poller)
> > =A0{
> > - struct input_console *ic =3D ctx;
> > + struct input_device *idev;
> > + static uint64_t last_poll;
> > + struct input_notifier *in;
> > +
> > + if (!is_timeout(last_poll, 10 * MSECOND))
> > + return;
> =

> the last_poll var was never set and why 'is_timeout' is here if you have =
async_calls?

The intention was to limit input polling to every 10ms. Indeed the above
doesn't work as expected and could be better done with an async poller.

> Maybe it should be like this?:
> =

> static struct poller_async input_poller;
> static void input_devices_poller_func(void *arg)
> {
>         struct input_device *idev;
>         struct input_notifier *in;
> =

>         list_for_each_entry(idev, &input_devices, list) {
>                 idev->poll(idev);
> =

>                 if (idev->event.value && is_timeout(idev->start, idev->ti=
meout)) {
>                         list_for_each_entry(in, &input_consumers, list)
>                                 in->notify(in, &idev->event);
>                         idev->timeout =3D 40 * MSECOND;
>                         idev->start =3D get_time_ns();
>                 }
>         }
> =

>         poller_call_async(&input_poller, 10 * MSECOND, input_devices_poll=
er_func, NULL);
> }

Yes, looks better.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
