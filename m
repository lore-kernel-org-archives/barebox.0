Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltCq-0002QG-GX
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 11:59:46 +0000
Date: Thu, 18 Jun 2020 13:59:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200618115940.GH11869@pengutronix.de>
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
 <20200617081126.5683-16-s.hauer@pengutronix.de>
 <946b4a56-1c05-6dbd-32d1-c100d6681065@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <946b4a56-1c05-6dbd-32d1-c100d6681065@emlix.com>
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

On Wed, Jun 17, 2020 at 09:32:45PM +0200, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> Am 17.06.20 um 10:11 schrieb Sascha Hauer:
> =

> > +	ret =3D fastboot_net_wait_may_send(fbn);
> > +	if (ret)
> > +		return ret;
> =

> Where is the part that aborts the session on timeout?

Ok, will add it (back)

> =

> > +static void fastboot_start_download_net(struct fastboot *fb)
> > +{
> > +	struct fastboot_net *fbn =3D container_of(fb, struct fastboot_net,
> > +						fastboot);
> > +
> > +	fastboot_start_download_generic(fb);
> > +	fbn->active_download =3D true;
> > +}
> =

> You didn't base v4 on v3, did you?

No, you sent v3 while I had different changes in my version already.

> If FASTBOOT_INIT is received before active_download is set to true, nobody
> will close fb->download_fd.

Ok, I'll add a fastboot_abort() function like you did in v3.

> =

> > +static void fastboot_handle_type_fastboot(struct fastboot_net *fbn,
> > +					  struct fastboot_header header,
> > +					  char *fastboot_data,
> > +					  unsigned int fastboot_data_len)
> > +{
> > +	fbn->response_header =3D header;
> > +	fbn->host_waits_since =3D get_time_ns();
> > +	fbn->may_send =3D true;
> =

> No MAY_SEND_ACK and MAY_SEND_MESSAGE? So you choose to ignore protocol
> violations?

Will add it back.

> =

> > +	if (fbn->active_download) {
> > +		if (!fastboot_data_len && fbn->fastboot.download_bytes
> > +					   =3D=3D fbn->fastboot.download_size) {
> > +			fastboot_download_finished(&fbn->fastboot);
> =

> Now I see why you dropped that fastboot_tx_print in the previous patch.
> =

> > +		} else {
> > +			fastboot_data_download(fbn, fastboot_data,
> > +					       fastboot_data_len);
> > +		}
> > +	} else {
> =

> Fastboot does not allow to queue multiple commands. A command must have
> finished before the host may send the next one. That's why there was
> an "else if (!fbn->command[0])".

Ah, I see. This would be !list_empty(&fbn->wq.work) now.

> =

> > +		if (fastboot_data_len >=3D FASTBOOT_MAX_CMD_LEN) {
> =

> Off-by-one error: if (fastboot_data_len > FASTBOOT_MAX_CMD_LEN) {

Ok.

> =

> > +		} else if (fastboot_data_len) {
> > +			struct fastboot_work *w;
> > +
> > +			w =3D xzalloc(sizeof(*w));
> =

> Why can't we embed struct fastboot_work in struct fastboot_net?
> As I wrote above it is impossible to queue multiple commands.

We could do that, but I prefer to keep it allocated. It makes the
lifetime of the work item clearer.

> =

> > +			w->fbn =3D fbn;
> > +			memcpy(w->command, fastboot_data, fastboot_data_len);
> > +			w->command[fastboot_data_len] =3D 0;
> > +
> > +			wq_queue_work(&fbn->wq, &w->work);
> > +		}
> > +	}
> > +
> > +	if (!fbn->fastboot.active)
> > +		fbn->active_download =3D false;
> =

> These two lines were gone in v3.

Ok, will drop them.

> =

> > +static void fastboot_send_keep_alive(struct poller_struct *poller)
> > +{
> > +	struct fastboot_net *fbn =3D container_of(poller, struct fastboot_net,
> > +					       keep_alive_poller);
> > +
> > +	if (!fbn->send_keep_alive)
> > +		return;
> > +
> > +	if (!is_timeout_non_interruptible(fbn->host_waits_since,
> > +					 30ULL * NSEC_PER_SEC))
> > +		return;
> > +
> > +	if (!fbn->may_send)
> > +		return;
> > +
> > +	fastboot_tx_print(&fbn->fastboot, FASTBOOT_MSG_INFO, "still busy");
> > +
> > +	fbn->host_waits_since =3D get_time_ns();
> =

> Why do we need this line?
> host_waits_since is assigned get_time_ns() when may_send is set to true.

It is needed to reinitialize the timeout when we sent the message once.
Without this we would send the "still busy" message every few ms after
we've sent it for the first time.

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
