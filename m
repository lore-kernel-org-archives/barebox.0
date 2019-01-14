Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj33H-0003Xq-Cm
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 14:17:21 +0000
Date: Mon, 14 Jan 2019 15:17:17 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20190114141717.nbs3h3nxnrrbizob@pengutronix.de>
References: <20180918052122.12248-1-andrew.smirnov@gmail.com>
 <20180918052122.12248-8-andrew.smirnov@gmail.com>
 <20190114122130.dsfqagod6rrpqv2x@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190114122130.dsfqagod6rrpqv2x@pengutronix.de>
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
Subject: Re: [PATCH 7/7] net: fec_imx: Do not use DMA coherent memory for Rx
 buffers
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jan 14, 2019 at 01:21:30PM +0100, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> On Mon, Sep 17, 2018 at 10:21:22PM -0700, Andrey Smirnov wrote:
> > Trying to do unaligned access of coherent memory on AArch64 will lead
> > to an abort and some parts of our IP stack will do exactly that with
> > received packet buffer by using memcpy() to extracts parts of it.
> > =

> > Convert the driver to use regular memory for received data buffers to
> > prevent the issue from happening.
> =

> I didn't spend time yet to debug, but this commit is pointed out to
> break nfs booting on an mx28evk board.
> =

> Maybe someone spots the obvious problem before I come around to fix
> this.

Sascha found it. The problem is that the nfs code uses the memory
location the packet was placed in only after the net_receive function
returned.

With this patch applied it works for me again:

diff --git a/fs/nfs.c b/fs/nfs.c
index d7f156687fc9..20fdf5ff4dfc 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -440,6 +440,7 @@ again:
 	nfs_timer_start =3D get_time_ns();
 =

 	nfs_state =3D STATE_START;
+	free(nfs_packet);
 	nfs_packet =3D NULL;
 =

 	while (nfs_state !=3D STATE_DONE) {
@@ -924,7 +925,7 @@ static void nfs_handler(void *ctx, char *packet, unsign=
ed len)
 	char *pkt =3D net_eth_to_udp_payload(packet);
 =

 	nfs_state =3D STATE_DONE;
-	nfs_packet =3D pkt;
+	nfs_packet =3D xmemdup(pkt, len);
 	nfs_len =3D len;
 }
 =


(Not completely nice though, as (at least) the last packet isn't freed.)

Will try to come up with a proper patch later.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
