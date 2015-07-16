Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFpCX-0001dG-5U
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 19:52:14 +0000
Date: Thu, 16 Jul 2015 21:51:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150716195150.GG18700@pengutronix.de>
References: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
 <1436991230-14251-5-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436991230-14251-5-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 04/12] WIP: fs/nfs.c: convert to picotcp
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Wed, Jul 15, 2015 at 11:13:42PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  fs/nfs.c | 150 +++++++++++++++++++++++++++++++++++++++++++++++++++++++--------
>  1 file changed, 133 insertions(+), 17 deletions(-)
> 
> @@ -1346,19 +1424,38 @@ static int nfs_probe(struct device_d *dev)
>  
>  	npriv->path = xstrdup(path + 1);
>  
> -	npriv->server = resolv(tmp);
> +	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
> +		npriv->server = resolv(tmp);
> +	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
> +		/* FIXME: check corectness */
> +		npriv->remote_address.ip4.addr = resolv(tmp);
> +	}
>  
>  	debug("nfs: server: %s path: %s\n", tmp, npriv->path);
>  
> -	npriv->con = net_udp_new(npriv->server, 0, nfs_handler, npriv);
> -	if (IS_ERR(npriv->con)) {
> -		ret = PTR_ERR(npriv->con);
> -		goto err1;
> +	if (IS_ENABLED(CONFIG_NET_LEGACY)) {
> +		npriv->con = net_udp_new(npriv->server, 0, nfs_handler, npriv);
> +		if (IS_ERR(npriv->con)) {
> +			ret = PTR_ERR(npriv->con);
> +			goto err1;
> +		}
> +
> +		/* Need a priviliged source port */
> +		net_udp_bind(npriv->con, 1000);
> +	} else if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
> +		/* FIXME: 2048 */
> +		npriv->pkt = xzalloc(2048);
> +
> +		/* Need a priviliged source port */
> +		npriv->sock = nfs_socket_open(1000);
> +		if (!npriv->sock) {
> +			ret = -1;
> +			goto err1;
> +		}
> +
> +		npriv->sock->priv = npriv;
>  	}

The different network stacks should be transparent to the users. Instead
of implementing them in tftp/nfs/... I would expect the abstraction in the
current network functions, something like:

struct net_connection *net_udp_new(IPaddr_t dest, uint16_t dport,
                rx_handler_f *handler, void *ctx)
{
	struct net_connection *con = net_new(dest, handler, ctx);
	if (IS_ERR(con))
                return con;

	con->proto = IPPROTO_UDP;
	con->udp->uh_dport = htons(dport);
	con->udp->uh_sport = htons(net_udp_new_localport());
	con->ip->protocol = IPPROTO_UDP;

	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
		con->sock = pico_socket_open(PICO_PROTO_IPV4, PICO_PROTO_UDP, handler);
	}

	return con;
}

static inline int net_udp_bind(struct net_connection *con, int sport)
{
	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
		memset(&local_address, 0, sizeof(union pico_address));
		pico_socket_bind(con->sock, &local_address, &sport);
	} else {
		con->udp->uh_sport = ntohs(sport);
	}

	return 0;
}

int net_udp_send(struct net_connection *con, int len)
{
	if (IS_ENABLED(CONFIG_NET_PICOTCP)) {
		return pico_socket_sendto(con->sock, npriv->pkt,
				sizeof(pkt) + datalen * sizeof(uint32_t),
				con->ip->daddr, con->udp->uh_dport);
	}

	con->udp->uh_ulen = htons(len + 8);
	con->udp->uh_sum = 0;

	return net_ip_send(con, sizeof(struct udphdr) + len);
}

The APIs between current barebox implementation and picotcp probably do
not match exactly. Where the APIs don't match we can change the existing
barebox API to what picotcp expects.

With that the remaining pieces like DHCP, netconsole and DNS would work
without additional effort.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
