Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmB1i-0006ql-9Q
 for barebox@lists.infradead.org; Fri, 19 Jun 2020 07:01:27 +0000
Date: Fri, 19 Jun 2020 09:01:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200619070124.GP11869@pengutronix.de>
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
 <20200617081126.5683-15-s.hauer@pengutronix.de>
 <2620277a-6a8e-6de1-ac2b-f8b870adee08@emlix.com>
 <20200617195446.GE11869@pengutronix.de>
 <b170eaf6-60cb-2f8f-aff0-547f4fa03f0a@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b170eaf6-60cb-2f8f-aff0-547f4fa03f0a@emlix.com>
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
Subject: Re: [PATCH 14/19] fastboot: remove double print
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jun 18, 2020 at 09:08:01PM +0200, Daniel Gl=F6ckner wrote:
> Am 17.06.20 um 21:54 schrieb Sascha Hauer:
> > Another option would be to put calling of fastboot_download_finished()
> > into a workqueue, or just open code it as your original series did.
> =

> ... now I understand that by "open code it" you are referring to calling
> net_poll!

By "open code" I meant that the functionality of
fastboot_download_finished() was duplicated in the fastboot net code,
but this was never the case. It seems my memory tricked me.

> =

> I would have tried to run everything from fastboot_poll in a workqueue.
> Since worklets are not reordered, splitting fastboot_poll into two workle=
ts
> might make sense. The worklet for calling fastboot_download_finished is
> queued when fastboot_handle_type_fastboot sets active_download to false a=
nd
> the worklet for the command execution is queued, as you implemented it, w=
hen
> a new command arrives.

I gave it a try and it was easy enough to implement, so we can drop this
patch.

Regards,
 Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
