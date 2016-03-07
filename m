Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acpck-0006Wy-9S
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 07:30:39 +0000
Date: Mon, 7 Mar 2016 08:30:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160307073016.GG21869@pengutronix.de>
References: <1457018230-4554-1-git-send-email-rndfax@yandex.ru>
 <1457018230-4554-2-git-send-email-rndfax@yandex.ru>
 <20160304071921.GD21869@pengutronix.de>
 <4230541457086688@web17h.yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4230541457086688@web17h.yandex.ru>
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

On Fri, Mar 04, 2016 at 01:18:08PM +0300, Aleksey Kuleshov wrote:
> Hi Sascha,
> =

> 04.03.2016, 10:19, "Sascha Hauer" <s.hauer@pengutronix.de>:
> > On Thu, Mar 03, 2016 at 06:17:10PM +0300, Aleksey Kuleshov wrote:
> >> =A0This prevents the case when Input Core and event providers
> >> =A0have to run "at one time" so Input Core will work with non-relevant
> >> =A0data since it will be called first.
> >> =A0---
> >> =A0=A0drivers/input/input.c | 3 ++-
> >> =A0=A01 file changed, 2 insertions(+), 1 deletion(-)
> >
> > I tested the approach to add a .poll callback into struct input_device
> > and to let the input core register one poller for all input devices
> > rather than one poller for each device. This also gives the input core
> > better control when the input devices are polled. Would that approach go
> > into the right direction?
> =

> I don't understand the rules of "drivers/input/*".
> =

> All drivers register themselves as pollers? It seems yes.

Yes, currently they do. Since all drivers do this and all drivers *must*
do it as there is no interrupt support, this could equally well be done
by the input core instead of the drivers.

> =

> All drivers should be regular polled? No, because, for example, USB keybo=
ard
> should be polled once per N ms.
> =

> All drivers could be polled per some-driver-specific N ms? Yes.
> For example, one USB keyboard asks for 10 ms, the other - for 5 ms.

That's some adhoc value. Could be 5ms, 10ms, there's probably no good
reason for one or the other. It must be somewhere between not-too-often
to not slow down barebox and not-too-seldom to not introduce noticable
delays in the reaction to the keys.

> =

> What about GPIO keyboards? Can they be polled once per N ms?
> It seems "why not?".
> =

> So we have some pollers with, for example, 5ms, 10ms and regular callings.
> Do you want to handle this inside the Input Core?

Yes, but all should have the same timeout.

> =

> --------------------------------
> Or may be it will be enough to poll every driver per 10 ms? Actually, why=
 not?
> If that's the case, then your approach is in the right direction.

ok

> =

> Anyway, you will still have to do async call for repeating keys - and tha=
t's
> 400ms for the first press event, and then 40ms for subsuquent.
> =

> So, I guess, you will have two "poller_register" in Input Core (input.c):
> 1) for 10ms polling drivers - "driver poller";
> 2) for key repeating - "repeat poller".

Not necessarily. It could be one poller which does something like:

	if (is_timeout(last_time, 10 * MSECOND))
		/* Not too often */
		return;

	last_time =3D get_time_ns();

	for_each_input_device(idev) {
		if (status_changed(idev)) {
			/* first key press */
			idev->repeat_timeout =3D 400 * MSECOND;
			idev->repeat =3D get_time_ns();
			send_key(idev);
		} else if (is_timeout(idev->repeat, idev->repeat_timeout)) {
			/* repeat key press */
			send_key(idev);
			idev->repeat =3D get_time_ns();
		}
	}

> =

> Just make sure that "driver poller" registers first and after it you regi=
ster "repeat poller".
> --------------------------------
> =

> =

> > I have no ready-to-post patch for this approach, partly because it does=
n't
> > solve the double-return problem and I currently don't understand why.
> =

> The whole problem of double-return is here:
> =

> static void input_console_repeat(void *ctx)
> {
>         struct input_console *ic =3D ctx;
> =

>         if (ic->current_key) {
>                 kfifo_putc(ic->fifo, ic->current_key);
>                 poller_call_async(&ic->poller, 40 * MSECOND,
>                                   input_console_repeat, ic);
>         }
> }
> =

> This function is ASYNC. All what you have to do is to make sure that
> this function gets called AFTER all input-driver-providers will be polled.

I thought that aswell and thought I should have fixed this issue in my
patch, but it didn't work as expected so there's still something wrong,
either in my thoughts or in my implementation.

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
