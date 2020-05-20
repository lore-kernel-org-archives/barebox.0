Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbHec-0008Lk-60
 for barebox@lists.infradead.org; Wed, 20 May 2020 05:52:36 +0000
Date: Wed, 20 May 2020 07:52:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200520055231.GR11869@pengutronix.de>
References: <cover.1589477005.git.dg@emlix.com>
 <a5f6a082fd56438a26117d206920aebb5aa16051.1589477005.git.dg@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5f6a082fd56438a26117d206920aebb5aa16051.1589477005.git.dg@emlix.com>
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
Subject: Re: [PATCH v2 09/10] fastboot net: implement fastboot over UDP
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: barebox@lists.infradead.org, Edmund Henniges <eh@emlix.com>

On Thu, May 14, 2020 at 08:21:57PM +0200, Daniel Gl=F6ckner wrote:
> From: Edmund Henniges <eh@emlix.com>
> =

> This implements the UDP variant of the fastboot protocol. The only way to
> start the service for now is to compile with CONFIG_FASTBOOT_NET_ON_BOOT.
> The service will bind to the network interface that provides the IPv4
> gateway.
> =

> Sending an OKAY packet before performing a restart is necessary since
> contrary to USB the host will not notice when a UDP server disappears.
> =

> Signed-off-by: Edmund Henniges <eh@emlix.com>
> Signed-off-by: Daniel Gl=F6ckner <dg@emlix.com>
> ---
>  common/fastboot.c      |   3 +
>  include/fastboot.h     |   1 +
>  include/fastboot_net.h |  12 +
>  net/Kconfig            |  18 ++
>  net/Makefile           |   1 +
>  net/fastboot.c         | 496 +++++++++++++++++++++++++++++++++++++++++
>  6 files changed, 531 insertions(+)
>  create mode 100644 include/fastboot_net.h
>  create mode 100644 net/fastboot.c
> =

> diff --git a/common/fastboot.c b/common/fastboot.c
> index d50f61ff2..706547309 100644
> --- a/common/fastboot.c
> +++ b/common/fastboot.c
> +static int fastboot_write_net(struct fastboot *fb, const char *buf,
> +			      unsigned int n)
> +{
> +	struct fastboot_net *fbn =3D container_of(fb, struct fastboot_net,
> +						fastboot);
> +	struct fastboot_header response_header;
> +	uchar *packet;
> +	uchar *packet_base;
> +
> +	if (fbn->reinit)
> +		return 0;
> +
> +	while (fbn->may_send =3D=3D MAY_NOT_SEND) {
> +		poller_call();
> +		if (fbn->reinit)
> +			return 0;
> +	}

This is a potentially endless loop I can reproducibly hit here. When I
do a "sleep 10" on the command line and at the same time start a
fastboot transfer then there's no progress. This is expected because
fastboot depends on the idle slice. However, when the "sleep 10" is over
then I get a prompt and then we are stuck in this loop.

I replaced this loop with a one second timeout loop. With this we are no
longer stuck in the loop, but the current transfer doesn't continue
anymore.

Afterwards I dropped everything around fbn->may_send completely and now
everything works fluently.

Removing these send restrictions seems the right thing to me. In the end
it's UDP, so the remote host shouldn't make any assumptions of how fast
and if at all packets arrive there.

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
