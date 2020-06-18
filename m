Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlow3-0005cs-Qf
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 07:26:09 +0000
Date: Thu, 18 Jun 2020 09:26:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200618072605.GG11869@pengutronix.de>
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
 <20200617081126.5683-17-s.hauer@pengutronix.de>
 <4aa6d528-2bbf-a952-523d-3a22875a7b52@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4aa6d528-2bbf-a952-523d-3a22875a7b52@emlix.com>
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
Subject: Re: [PATCH 16/19] usb: fastboot: execute commands in command context
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jun 17, 2020 at 09:40:56PM +0200, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> Am 17.06.20 um 10:11 schrieb Sascha Hauer:
> > -	*(cmdbuf + req->actual) =3D 0;
> > -	fastboot_exec_cmd(&f_fb->fastboot, cmdbuf);
> > -	*cmdbuf =3D '\0';
> > -	req->actual =3D 0;
> > -	memset(req->buf, 0, EP_BUFFER_SIZE);
> > -	usb_ep_queue(ep, req);
> > +	w =3D xzalloc(sizeof(*w));
> > +	w->f_fb =3D f_fb;
> > +
> > +	memcpy(w->command, req->buf, req->actual);
> > +
> > +	wq_queue_work(&f_fb->wq, &w->work);
> =

> Do we need to check if req->actual < sizeof(w->command)?

Yes, will add.

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
