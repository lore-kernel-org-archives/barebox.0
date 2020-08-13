Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6AdE-00058C-5j
 for barebox@lists.infradead.org; Thu, 13 Aug 2020 10:38:49 +0000
Date: Thu, 13 Aug 2020 12:38:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200813103845.GA19745@pengutronix.de>
References: <20200619074427.17289-1-s.hauer@pengutronix.de>
 <20200619074427.17289-18-s.hauer@pengutronix.de>
 <70810c58-b4f1-945d-fffa-c79083a03c48@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70810c58-b4f1-945d-fffa-c79083a03c48@emlix.com>
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
Subject: Re: [PATCH 17/21] fastboot net: implement fastboot over UDP
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

Hi Daniel,

On Mon, Jun 29, 2020 at 09:50:51PM +0200, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> Am 19.06.20 um 09:44 schrieb Sascha Hauer:
> > +struct fastboot_net {
> > +	struct fastboot fastboot;
> > +
> > +	struct net_connection *net_con;
> > +	struct fastboot_header response_header;
> > +	struct poller_struct poller;
> > +	struct work_queue wq;
> > +	u64 host_waits_since;
> > +	u64 last_download_pkt;
> > +	bool sequence_number_seen;
> > +	bool active_download;
> > +	bool reinit;
> > +	bool send_keep_alive;
> > +	enum may_send may_send;
> > +
> > +	IPaddr_t host_addr;
> > +	u16 host_port;
> > +	u8 host_mac[ETH_ALEN];
> > +	u16 sequence_number;
> > +	u16 last_payload_len;
> > +	uchar last_payload[FASTBOOT_MAX_CMD_LEN + sizeof(struct fastboot_head=
er)];
> =

> This is not FASTBOOT_MAX_CMD_LEN. It's the 64 that is strewn around in
> fastboot_tx_print. Adding a new constant FASTBOOT_MAX_MSG_LEN would be
> correct.

There's no check that the packet copied into last_payload has this
maximum size. I switched to storing the packet in an allocated buffer,
with this the define is not needed anymore.

> > +	net_write_ip(&fbn->net_con->ip->daddr, fbn->host_addr);
> > +	fbn->net_con->udp->uh_dport =3D fbn->host_port;
> > +	net_udp_send(fbn->net_con, fbn->last_payload_len);
> > +
> > +	fbn->may_send =3D MAY_NOT_SEND;
> =

> You moved that line below net_udp_send. Is there any risk that
> =

> 1. our work queue executes a command which calls fastboot_tx_print
> 2. the net_udp_send caused by that fastboot_tx_print sleeps
> 3. our poller is executed and decides to send a message because
>    may_send is still MAY_SEND_MESSAGE

Ok, changed that.

> > +	fbn->last_download_pkt =3D get_time_ns();
> > +}
> =

> Although you added that last_download_pkt timeout check to the poller,
> there is still the risk that we will never close download_fd if
> fastboot_net_abort is called (f.ex. by the first fastboot_tx_print
> inside cb_download) before we open download_fd. In that case there
> is no poller to check for the timeout.

I was not able to provoke such a behaviour. It seems that
fastboot_abort() is called often enough that this doesn't happen. In
doubt it happens when the next fastboot session is initiated.

> > +	if (fastboot_data_len >=3D FASTBOOT_MAX_CMD_LEN) {
> =

> Still off-by-one. Replace >=3D with >

Ok, fixed.

> > +		ret =3D poller_register(&fbn->poller, "fastboot");
> > +		if (ret) {
> > +			pr_err("Cannot register poller: %s\n", strerror(-ret));
> > +			return;
> =

> It is not obvious that a second FASTBOOT_INIT will _not_ cause this
> error because fastboot_net_abort unregistered the previous poller.
> I would at least add a comment to the fastboot_net_abort(fbn) line.

Added a comment.

> > +{
> > +	struct fastboot_net *fbn =3D container_of(poller, struct fastboot_net,
> > +					       poller);
> > +
> > +	if (fbn->active_download && is_timeout(fbn->last_download_pkt, 5 * SE=
COND)) {
> =

> Should pollers prefer is_timeout_non_interruptible over is_timeout?

Since with the current approach we no longer execute pollers inside of
pollers this shouldn't make a difference.

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
