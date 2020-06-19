Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBc5-0002Nv-6P
 for barebox@lists.infradead.org; Fri, 19 Jun 2020 07:39:02 +0000
Date: Fri, 19 Jun 2020 09:38:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200619073859.GQ11869@pengutronix.de>
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
 <20200617081126.5683-16-s.hauer@pengutronix.de>
 <946b4a56-1c05-6dbd-32d1-c100d6681065@emlix.com>
 <20200618115940.GH11869@pengutronix.de>
 <510812c2-03a0-59a0-8d09-5c3c0f2f2593@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <510812c2-03a0-59a0-8d09-5c3c0f2f2593@emlix.com>
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
Subject: Re: [PATCH 15/19] fastboot net: implement fastboot over UDP
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

On Thu, Jun 18, 2020 at 08:33:03PM +0200, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> Am 18.06.20 um 13:59 schrieb Sascha Hauer:
> > On Wed, Jun 17, 2020 at 09:32:45PM +0200, Daniel Gl=F6ckner wrote:
> >>> +static void fastboot_start_download_net(struct fastboot *fb)
> >>> +{
> >>> +	struct fastboot_net *fbn =3D container_of(fb, struct fastboot_net,
> >>> +						fastboot);
> >>> +
> >>> +	fastboot_start_download_generic(fb);
> >>> +	fbn->active_download =3D true;
> >>> +}
> >>
> >> You didn't base v4 on v3, did you?
> > =

> > No, you sent v3 while I had different changes in my version already.
> > =

> >> If FASTBOOT_INIT is received before active_download is set to true, no=
body
> >> will close fb->download_fd.
> > =

> > Ok, I'll add a fastboot_abort() function like you did in v3.
> =

> What I was referring to are the three additional lines in v3 that call
> fastboot_download_finished here instead of setting active_download to true
> when reinit is already true.
> =

> >>> +static void fastboot_send_keep_alive(struct poller_struct *poller)
> >>> +{
> >>> +	struct fastboot_net *fbn =3D container_of(poller, struct fastboot_n=
et,
> >>> +					       keep_alive_poller);
> >>> +
> >>> +	if (!fbn->send_keep_alive)
> >>> +		return;
> >>> +
> >>> +	if (!is_timeout_non_interruptible(fbn->host_waits_since,
> >>> +					 30ULL * NSEC_PER_SEC))
> >>> +		return;
> >>> +
> >>> +	if (!fbn->may_send)
> >>> +		return;
> >>> +
> >>> +	fastboot_tx_print(&fbn->fastboot, FASTBOOT_MSG_INFO, "still busy");
> >>> +
> >>> +	fbn->host_waits_since =3D get_time_ns();
> >>
> >> Why do we need this line?
> >> host_waits_since is assigned get_time_ns() when may_send is set to tru=
e.
> > =

> > It is needed to reinitialize the timeout when we sent the message once.
> > Without this we would send the "still busy" message every few ms after
> > we've sent it for the first time.
> =

> No, because sending a message sets may_send to false and it stays false
> until we update host_waits_since in fastboot_handle_type_fastboot.

You are right. I introduced this when I had a version that flooded the
network with keepalive packets after 30s. Apparently this no longer
happens, so I'll remove this line.

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
