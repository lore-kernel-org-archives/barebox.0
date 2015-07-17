Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFzoA-0000b0-Ru
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 07:11:48 +0000
Received: by lagx9 with SMTP id x9so56173037lag.1
 for <barebox@lists.infradead.org>; Fri, 17 Jul 2015 00:11:25 -0700 (PDT)
Date: Fri, 17 Jul 2015 10:18:26 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150717101826.8b7440dfe537ba4fd8318a9f@gmail.com>
In-Reply-To: <20150716195150.GG18700@pengutronix.de>
References: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
 <1436991230-14251-5-git-send-email-antonynpavlov@gmail.com>
 <20150716195150.GG18700@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 04/12] WIP: fs/nfs.c: convert to picotcp
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 16 Jul 2015 21:51:50 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
> =

> On Wed, Jul 15, 2015 at 11:13:42PM +0300, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  fs/nfs.c | 150 +++++++++++++++++++++++++++++++++++++++++++++++++++++++=
--------
> >  1 file changed, 133 insertions(+), 17 deletions(-)
> > =

> > @@ -1346,19 +1424,38 @@ static int nfs_probe(struct device_d *dev)
> >  =

> >  	npriv->path =3D xstrdup(path + 1);
> >  =

> > -	npriv->server =3D resolv(tmp);
> > +	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
> > +		npriv->server =3D resolv(tmp);
> > +	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
> > +		/* FIXME: check corectness */
> > +		npriv->remote_address.ip4.addr =3D resolv(tmp);
> > +	}
> >  =

> >  	debug("nfs: server: %s path: %s\n", tmp, npriv->path);
> >  =

> > -	npriv->con =3D net_udp_new(npriv->server, 0, nfs_handler, npriv);
> > -	if (IS_ERR(npriv->con)) {
> > -		ret =3D PTR_ERR(npriv->con);
> > -		goto err1;
> > +	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
> > +		npriv->con =3D net_udp_new(npriv->server, 0, nfs_handler, npriv);
> > +		if (IS_ERR(npriv->con)) {
> > +			ret =3D PTR_ERR(npriv->con);
> > +			goto err1;
> > +		}
> > +
> > +		/* Need a priviliged source port */
> > +		net_udp_bind(npriv->con, 1000);
> > +	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
> > +		/* FIXME: 2048 */
> > +		npriv->pkt =3D xzalloc(2048);
> > +
> > +		/* Need a priviliged source port */
> > +		npriv->sock =3D nfs_socket_open(1000);
> > +		if (!npriv->sock) {
> > +			ret =3D -1;
> > +			goto err1;
> > +		}
> > +
> > +		npriv->sock->priv =3D npriv;
> >  	}
> =

> The different network stacks should be transparent to the users. Instead
> of implementing them in tftp/nfs/... I would expect the abstraction in the
> current network functions, something like:

It's near impossible with current network stack implementation.

We have to drop direct access to net_connection private fields from applica=
tion code;
e.g. direct access to packet UDP fields in tftp code:

  priv->tftp_con->udp->uh_dport =3D uh_sport;

My patch series was not intended to change legacy network code in any way.
On the contrary it intentionaly keeps original code "as is".
This approach demonstrates in practice picotcp and legacy network stack dif=
ferences,
so future work on integration is much more evident.

I can start next round of picotcp integration with removing direct access t=
o net_connection private fields
from application code.


> struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
>                 rx_handler_f *handler, void *ctx)
> {
> 	struct net_connection *con =3D net_new(dest, handler, ctx);
> 	if (IS_ERR(con))
>                 return con;
> =

> 	con->proto =3D IPPROTO_UDP;
> 	con->udp->uh_dport =3D htons(dport);
> 	con->udp->uh_sport =3D htons(net_udp_new_localport());
> 	con->ip->protocol =3D IPPROTO_UDP;
> =

> 	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
> 		con->sock =3D pico_socket_open(PICO_PROTO_IPV4, PICO_PROTO_UDP, handler=
);
> 	}
> =

> 	return con;
> }
> =

> static inline int net_udp_bind(struct net_connection *con, int sport)
> {
> 	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
> 		memset(&local_address, 0, sizeof(union pico_address));
> 		pico_socket_bind(con->sock, &local_address, &sport);
> 	} else {
> 		con->udp->uh_sport =3D ntohs(sport);
> 	}
> =

> 	return 0;
> }
> =

> int net_udp_send(struct net_connection *con, int len)
> {
> 	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
> 		return pico_socket_sendto(con->sock, npriv->pkt,
> 				sizeof(pkt) + datalen * sizeof(uint32_t),
> 				con->ip->daddr, con->udp->uh_dport);
> 	}
> =

> 	con->udp->uh_ulen =3D htons(len + 8);
> 	con->udp->uh_sum =3D 0;
> =

> 	return net_ip_send(con, sizeof(struct udphdr) + len);
> }
> =

> The APIs between current barebox implementation and picotcp probably do
> not match exactly. Where the APIs don't match we can change the existing
> barebox API to what picotcp expects.

Yeah, picotcp uses more advanced API so we have to "pull up" existing API.

> =

> With that the remaining pieces like DHCP, netconsole and DNS would work
> without additional effort.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
