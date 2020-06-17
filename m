Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jle93-0003vf-J3
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 19:54:51 +0000
Date: Wed, 17 Jun 2020 21:54:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200617195446.GE11869@pengutronix.de>
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
 <20200617081126.5683-15-s.hauer@pengutronix.de>
 <2620277a-6a8e-6de1-ac2b-f8b870adee08@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2620277a-6a8e-6de1-ac2b-f8b870adee08@emlix.com>
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

On Wed, Jun 17, 2020 at 08:24:48PM +0200, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> Am 17.06.20 um 10:11 schrieb Sascha Hauer:
> > In fastboot UDP we can't send two messages without waiting for an ack
> > from the host in between. Do not send two messages directly after each
> > other in fastboot_download_finished() to make it safe to be called from
> > the fastboot UDD code.
> =

> UDD -> UDP?

Yes.

> =

> I see no reason for this patch. When this function is called, we have just
> managed to transfer a file where every data packet was sent only after the
> host has received our ack for the previous packet. And now you fear that =
the
> host won't ack our next packet?

The host indeed acks our next packet. The problem is that we are in
poller context and can't wait for the ack. See fastboot_write_net():

	/*
	 * This function is either called in command context, in which
	 * case we may wait, or from the keepalive poller which explicitly
	 * only calls us when we don't have to wait here.
	 */
	ret =3D fastboot_net_wait_may_send(fbn);
	if (ret)
		return ret;

It actively waits for the ack, but we will never receive it because we
don't run a second poller in the background.

Another option would be to put calling of fastboot_download_finished()
into a workqueue, or just open code it as your original series did.

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
